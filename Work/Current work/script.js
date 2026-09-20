(() => {
  const report = {
    page: {
      url: location.href,
      title: document.title,
      startedAt: new Date().toLocaleString(),
    },

    requests: [],
    errors: [],
    clicks: [],
  };

  // ==================================================
  // CLICK MONITOR
  // ==================================================

  document.addEventListener(
    "click",
    function (e) {
      const el = e.target.closest(
        "button, a, input, select, textarea, [onclick]",
      );

      if (!el) return;

      report.clicks.push({
        time: new Date().toLocaleTimeString(),
        element: el.tagName.toLowerCase(),
        id: el.id || "",
        text: (el.innerText || el.value || "").trim(),
      });
    },
    true,
  );

  // ==================================================
  // XHR / jQuery AJAX MONITOR
  // ==================================================

  const originalOpen = XMLHttpRequest.prototype.open;

  const originalSend = XMLHttpRequest.prototype.send;

  XMLHttpRequest.prototype.open = function (method, url) {
    this._debugMethod = method;
    this._debugUrl = url;

    return originalOpen.apply(this, arguments);
  };

  XMLHttpRequest.prototype.send = function (body) {
    const xhr = this;

    const requestStart = performance.now();

    xhr.addEventListener("loadend", function () {
      const duration = Math.round(performance.now() - requestStart);

      const request = {
        method: xhr._debugMethod,

        url: xhr._debugUrl,

        status: xhr.status,

        duration: duration + " ms",

        request: body || "",

        response: "",
      };

      // ------------------------------------------
      // FAILED REQUEST
      // ------------------------------------------

      if (xhr.status >= 400) {
        let responseText = "";

        try {
          responseText = xhr.responseText || "";
        } catch {
          responseText = "";
        }

        request.response = analyzeAspNetError(
          responseText,
          xhr.status,
          xhr._debugUrl,
        );

        report.errors.push(request.response);
      }

      report.requests.push(request);
    });

    return originalSend.apply(this, arguments);
  };

  // ==================================================
  // ASP.NET ERROR ANALYZER
  // ==================================================

  function analyzeAspNetError(html, status, url) {
    const result = {
      status: status,

      url: url,

      type: "Unknown Server Error",

      message: "",

      compilerError: "",

      sourceError: "",

      exactLine: null,

      exactCode: "",

      razorExpression: "",

      diagnosis: "",
    };

    // ------------------------------------------
    // NO RESPONSE BODY
    // ------------------------------------------

    if (!html) {
      result.message =
        "Server returned HTTP " +
        status +
        " but no response body was available.";

      result.diagnosis =
        "Check the request in Network tab and inspect the server logs.";

      return result;
    }

    // ------------------------------------------
    // HTML → TEXT
    // ------------------------------------------

    const temp = document.createElement("div");

    temp.innerHTML = html;

    const text = temp.innerText || temp.textContent || "";

    // ==================================================
    // ASP.NET COMPILATION ERROR
    // ==================================================

    const compilerMatch = text.match(/Compiler Error Message:\s*([^\n\r]+)/i);

    if (compilerMatch) {
      result.type = "ASP.NET Compilation Error";

      result.compilerError = compilerMatch[1].trim();

      result.message = result.compilerError;

      result.diagnosis =
        "The Razor/View or server-side C# code could not compile.";
    }

    // ==================================================
    // SOURCE ERROR
    // ==================================================

    const sourceMatch = text.match(
      /Source Error:\s*([\s\S]*?)(?=Source File:|$)/i,
    );

    if (sourceMatch) {
      result.sourceError = cleanText(sourceMatch[1]);

      // ------------------------------------------
      // EXTRACT:
      //
      // Line 48: ...
      // Line 49: ...
      // Line 50: ...
      // ------------------------------------------

      const lines = [];

      const lineRegex = /Line\s+(\d+):\s*(.*?)(?=\s+Line\s+\d+:|$)/gi;

      let match;

      while ((match = lineRegex.exec(result.sourceError)) !== null) {
        lines.push({
          lineNumber: parseInt(match[1], 10),

          code: match[2].trim(),
        });
      }

      // ==================================================
      // FIND THE ERROR TOKEN
      //
      // Example:
      //
      // CS0103:
      // The name 'something' does not exist
      //
      // Extract:
      //
      // something
      // ==================================================

      let errorToken = null;

      const cs0103Match = result.compilerError.match(
        /The name ['"]([^'"]+)['"] does not exist/i,
      );

      if (cs0103Match) {
        errorToken = cs0103Match[1];
      }

      // ==================================================
      // FIND EXACT SOURCE LINE
      // ==================================================

      if (errorToken) {
        const matchingLine = lines.find((x) => x.code.includes(errorToken));

        if (matchingLine) {
          result.exactLine = matchingLine.lineNumber;

          result.exactCode = matchingLine.code;

          // --------------------------------------
          // FIND RAZOR EXPRESSION
          // --------------------------------------

          const razorRegex = new RegExp(
            "@" + "\\s*" + escapeRegex(errorToken),
            "g",
          );

          const razorMatch = matchingLine.code.match(razorRegex);

          if (razorMatch) {
            result.razorExpression = razorMatch[0];
          }
        }
      }

      // ==================================================
      // FALLBACK
      //
      // If we couldn't match the variable name,
      // don't invent an exact line.
      // ==================================================

      if (!result.exactLine) {
        result.exactLine = null;
      }
    }

    // ==================================================
    // RUNTIME EXCEPTION
    // ==================================================

    const exceptionMatch = text.match(
      /Exception Details:\s*([^:]+):\s*([^\n\r]+)/i,
    );

    if (exceptionMatch) {
      result.type = exceptionMatch[1].trim();

      result.message = exceptionMatch[2].trim();

      result.diagnosis =
        "The server-side code threw an exception while processing the request.";
    }

    // ==================================================
    // FALLBACK ERROR MESSAGE
    // ==================================================

    if (!result.message) {
      result.message = extractUsefulError(text);

      result.diagnosis =
        "HTTP " +
        status +
        " was returned. Inspect the server response or application logs.";
    }

    return result;
  }

  // ==================================================
  // ESCAPE REGEX
  // ==================================================

  function escapeRegex(value) {
    return value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
  }

  // ==================================================
  // CLEAN TEXT
  // ==================================================

  function cleanText(value) {
    return value.replace(/\s+/g, " ").trim();
  }

  // ==================================================
  // FALLBACK ERROR EXTRACTOR
  // ==================================================

  function extractUsefulError(text) {
    const patterns = [
      /CS\d+:\s*[^\n\r]+/i,

      /System\.[A-Za-z.]+Exception:\s*[^\n\r]+/i,

      /[A-Za-z]+Exception:\s*[^\n\r]+/i,
    ];

    for (const pattern of patterns) {
      const match = text.match(pattern);

      if (match) return cleanText(match[0]);
    }

    return "The server returned HTTP " + "500.";
  }

  // ==================================================
  // HUMAN READABLE REPORT
  // ==================================================

  window.pg = function () {
    console.clear();

    console.log(
      "%c PAGE DIAGNOSTIC REPORT ",
      "background:#222;color:white;font-size:18px;padding:8px;",
    );

    // ==================================================
    // PAGE
    // ==================================================

    console.log("\n📄 PAGE");

    console.table(report.page);

    // ==================================================
    // REQUESTS
    // ==================================================

    console.log("\n🌐 REQUESTS");

    if (report.requests.length) {
      console.table(
        report.requests.map((x) => ({
          method: x.method,

          status: x.status,

          duration: x.duration,

          url: x.url,
        })),
      );
    } else {
      console.log("No AJAX/XHR requests detected.");
    }

    // ==================================================
    // PROBLEMS
    // ==================================================

    console.log("\n🚨 PROBLEMS");

    if (report.errors.length === 0) {
      console.log(
        "%c🟢 No server errors detected.",
        "color:green;font-weight:bold;",
      );
    } else {
      report.errors.forEach((error, index) => {
        console.log(
          "\n%c🔴 ERROR #" + (index + 1),
          "color:red;font-size:16px;font-weight:bold;",
        );

        console.log("HTTP Status:", error.status);

        console.log("Request:", error.url);

        console.log("Type:", error.type);

        console.log("Message:", error.message);

        // --------------------------------------
        // EXACT LOCATION
        // --------------------------------------

        if (error.exactLine) {
          console.log(
            "\n%c📍 EXACT LOCATION",
            "font-size:15px;font-weight:bold;",
          );

          console.log("Line:", error.exactLine);

          console.log("Code:", error.exactCode);

          if (error.razorExpression) {
            console.log("Razor expression:", error.razorExpression);
          }
        } else {
          console.log("\n📍 EXACT LOCATION");

          console.log(
            "Could not determine the exact source line from the server response.",
          );
        }

        // --------------------------------------
        // SOURCE CONTEXT
        // --------------------------------------

        if (error.sourceError) {
          console.log("\nSource Context:", error.sourceError);
        }

        // --------------------------------------
        // DIAGNOSIS
        // --------------------------------------

        console.log("\n%cDiagnosis: " + error.diagnosis, "font-weight:bold;");
      });
    }

    // ==================================================
    // CLICKS
    // ==================================================

    console.log("\n🖱️ CLICKS");

    if (report.clicks.length) {
      console.table(report.clicks);
    } else {
      console.log("No monitored clicks.");
    }

    // ==================================================
    // RAW REPORT
    // ==================================================

    console.log("\n📦 RAW REPORT");

    console.log(report);

    return report;
  };

  // ==================================================
  // START
  // ==================================================

  console.log(
    "%c Page Diagnostic Monitor Started ",
    "background:green;color:white;font-size:14px;padding:5px;",
  );

  console.log(
    "Use the page normally, then run %cpageReport()%c",
    "font-weight:bold",
    "",
  );
})();
