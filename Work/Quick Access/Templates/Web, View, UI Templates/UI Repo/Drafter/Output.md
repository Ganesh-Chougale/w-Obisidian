# Codebase Report

## Folder Structure
```
Plain Web
├── Index.html
├── script.js
└── style.css
```

---

## Code Summary
Quick Access\Templates\Web, View, UI Templates\UI Repo\Plain Web\Index.html:
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UI Snippet Playground</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="app-header">
        <h1>UI Snippet Playground</h1>
        <p>Paste components from Bootstrap, Tailwind CSS, or Font Awesome</p>
    </header>
    <main class="workspace">
        <section class="panel">
            <div class="panel-header">Code Editor</div>
            <textarea id="code-editor" placeholder="Paste your HTML/CSS snippet here..." spellcheck="false"></textarea>
        </section>
        <section class="panel">
            <div class="panel-header">
                Live Preview 
                <div id="library-indicator" class="library-badge">Library: None</div>
            </div>
            <div class="iframe-container">
                <iframe id="preview-frame" sandbox="allow-scripts allow-same-origin"></iframe>
            </div>
        </section>
    </main>
    <script src="script.js"></script>
</body>
</html>
```

Quick Access\Templates\Web, View, UI Templates\UI Repo\Plain Web\script.js:
```js
const editor = document.getElementById('code-editor');
const iframe = document.getElementById('preview-frame');
const indicator = document.getElementById('library-indicator');
// Asset injections for supported libraries
const LIBRARY_ASSETS = {
    bootstrap: `
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"><\/script>
    `,
    bootstrap3: `
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"><\/script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"><\/script>
    `,
    tailwind: `
        <script src="https://cdn.tailwindcss.com"><\/script>
    `,
    fontawesome: `
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    `
};
/**
 * Dynamically generates CSS for any txt-color-* class or attribute found in the code.
 */
function getDynamicCustomStyles(code) {
    let dynamicStyles = '';
    const colorMatches = [...code.matchAll(/(?:txt-color-([a-z]+)|txt-color="([a-z]+)")/gi)];
    if (colorMatches.length > 0) {
        const colors = new Set();
        colorMatches.forEach(match => {
            if (match[1]) colors.add(match[1]); // Matched class (e.g., txt-color-teal)
            if (match[2]) colors.add(match[2]); // Matched attribute (e.g., txt-color="teal")
        });
        if (colors.size > 0) {
            dynamicStyles = '<style>\n';
            colors.forEach(color => {
                dynamicStyles += `.txt-color-${color}, [txt-color="${color}"] { color: ${color} !important; }\n`;
            });
            dynamicStyles += '</style>';
        }
    }
    return dynamicStyles;
}
/**
 * Parses the code to detect usage of supported frameworks.
 * Returns an array of detected library objects.
 */
function detectLibraries(code) {
    const libraries = [];
    // 1. Bootstrap 3 & Glyphicons checks
    const isBs3 = /(class=".*?\b(glyphicon|glyphicon-[a-z-]+|panel|panel-default|well|pull-right|hidden-xs|btn-xs)\b.*?")/i.test(code);
    if (isBs3) {
        libraries.push({ id: 'bootstrap3', name: 'Bootstrap 3 (Glyphicons)' });
    }
    // 2. Bootstrap 5 checks 
    // Uses exclusivity so BS3 and BS5 don't clash if generic grid/button classes are used
    const hasBs5Specific = /data-bs-/i.test(code) || /(class=".*?\b(gx-\d|gy-\d|fs-\d)\b.*?")/i.test(code);
    const hasGenBs = /(class=".*?\b(btn|container|row|col(-[a-z]+-\d+)?|mb-\d+)\b.*?")/i.test(code);
    if (hasBs5Specific || (hasGenBs && !isBs3)) {
        libraries.push({ id: 'bootstrap', name: 'Bootstrap 5' });
    }
    // 3. Tailwind checks
    if (/(class=".*?\b(flex|grid|w-full|h-full|text-[a-z]+-\d00|bg-[a-z]+-\d00|p[xytrbl]?-\d+|m[xytrbl]?-\d+)\b.*?")/i.test(code)) {
        const isLikelyTailwind = /(bg|text|border)-[a-z]+-\d00/i.test(code) || /flex-col/i.test(code) || /w-full/i.test(code);
        if (isLikelyTailwind || libraries.length === 0) {
             libraries.push({ id: 'tailwind', name: 'Tailwind CSS' });
        }
    }
    // 4. Font Awesome checks
    if (/(class=".*?\b(fa|fas|fab|far|fa-[a-z0-9-]+)\b.*?")/i.test(code)) {
        libraries.push({ id: 'fontawesome', name: 'Font Awesome' });
    }
    // 5. Custom Attributes / Colors checks
    if (/(txt-color-[a-z]+)/i.test(code) || /txt-color="[a-z]+"/i.test(code)) {
        libraries.push({ id: 'customUtils', name: 'Custom Utilities' });
    }
    return libraries;
}
/**
 * Updates the iframe content and library indicator
 */
