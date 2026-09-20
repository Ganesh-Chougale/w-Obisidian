```js
// ==UserScript==
// @name         ASP.NET MVC Diagnostic Monitor
// @namespace    local-dev-tools
// @version      1.1
// @description  Monitor local ASP.NET MVC requests and extract server errors
// @match        http://localhost:*/*
// @run-at       document-start
// @grant        none
// ==/UserScript==

(function () {
  "use strict";

  const report = {
    page: location.href,
    requests: [],
    errors: [],
    clicks: [],
  };

  // =========================================================
  // CLICK MONITOR
  // =========================================================

  document.addEventListener(
    "click",
    function (e) {
      const target = e.target.closest("button, a, input, select, textarea");

      if (!target) return;

      report.clicks.push({
        time: new Date().toLocaleTimeString(),
        element: target.tagName,
        id: target.id || "",
        name: target.name || "",
        text: (target.innerText || target.value || "").trim(),
      });
    },
    true,
  );

  // =========================================================
  // XHR MONITOR
  // =========================================================

  const originalOpen = XMLHttpRequest.prototype.open;
  const originalSend = XMLHttpRequest.prototype.send;

  XMLHttpRequest.prototype.open = function (method, url) {
    this._debugMethod = method;
    this._debugUrl = url;

    return originalOpen.apply(this, arguments);
  };

  XMLHttpRequest.prototype.send = function () {
    const xhr = this;
    const start = performance.now();

    xhr.addEventListener("loadend", function () {
      const duration = Math.round(performance.now() - start);

      const request = {
        method: xhr._debugMethod,
        url: xhr._debugUrl,
        status: xhr.status,
        duration: duration,
      };

      report.requests.push(request);

      // =================================================
      // SERVER ERROR
      // =================================================

      if (xhr.status >= 400) {
        const problem = analyzeAspNetError(
          xhr.responseText,
          xhr.status,
          xhr._debugUrl,
        );

        const errorKey =
          problem.message + "|" + problem.exactLine + "|" + problem.exactCode;

        const alreadyExists = report.errors.some(
          (x) => x.errorKey === errorKey,
        );

        if (!alreadyExists) {
          problem.errorKey = errorKey;
          problem.occurrences = 1;
          report.errors.push(problem);
        } else {
          const existing = report.errors.find((x) => x.errorKey === errorKey);

          existing.occurrences++;
        }

        console.error(
          "%c SERVER ERROR",
          "color:red;font-weight:bold;font-size:16px",
          problem,
        );
      }
    });

    return originalSend.apply(this, arguments);
  };

  // =========================================================
  // ASP.NET ERROR ANALYZER
  // =========================================================

  function analyzeAspNetError(html, status, url) {
    const result = {
      status: status,
      url: url,
      exactLine: null,
      exactCode: null,
      razorExpression: null,
      message: null,
      sourceContext: [],
    };

    if (!html) {
      result.message = "No response body available.";

      return result;
    }

    const temp = document.createElement("div");

    temp.innerHTML = html;

    const text = temp.innerText || temp.textContent || "";

    // =====================================================
    // COMPILER ERROR MESSAGE
    // =====================================================

    const compilerMatch = text.match(
      /Compiler Error Message\s*(.*?)(?=Source Error|Source File|$)/is,
    );

    if (compilerMatch) {
      result.message = cleanText(compilerMatch[1]);

      const nameMatch = result.message.match(
        /The name ['"]([^'"]+)['"] does not exist/i,
      );

      if (nameMatch) {
        result.razorExpression = nameMatch[1];
      }
    }

    // =====================================================
    // SOURCE ERROR
    // =====================================================

    const sourceMatch = text.match(/Source Error\s*(.*?)(?=Source File|$)/is);

    if (sourceMatch) {
      const sourceText = sourceMatch[1];

      const lines = [];

      const regex = /Line\s+(\d+):\s*(.*?)(?=\s+Line\s+\d+:|$)/gi;

      let match;

      while ((match = regex.exec(sourceText)) !== null) {
        lines.push({
          line: Number(match[1]),
          code: cleanText(match[2]),
        });
      }

      result.sourceContext = lines;

      // =================================================
      // FIND EXACT LINE
      // =================================================

      if (result.razorExpression) {
        const escaped = escapeRegex(result.razorExpression);

        const exactRegex = new RegExp(escaped, "i");

        const exact = lines.find((x) => exactRegex.test(x.code));

        if (exact) {
          result.exactLine = exact.line;

          result.exactCode = exact.code;
        }
      }
    }

    // =====================================================
    // RUNTIME EXCEPTION
    // =====================================================

    if (!result.message) {
      const runtimeMatch = text.match(
        /Exception Details:\s*(.*?)(?=Source Error|$)/is,
      );

      if (runtimeMatch) {
        result.message = cleanText(runtimeMatch[1]);
      }
    }

    // =====================================================
    // FALLBACK
    // =====================================================

    if (!result.message) {
      const errorMatch = text.match(/(Server Error.*?)(?=Description|$)/is);

      if (errorMatch) {
        result.message = cleanText(errorMatch[1]);
      }
    }

    return result;
  }

  // =========================================================
  // HELPERS
  // =========================================================

  function escapeRegex(value) {
    return value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
  }

  function cleanText(value) {
    return value.replace(/\s+/g, " ").trim();
  }

  // =========================================================
  // REPORT
  // =========================================================

  function pg() {
    console.clear();

    console.log(
      "%c PAGE DIAGNOSTIC REPORT ",
      "background:#222;color:#00ff88;font-size:18px;font-weight:bold",
    );

    // -----------------------------------------------------
    // PAGE
    // -----------------------------------------------------

    console.log("\nPAGE");

    console.log(report.page);

    // -----------------------------------------------------
    // REQUESTS
    // -----------------------------------------------------

    console.log("\nREQUESTS");

    console.table(report.requests);

    // -----------------------------------------------------
    // PROBLEMS
    // -----------------------------------------------------

    console.log("\nPROBLEMS");

    if (report.errors.length === 0) {
      console.log("No server errors detected.");
    } else {
      report.errors.forEach((error, index) => {
        console.group(`Problem ${index + 1}`);

        console.log("HTTP Status:", error.status);
        console.log("Occurrences:", error.occurrences);

        console.log("URL:", error.url);

        console.log("Message:", error.message);

        if (error.exactLine) {
          console.log("%c EXACT LOCATION", "color:red;font-weight:bold");

          console.log(`Line ${error.exactLine}: ${error.exactCode}`);
        }

        if (error.razorExpression) {
          console.log("Razor expression:", error.razorExpression);
        }

        console.log("Source Context:");

        console.table(error.sourceContext);

        console.groupEnd();
      });
    }

    // -----------------------------------------------------
    // CLICKS
    // -----------------------------------------------------

    console.log("\nCLICKS");

    console.table(report.clicks);

    // -----------------------------------------------------
    // RAW REPORT
    // -----------------------------------------------------

    console.log("\nRAW REPORT");

    console.log(report);

    return report;
  }

  // =========================================================
  // EXPOSE REPORT FUNCTION
  // =========================================================

  window.pageReport = pg;

  console.log(
    "%c Page Diagnostic Monitor Started",
    "color:#00aa00;font-weight:bold;font-size:14px",
  );
})();
```  