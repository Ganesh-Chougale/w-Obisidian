```csharp
// ==UserScript==
// @name         HTML Debugger
// @namespace    local-dev-tools
// @version      2.0
// @description  Tiny ASP.NET MVC error sniper
// @match        http://localhost:*/*
// @run-at       document-start
// @grant        none
// ==/UserScript==

(function () {

    'use strict';

    const report = {
        page: location.href,
        requests: [],
        errors: []
    };

    // -----------------------------
    // Helpers
    // -----------------------------

    function cleanText(value) {
        return (value || '').replace(/\s+/g, ' ').trim();
    }

    function escapeRegex(value) {
        return value.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
    }

    // -----------------------------
    // ASP.NET Error Analyzer
    // -----------------------------

    function analyzeAspNetError(html, status, url) {

        const temp = document.createElement('div');
        temp.innerHTML = html;

        const text = temp.innerText || temp.textContent || '';

        let message = '';
        let exactLine = null;
        let exactCode = null;

        // -------------------------
        // Compiler error
        // -------------------------

        const compilerMatch = text.match(
            /Compiler Error Message\s*(.*?)(?=Source Error|Source File|$)/is
        );

        if (compilerMatch) {

            message = cleanText(compilerMatch[1]);

            // Example:
            // The name 'something' does not exist...
            // 'X' does not contain a definition for 'anna'
            const tokenMatch = message.match(
                /(?:The name|definition for)\s*['"]([^'"]+)['"]/i
            );

            let token = tokenMatch ? tokenMatch[1] : null;

            // Find source lines
            const sourceRegex =
                /Line\s+(\d+):\s*(.*?)(?=\s+Line\s+\d+:|$)/gi;

            let match;

            while ((match = sourceRegex.exec(text)) !== null) {

                const lineNumber = match[1];
                const code = cleanText(match[2]);

                if (
                    token &&
                    code.toLowerCase().includes(token.toLowerCase())
                ) {
                    exactLine = lineNumber;
                    exactCode = code;
                    break;
                }
            }

            // If token wasn't found, try to find useful source line
            if (!exactLine) {

                const lines = [...text.matchAll(
                    /Line\s+(\d+):\s*(.*?)(?=\s+Line\s+\d+:|$)/gi
                )];

                if (lines.length) {
                    exactLine = lines[0][1];
                    exactCode = cleanText(lines[0][2]);
                }
            }
        }

        // -------------------------
        // Runtime exception
        // -------------------------

        if (!message) {

            const exceptionMatch = text.match(
                /Exception Details:\s*(.*?)(?=Source Error|$)/is
            );

            if (exceptionMatch) {
                message = cleanText(exceptionMatch[1]);
            }
        }

        // -------------------------
        // Generic server error
        // -------------------------

        if (!message) {

            const serverMatch = text.match(
                /(Server Error.*?)(?=Description|$)/is
            );

            if (serverMatch) {
                message = cleanText(serverMatch[1]);
            }
        }

        // -------------------------
        // Final fallback
        // -------------------------

        if (!message) {
            message = `HTTP ${status}`;
        }

        // -------------------------
        // Deduplication
        // -------------------------

        const errorKey = [
            message,
            exactLine,
            exactCode
        ].join('|');

        const existing = report.errors.find(
            error => error.errorKey === errorKey
        );

        if (existing) {
            existing.occurrences++;
            return;
        }

        report.errors.push({
            errorKey,
            message,
            exactLine,
            exactCode,
            occurrences: 1,
            status,
            url
        });
    }

    // -----------------------------
    // XHR Monitor
    // -----------------------------

    const originalOpen = XMLHttpRequest.prototype.open;
    const originalSend = XMLHttpRequest.prototype.send;

    XMLHttpRequest.prototype.open = function (
        method,
        url,
        ...args
    ) {

        this._debugMethod = method;
        this._debugUrl = url;

        return originalOpen.call(
            this,
            method,
            url,
            ...args
        );
    };

    XMLHttpRequest.prototype.send = function (...args) {

        const xhr = this;

        const start = performance.now();

        xhr.addEventListener('loadend', function () {

            const duration = Math.round(
                performance.now() - start
            );

            report.requests.push({
                method: xhr._debugMethod,
                url: xhr._debugUrl,
                status: xhr.status,
                duration
            });

            if (xhr.status >= 400) {

                analyzeAspNetError(
                    xhr.responseText,
                    xhr.status,
                    xhr._debugUrl
                );
            }

        });

        return originalSend.apply(
            this,
            args
        );
    };

    // -----------------------------
    // ONE-LINE REPORT
    // -----------------------------

    function htmlReport() {

        console.clear();

        if (report.errors.length === 0) {
            console.log('✅ No errors');
            return;
        }

        report.errors.forEach(error => {

            const line =
                error.exactLine !== null
                    ? `Line ${error.exactLine}`
                    : 'Line ?';

            const code =
                error.exactCode || 'Unknown location';

            const count =
                error.occurrences > 1
                    ? ` ×${error.occurrences}`
                    : '';

            console.log(
                `❌ ${line}: ${code} — ${error.message}${count}`
            );
        });

        return report;
    }

    // -----------------------------
    // Make available in console
    // -----------------------------

    window.htmlReport = htmlReport;

    console.log(
        '%cDiagnostic Monitor Ready',
        'color:#00aa00;font-weight:bold'
    );

})();
```  