function updatePreview() {
    const code = editor.value;
    // Reset if empty
    if (!code.trim()) {
        indicator.textContent = 'Library: None';
        indicator.className = 'library-badge';
        iframe.srcdoc = '';
        return;
    }
    const detected = detectLibraries(code);
    let headContent = '';
    // Update UI and build injection string based on detection
    if (detected.length > 0) {
        const names = detected.map(l => l.name).join(', ');
        indicator.textContent = `Library: ${names}`;
        indicator.className = 'library-badge detected';
        detected.forEach(lib => {
            if (lib.id === 'customUtils') {
                headContent += getDynamicCustomStyles(code);
            } else {
                headContent += LIBRARY_ASSETS[lib.id];
            }
        });
    } else {
        indicator.innerHTML = `Library: Unrecognized<br><span style="font-size: 0.65rem; opacity: 0.8;">Supported: Bootstrap, Tailwind CSS, Font Awesome</span>`;
        indicator.className = 'library-badge unrecognized';
    }
    // Construct the isolated iframe HTML
    const htmlTemplate = `
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Preview</title>
            ${headContent}
            <style>
                body { 
                    margin: 0; 
                    min-height: 100vh; 
                    display: flex; 
                    box-sizing: border-box; 
                }
                .playground-wrapper {
                    margin: auto;
                    padding: 1rem;
                    max-width: 100%;
                }
            </style>
        </head>
        <body>
            <div class="playground-wrapper">
                ${code}
            </div>
        </body>
        </html>
    `;
    // Inject the code into the iframe
    iframe.srcdoc = htmlTemplate;
}
// Debounce input to prevent lagging on every single keystroke
let debounceTimer;
editor.addEventListener('input', () => {
    clearTimeout(debounceTimer);
    debounceTimer = setTimeout(updatePreview, 300);
});
```

Quick Access\Templates\Web, View, UI Templates\UI Repo\Plain Web\style.css:
```css
/* Base Reset */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}
body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
    background-color: #f1f5f9;
    color: #1e293b;
    display: flex;
    flex-direction: column;
    height: 100vh;
    overflow: hidden;
}
/* Header */
.app-header {
    background-color: #0f172a;
    color: #f8fafc;
    padding: 1rem;
    text-align: center;
}
.app-header h1 {
    font-size: 1.25rem;
    font-weight: 600;
}
.app-header p {
    font-size: 0.85rem;
    color: #cbd5e1;
    margin-top: 0.25rem;
}
/* Main Workspace Container (Mobile First - Stacked) */
.workspace {
    display: flex;
    flex-direction: column;
    flex: 1;
    padding: 1rem;
    gap: 1rem;
    height: calc(100vh - 70px);
}
/* Panels */
.panel {
    flex: 1;
    display: flex;
    flex-direction: column;
    background: #ffffff;
    border-radius: 6px;
    box-shadow: 0 1px 3px rgba(0,0,0,0.1), 0 1px 2px rgba(0,0,0,0.06);
    overflow: hidden;
    min-height: 0; /* Allows flex children to shrink below content size if needed */
}
.panel-header {
    background: #f8fafc;
    padding: 0.75rem 1rem;
    font-size: 0.9rem;
    font-weight: 600;
    border-bottom: 1px solid #e2e8f0;
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
}
/* Library Indicator Badge */
.library-badge {
    font-size: 0.75rem;
    font-weight: 400;
    padding: 0.25rem 0.5rem;
    background: #e2e8f0;
    border-radius: 4px;
    text-align: right;
    max-width: 200px;
}
.library-badge.detected {
    background: #dcfce7;
    color: #166534;
}
.library-badge.unrecognized {
    background: #fee2e2;
    color: #991b1b;
}
/* Editor */
#code-editor {
    flex: 1;
    width: 100%;
    border: none;
    padding: 1rem;
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
    font-size: 14px;
    line-height: 1.5;
    resize: none;
    outline: none;
    background-color: #1e1e1e;
    color: #d4d4d4;
    overflow-y: auto;
}
/* Iframe Container */
.iframe-container {
    flex: 1;
    position: relative;
    background: #ffffff;
}
#preview-frame {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: none;
}
/* Desktop Layout - Side by Side Symmetry */
@media (min-width: 768px) {
    .workspace {
        flex-direction: row;
    }
    .panel {
        width: 50%;
    }
}
```



---

