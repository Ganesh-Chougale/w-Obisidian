const editor = document.getElementById('code-editor');
const iframe = document.getElementById('preview-frame');
const indicator = document.getElementById('library-indicator');

// Asset injections for supported libraries across ALL eras
const LIBRARY_ASSETS = {
    // Bootstrap Modern (v5)
    bootstrap5: `
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"><\/script>
    `,
    // Bootstrap Legacy (v4)
    bootstrap4: `
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"><\/script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"><\/script>
    `,
    // Bootstrap Old (v3) - Includes original Glyphicons
    bootstrap3: `
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"><\/script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js"><\/script>
    `,
    // Bootstrap Ancient (v2)
    bootstrap2: `
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"><\/script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/js/bootstrap.min.js"><\/script>
    `,
    // Tailwind (Play CDN compiles utilities on the fly covering v1/v2/v3 syntaxes seamlessly)
    tailwind: `
        <script src="https://cdn.tailwindcss.com"><\/script>
    `,
    // Font Awesome Modern/Legacy (v4, v5, v6 are all handled by this universal CDN)
    fontawesome: `
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    `,
    // Font Awesome Ancient (v3 uses completely different prefix syntax)
    fontawesome3: `
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css">
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
            if (match[1]) colors.add(match[1]); // Matched class
            if (match[2]) colors.add(match[2]); // Matched attribute
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
 * Parses the code to detect usage of supported frameworks and their versions.
 */
function detectLibraries(code) {
    const libraries = [];
    let bsDetected = false;

    // --- BOOTSTRAP DETECTION (Mutually Exclusive Versions) ---
    // Bootstrap 5: data-bs-* attributes, float-end/start, modern grid/gap utilities
    if (/data-bs-|float-(end|start)|[gmp][xy]-[0-5]|fs-[1-6]|text-bg-/i.test(code)) {
        libraries.push({ id: 'bootstrap5', name: 'Bootstrap 5' });
        bsDetected = true;
    }
    // Bootstrap 4: data-toggle, float-right, card (without BS5 indicators)
    else if (/data-toggle|float-(right|left)|badge-(pill|primary|secondary|info|warning|danger|success|dark|light)|card-deck|card-columns/i.test(code)) {
        libraries.push({ id: 'bootstrap4', name: 'Bootstrap 4' });
        bsDetected = true;
    }
    // Bootstrap 3: panel, well, glyphicon, old grid offsets, hidden-xs
    else if (/\b(glyphicon|glyphicon-[a-z-]+|panel(?:-default|-primary)?|well|pull-right|hidden-xs|btn-xs)\b/i.test(code)) {
        libraries.push({ id: 'bootstrap3', name: 'Bootstrap 3' });
        bsDetected = true;
    }
    // Bootstrap 2: span1-12 grids, row-fluid, input-block-level
    else if (/\b(span\d+|row-fluid|input-block-level)\b/i.test(code)) {
        libraries.push({ id: 'bootstrap2', name: 'Bootstrap 2' });
        bsDetected = true;
    }
    // Generic Bootstrap Fallback (Defaults to BS5 if only generic classes like 'btn' or 'container' are used)
    else if (/\b(btn(?:-[a-z]+)?|container|row|col(-[a-z]+-\d+)?)\b/i.test(code) && !bsDetected) {
        // Prevent pure Tailwind from triggering generic Bootstrap
        if (!/\b(text-[a-z]+-\d00|bg-[a-z]+-\d00)\b/.test(code)) {
            libraries.push({ id: 'bootstrap5', name: 'Bootstrap 5' });
        }
    }

    // --- TAILWIND DETECTION ---
    // Pseudo-classes (sm:, hover:), arbitrary values (w-[10px]), heavy color pallets
    if (/\b(sm:|md:|lg:|xl:|hover:|focus:|text-[a-z]+-\d00|bg-[a-z]+-\d00|flex-col|items-center|justify-between)\b/i.test(code)) {
        libraries.push({ id: 'tailwind', name: 'Tailwind CSS' });
    }

    // --- FONT AWESOME DETECTION ---
    // FA4, FA5, FA6: fa, fas, fab, far, fa-solid, etc.
    if (/\b(fa|fas|fab|far|fal|fat|fa-solid|fa-brands|fa-regular|fa-[a-z0-9-]+)\b/i.test(code) && !/\b(fa-5x|fa-spin)\b/.test(code)) {
        libraries.push({ id: 'fontawesome', name: 'Font Awesome (v4-v6)' });
    }
    // FA3 (Ancient): Uses icon-* prefix (also catches some BS2 icons, which FA3 covers well)
    if (/\bicon-[a-z0-9-]+\b/i.test(code) && !/\b(glyphicon)\b/i.test(code)) {
        libraries.push({ id: 'fontawesome3', name: 'Font Awesome 3' });
    }

    // --- CUSTOM UTILITIES ---
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
    
    if (!code.trim()) {
        indicator.textContent = 'Library: None';
        indicator.className = 'library-badge';
        iframe.srcdoc = '';
        return;
    }

    const detected = detectLibraries(code);
    let headContent = '';
    
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
        indicator.innerHTML = `Library: Unrecognized<br><span style="font-size: 0.65rem; opacity: 0.8;">Supported: Bootstrap (v2-v5), Tailwind, Font Awesome (v3-v6)</span>`;
        indicator.className = 'library-badge unrecognized';
    }

    // Construct the isolated iframe HTML with centered fallback
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

    iframe.srcdoc = htmlTemplate;
}

// Debounce input to prevent lagging on every single keystroke
let debounceTimer;
editor.addEventListener('input', () => {
    clearTimeout(debounceTimer);
    debounceTimer = setTimeout(updatePreview, 300);
});