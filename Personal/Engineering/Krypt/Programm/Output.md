on button "Prompt To Generate Own Cryptography" click it should give user text from  Programm\javascript\assets\Prompt.txt
to copy & a toaster message "use this txt with your AI chatbot to generate own cryptography file"
# Codebase Report

## Folder Structure
```
Programm
├── javascript/
│   ├── assets/
│   │   ├── AsciiCharacters.js
│   │   ├── Prompt.txt
│   │   └── Vismur.js
│   ├── Cryptor.css
│   ├── Cryptor.html
│   ├── Main.js
│   └── sub_scripts/
│       ├── Clipboard.js
│       ├── Collection.js
│       ├── Constants.js
│       ├── Decrypt.js
│       ├── Elements.js
│       ├── Encrypt.js
│       ├── Events.js
│       ├── FileManager.js
│       ├── Mapper.js
│       ├── Toast.js
│       └── UI.js
├── MVP.md
└── Output.md
```

---

## Code Summary
Engineering\Krypt\Programm\javascript\assets\AsciiCharacters.js:
```js
const dynamicAsciiChars = Array.from({ length: 128 }, (_, i) => String.fromCharCode(i));
const harcodedAsciiChars = [
    "\x00", "\x01", "\x02", "\x03", "\x04", "\x05", "\x06", "\x07", 
    "\b", "\t", "\n", "\x0B", "\f", "\r", "\x0E", "\x0F", 
    "\x10", "\x11", "\x12", "\x13", "\x14", "\x15", "\x16", "\x17", 
    "\x18", "\x19", "\x1A", "\x1B", "\x1C", "\x1D", "\x1E", "\x1F", 
    " ", "!", "\"", "#", "$", "%", "&", "'",
    "(", ")", "*", "+", ",", "-", ".", "/",
    "0", "1", "2", "3", "4", "5", "6", "7",
    "8", "9", ":", ";", "<", "=", ">", "?",
    "@", "A", "B", "C", "D", "E", "F", "G",
    "H", "I", "J", "K", "L", "M", "N", "O",
    "P", "Q", "R", "S", "T", "U", "V", "W",
    "X", "Y", "Z", "[", "\\", "]", "^", "_",
    "`", "a", "b", "c", "d", "e", "f", "g",
    "h", "i", "j", "k", "l", "m", "n", "o",
    "p", "q", "r", "s", "t", "u", "v", "w",
    "x", "y", "z", "{", "|", "}", "~", "\x7F"
];
```

Engineering\Krypt\Programm\javascript\assets\Vismur.js:
```js
const vismur = [
    "Ж", "あ", "क", "م", "한", "Ω", "Б", "Λ",
    "中", "ש", "Д", "λ", "ñ", "ø", "ß", "Ŧ",
    "ฬ", "ஞ", "ก", "א", "ع", "ی", "Ա", "ა",
    "თ", "ח", "ᚠ", "ᚢ", "ऐ", "ᛟ", "ᚱ", "𐌀",
    "𐎀", "𐎁", "𐎂", "ᐊ", "ᐃ", "ᑕ", "ᒥ", "რ",
    "ᓄ", "ᔭ", "ᖃ", "ᙏ", "ᜀ", "ᜃ", "ᠠ", "ظ",
    "ᡝ", "ᡤ", "ꀀ", "ꀁ", "ꀂ", "ꀃ", "ꐀ", "ꐁ",
    "ꐂ", "ꐃ", "Ⰰ", "Ⰱ", "Ⰲ", "Ⰳ", "Ϟ", "Ѭ",
    "☄", "ए", "β",  "δ", "ऊ", "ಸ", "ᠪ",
    "ε", "ζ", "η", "θ", "Й", "Ф", "Я", "Л",
    "Ю", "Ц", "Ш", "अ", "आ", "इ", "ई", "उ",
    "க", "ங", "ச", "ஞ", "ட", "ರ", 
    "ண", "த", "ந", "ಲ", "ಮ", "ಪ", "স",
    "ట", "డ", "త", "న", "প", "ব", "ম", 
    "ก", "ข", "ค", "ง", "จ", "ญ", "ფ", "ქ",
    "ო", "ს", "ტ", "שׁ", "אֶ", "ف", "ق",
    "ر", "ز", "ط",  "گ", "ლ", "ჰ"
];
console.log(vismur.length); // 128
```

Engineering\Krypt\Programm\javascript\Cryptor.css:
```css
body {
    background: #272727;
    color: #e5e5e5;
}
/*----------------------------------------------------------
    Radio Controls
----------------------------------------------------------*/
.radio-input {
    display: flex;
    align-items: center;
    gap: 6px;
    background: #000;
    padding: 6px;
    border-radius: 8px;
    overflow: hidden;
    width: fit-content;
    min-height: 70px;
}
.radio-input input {
    display: none;
}
.radio-input .label {
    width: 180px;
    height: 52px;
    background: #2a2a2a;
    border-radius: 4px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    align-items: center;
    padding: 8px 6px;
    border-top: 1px solid #383838;
    transition: .15s;
    position: relative;
    cursor: pointer;
}
.label .back-side {
    position: absolute;
    top: -10px;
    left: 0;
    width: 100%;
    height: 14px;
    border-radius: 4px 4px 2px 2px;
    background: #2a2a2a;
    opacity: 0;
    transition: .15s;
    box-shadow:
        inset 0 5px 3px rgba(0,0,0,.5),
        inset 0 -5px 2px rgba(37,138,195,.1);
    transform: perspective(300px) rotateX(50deg);
}
.label:has(input:checked) .back-side {
    opacity: 1;
}
.label:has(input:checked) {
    transform: perspective(200px) rotateX(-18deg);
    transform-origin: 50% 40%;
    margin-top: 6px;
    border-top: 1px solid #2589c362;
    box-shadow:
        inset 0 -20px 15px rgba(0,0,0,.45);
}
.label .text {
    color: #5f5f5f;
    font-size: 15px;
    font-weight: 700;
    text-transform: uppercase;
    user-select: none;
    transition: .15s;
}
.label input:checked + .text {
    color: #258ac3;
    text-shadow:
        0 0 8px rgb(37 138 195),
        1px 1px 2px #000;
}
.label .bottom-line {
    width: 100%;
    height: 4px;
    border-radius: 999px;
    background: #2a2a2a;
    border-top: 1px solid #383838;
}
.label:has(input:checked) .bottom-line {
    background: #1a1a1a;
    border-top: 1px solid #258ac340;
}
/*----------------------------------------------------------
    Cards
----------------------------------------------------------*/
.editor-card {
    background: #111;
    border: 1px solid #383838;
    border-radius: 10px;
    overflow: hidden;
    height: 100%;
}
.editor-header {
    background: #1c1c1c;
    color: #258ac3;
    padding: 12px 16px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid #333;
    font-weight: 600;
}
.editor-textarea {
    resize: vertical;
    min-height: 320px;
    border: none !important;
    border-radius: 0 !important;
    background: #202020 !important;
    color: #f5f5f5 !important;
    padding: 15px;
    font-size: 16px;
}
.editor-textarea:focus {
    box-shadow: none !important;
    border: none !important;
    background: #202020 !important;
}
.editor-textarea::placeholder {
    color: #8f8f8f;
}
.editor-textarea[readonly] {
    background: #181818 !important;
}
/*----------------------------------------------------------
    Copy Button
----------------------------------------------------------*/
.copy-btn {
    width: 38px;
    height: 38px;
    border: none;
    border-radius: 8px;
    background: #2a2a2a;
    color: white;
    transition: .2s;
}
.copy-btn:hover {
    background: #258ac3;
    color: white;
}
.copy-btn:active {
    transform: scale(.95);
}
/*----------------------------------------------------------
    Convert Button
----------------------------------------------------------*/
#convertButton {
    min-width: 180px;
    height: 48px;
    font-weight: 600;
    border: none;
    background: #258ac3;
}
#convertButton:hover {
    background: #1973a8;
}
/*----------------------------------------------------------
    Toast
----------------------------------------------------------*/
.toast {
    background: #181818;
    color: white;
    border: 1px solid #258ac3;
}
.toast-header {
    background: #202020;
    color: #258ac3;
    border-bottom: 1px solid #333;
}
.toast-body {
    white-space: pre-line;
}
/*----------------------------------------------------------
    Mobile
----------------------------------------------------------*/
@media (max-width: 767.98px) {
    .radio-input {
        width: 100%;
        flex-direction: column;
        height: auto;
    }
    .radio-input .label {
        width: 100%;
    }
    .editor-textarea {
        min-height: 240px;
    }
    #convertButton {
        width: 100%;
    }
}
/*----------------------------------------------------------
    Desktop
----------------------------------------------------------*/
@media (min-width: 768px) {
    .editor-card {
        min-height: 420px;
    }
    .editor-textarea {
        height: 360px;
    }
}
/*----------------------------------------------------------
    Conversion Mode
----------------------------------------------------------*/
.conversion-mode {
    display: flex;
    gap: 4px;
    padding: 3px;
    background: #111;
    border: 1px solid #383838;
    border-radius: 7px;
}
.mode-option {
    border: none;
    background: transparent;
    color: #777;
    padding: 5px 14px;
    border-radius: 5px;
    font-size: 13px;
    font-weight: 600;
    cursor: pointer;
    transition: .15s;
}
.mode-option:hover {
    color: #bbb;
}
.mode-option.active {
    background: #2a2a2a;
    color: #258ac3;
}
```

Engineering\Krypt\Programm\javascript\Cryptor.html:
```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cryptor</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./Cryptor.css" />
  </head>
  <body>
    <div class="container py-3">
      <!-- Encrypt / Decrypt -->
      <section class="d-flex justify-content-center mb-3">
        <div class="radio-input">
          <label class="label">
            <div class="back-side"></div>
            <input type="radio" name="mode" id="encryptMode" checked />
            <span class="text"> Encrypt </span>
            <span class="bottom-line"></span>
          </label>
          <label class="label">
            <div class="back-side"></div>
            <input type="radio" name="mode" id="decryptMode" />
            <span class="text"> Decrypt </span>
            <span class="bottom-line"></span>
          </label>
        </div>
      </section>
      <!-- Live / Submit -->
      <section class="d-flex justify-content-center mb-4">
        <div class="conversion-mode">
          <button type="button" id="submitMode" class="mode-option active">
            On Submit
          </button>
          <button type="button" id="liveMode" class="mode-option">Live</button>
        </div>
      </section>
      <section class="d-flex justify-content-center gap-3 mb-4">
        <button id="createCollectionButton" class="btn btn-outline-info">
          Prompt To Generate Own Cryptography
        </button>
        <button id="uploadCollectionButton" class="btn btn-outline-success">
          Upload own crypt CSV
        </button>
        <input type="file" id="collectionFile" accept=".csv" hidden />
      </section>
      <!-- Input / Output -->
      <section class="row g-3">
        <!-- Input -->
        <div class="col-12 col-md-6">
          <div class="editor-card">
            <div class="editor-header">
              <span id="inputTitle"> Enter Text </span>
              <button
                id="clearButton"
                class="copy-btn"
                type="button"
                title="Clear"
              >
                <i class="bi bi-x-lg"></i>
              </button>
            </div>
            <textarea
              id="inputText"
              class="form-control editor-textarea"
              placeholder="Type here..."
              rows="12"
            ></textarea>
          </div>
        </div>
        <!-- Output -->
        <div class="col-12 col-md-6">
          <div class="editor-card">
            <div class="editor-header">
              <span id="outputTitle"> Encrypted Text </span>
              <button
                id="copyButton"
                class="copy-btn"
                type="button"
                title="Copy"
              >
                <i class="bi bi-clipboard-fill"></i>
              </button>
            </div>
            <textarea
              id="outputText"
              class="form-control editor-textarea"
              rows="12"
              readonly
              placeholder="Output will appear here"
            ></textarea>
          </div>
        </div>
      </section>
      <!-- Convert -->
      <section class="text-center mt-4">
        <button id="convertButton" class="btn btn-primary px-5 d-none">
          Convert
        </button>
      </section>
    </div>
    <!-- Toast -->
    <section class="toast-container position-fixed bottom-0 end-0 p-3">
      <div id="appToast" class="toast" role="alert">
        <div class="toast-header">
          <strong class="me-auto" id="toastTitle"> Notification </strong>
          <button
            type="button"
            class="btn-close"
            data-bs-dismiss="toast"
          ></button>
        </div>
        <div class="toast-body" id="toastMessage"></div>
      </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/papaparse@5.5.3/papaparse.min.js"></script>
    <script src="./Main.js"></script>
  </body>
</html>
```

Engineering\Krypt\Programm\javascript\Main.js:
```js
const scripts = [
  "./assets/AsciiCharacters.js",
  "./assets/Vismur.js",
  "./sub_scripts/Constants.js",
  "./sub_scripts/Elements.js",
  "./sub_scripts/Collection.js",
  "./sub_scripts/FileManager.js",
  "./sub_scripts/Mapper.js",
  "./sub_scripts/Encrypt.js",
  "./sub_scripts/Decrypt.js",
  "./sub_scripts/Toast.js",
  "./sub_scripts/Clipboard.js",
  "./sub_scripts/UI.js",
  "./sub_scripts/Events.js",
];
async function loadScripts() {
  for (const src of scripts) {
    await new Promise((resolve, reject) => {
      const script = document.createElement("script");
      script.src = src;
      script.onload = resolve;
      script.onerror = reject;
      document.head.appendChild(script);
    });
  }
}
loadScripts()
  .then(() => {
    mapper.initialize();
    registerEvents();
    updateUI();
  })
  .catch((error) => {
    console.error("Script loading failed", error);
  });
```

Engineering\Krypt\Programm\javascript\sub_scripts\Clipboard.js:
```js
function copyOutput() {
  navigator.clipboard.writeText(elements.outputText.value);
  showToast("Copied!", "Text copied to clipboard");
}
function clearInput() {
  elements.inputText.value = "";
  elements.outputText.value = "";
}
```

Engineering\Krypt\Programm\javascript\sub_scripts\Collection.js:
```js
function createCustomCollection() {
  let csv = "srno,ascii,encrypted\n";
  for (let i = 0; i < harcodedAsciiChars.length; i++) {
    const char = harcodedAsciiChars[i];
    let value = prompt(`Enter encrypted symbol for: ${char}`);
    if (value === null) {
      return;
    }
    csv +=
      [
        String(i + 1).padStart(3, "0"),
        `"${char.replaceAll('"', '""')}"`,
        `"${value.replaceAll('"', '""')}"`,
      ].join(",") + "\n";
  }
  downloadCSV(csv);
  showToast("Created", "Custom collection downloaded");
}
function loadCustomCollection(results) {
  const rows = results.data;
  const errors = [];
  // Papa Parser errors
  if (results.errors.length) {
    errors.push(...results.errors.map((error) => error.message));
  }
  // Header validation
  const headers = results.meta.fields.map((header) =>
    header.trim().toLowerCase(),
  );
  if (
    headers.length !== 3 ||
    !headers.includes("srno") ||
    !headers.includes("ascii") ||
    !headers.includes("encrypted")
  ) {
    errors.push("Required columns: srno, ascii, encrypted");
  }
  const mapping = {};
  const reverse = {};
  const asciiUsed = {};
  // Ignore extra rows after 128
  if (rows.length > 128) {
    showToast("Warning", `${rows.length - 128} extra characters ignored`);
  }
  // Validate rows
  for (let i = 0; i < Math.min(rows.length, 128); i++) {
    const rowErrors = [];
    const rowNumber = i + 2;
    const srno = rows[i].srno?.trim();
    const ascii = rows[i].ascii;
    const encrypted = rows[i].encrypted?.trim();
    if (!srno && !ascii && !encrypted) {
      rowErrors.push(`Row ${rowNumber}: empty row is not allowed`);
    }
    // 1. srno validation
    const expectedSrno = String(i + 1).padStart(3, "0");
    if (srno !== expectedSrno) {
      rowErrors.push(`Row ${rowNumber}: srno must be ${expectedSrno}`);
    }
    // 2. ASCII validation
    const expectedAscii = harcodedAsciiChars[i];
    if (ascii !== expectedAscii) {
      rowErrors.push(`Row ${rowNumber}: ascii must match srno ${expectedSrno}`);
    }
    // Duplicate ASCII validation
    if (ascii && asciiUsed[ascii]) {
      rowErrors.push(`Row ${rowNumber}: duplicate ascii "${ascii}"`);
    }
    if (ascii) {
      asciiUsed[ascii] = true;
    }
    // 3. Encrypted validation
    if (!encrypted) {
      rowErrors.push(`Row ${rowNumber}: encrypted symbol is required`);
    } else {
      // Must contain exactly one unicode symbol
      if (Array.from(encrypted).length !== 1) {
        rowErrors.push(
          `Row ${rowNumber}: encrypted must contain one symbol only`,
        );
      }
      // Cannot be English alphabet
      if (/^[A-Za-z]$/.test(encrypted)) {
        rowErrors.push(
          `Row ${rowNumber}: encrypted symbol "${encrypted}" cannot be an English letter`,
        );
      }
      // Cannot contain whitespace
      if (/\s/.test(encrypted)) {
        rowErrors.push(
          `Row ${rowNumber}: encrypted symbol cannot contain whitespace`,
        );
      }
      // Cannot contain ASCII control characters
      if (encrypted.charCodeAt(0) < 32 || encrypted.charCodeAt(0) === 127) {
        rowErrors.push(
          `Row ${rowNumber}: encrypted symbol cannot be a control character`,
        );
      }
    }
    // Duplicate encrypted symbol
    if (encrypted && reverse[encrypted]) {
      rowErrors.push(
        `Row ${rowNumber}: "${encrypted}" already belongs to srno ${reverse[encrypted]}`,
      );
    }
    // Store valid mapping
    if (rowErrors.length) {
      errors.push(...rowErrors);
    } else {
      mapping[ascii] = encrypted;
      reverse[encrypted] = srno;
    }
  }
  // Missing rows validation
  if (Object.keys(mapping).length !== 128) {
    errors.push(
      `Exactly 128 valid mappings required; found ${Object.keys(mapping).length}`,
    );
  }
  if (errors.length) {
    showToast(
      "Invalid CSV",
      `${errors.length} errors found. Check rows: ` +
        errors
          .map((error) => error.match(/Row \d+/)?.[0])
          .filter(Boolean)
          .filter((value, index, array) => array.indexOf(value) === index)
          .join(", "),
    );
    console.error("CSV validation errors:", errors);
    return;
  }
  mapper.loadCustomMapping(mapping);
  localStorage.setItem("customMapping", JSON.stringify(mapping));
  showToast("Success", "Custom collection loaded");
}
```

Engineering\Krypt\Programm\javascript\sub_scripts\Constants.js:
```js
const MODE = {
    ENCRYPT: "encrypt",
    DECRYPT: "decrypt"
};
const CONVERSION_MODE = {
    LIVE: "live",
    SUBMIT: "submit"
};
```

Engineering\Krypt\Programm\javascript\sub_scripts\Decrypt.js:
```js
function decryptText() {
  const response = mapper.decrypt(elements.inputText.value);
  elements.outputText.value = response.result;
  if (response.unknown.length) {
    showToast("Unknown Encrypted Symbols", response.unknown.join(" "));
  }
}
```

Engineering\Krypt\Programm\javascript\sub_scripts\Elements.js:
```js
const elements = {
  encryptMode: document.getElementById("encryptMode"),
  decryptMode: document.getElementById("decryptMode"),
  liveMode: document.getElementById("liveMode"),
  submitMode: document.getElementById("submitMode"),
  inputText: document.getElementById("inputText"),
  outputText: document.getElementById("outputText"),
  inputTitle: document.getElementById("inputTitle"),
  outputTitle: document.getElementById("outputTitle"),
  copyButton: document.getElementById("copyButton"),
  clearButton: document.getElementById("clearButton"),
  convertButton: document.getElementById("convertButton"),
  createCollectionButton: document.getElementById("createCollectionButton"),
  uploadCollectionButton: document.getElementById("uploadCollectionButton"),
  collectionFile: document.getElementById("collectionFile"),
};
```

Engineering\Krypt\Programm\javascript\sub_scripts\Encrypt.js:
```js
function encryptText() {
  const response = mapper.encrypt(elements.inputText.value);
  elements.outputText.value = response.result;
  if (response.unknown.length) {
    showToast("Unsupported Characters", response.unknown.join(" "));
  }
}
```

Engineering\Krypt\Programm\javascript\sub_scripts\Events.js:
```js
function convert() {
  if (elements.encryptMode.checked) {
    encryptText();
  } else {
    decryptText();
  }
}
function registerEvents() {
  elements.copyButton.addEventListener("click", copyOutput);
  elements.clearButton.addEventListener("click", clearInput);
  elements.encryptMode.addEventListener("change", updateUI);
  elements.decryptMode.addEventListener("change", updateUI);
  elements.liveMode.addEventListener("click", () => {
    elements.liveMode.classList.add("active");
    elements.submitMode.classList.remove("active");
    updateUI();
  });
  elements.submitMode.addEventListener("click", () => {
    elements.submitMode.classList.add("active");
    elements.liveMode.classList.remove("active");
    updateUI();
  });
  elements.convertButton.addEventListener("click", convert);
  elements.inputText.addEventListener("input", () => {
    if (elements.liveMode.classList.contains("active")) {
      convert();
    }
  });
  elements.createCollectionButton.addEventListener(
    "click",
    createCustomCollection,
  );
  elements.uploadCollectionButton.addEventListener("click", () => {
    elements.collectionFile.click();
  });
  elements.collectionFile.addEventListener("change", (event) => {
    const file = event.target.files[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = (e) => {
      Papa.parse(e.target.result, {
        header: true,
        skipEmptyLines: false,
        transformHeader: (header) => {
          return header.trim().toLowerCase();
        },
        transform: (value) => {
          return value.trim();
        },
        complete: (results) => {
          loadCustomCollection(results);
        },
      });
    };
    reader.readAsText(file);
  });
}
```

Engineering\Krypt\Programm\javascript\sub_scripts\FileManager.js:
```js
function downloadCSV(content) {
  const blob = new Blob([content], {
    type: "text/csv",
  });
  const url = URL.createObjectURL(blob);
  const link = document.createElement("a");
  link.href = url;
  link.download = "my_custom_collection.csv";
  link.click();
  URL.revokeObjectURL(url);
}
```

Engineering\Krypt\Programm\javascript\sub_scripts\Mapper.js:
```js
const mapper = {
    asciiToVismur: {},
    vismurToAscii: {},
    initialize() {
        for (let i = 0; i < 128; i++) {
            this.asciiToVismur[harcodedAsciiChars[i]] = vismur[i];
            this.vismurToAscii[vismur[i]] = harcodedAsciiChars[i];
        }
    },
    encrypt(text) {
        let result = "";
        let unknown = [];
        for (const char of text) {
            if (this.asciiToVismur[char]) {
                result += this.asciiToVismur[char];
            } else {
                result += char;
                unknown.push(char);
            }
        }
        return {
            result,
            unknown,
        };
    },
    decrypt(text) {
        let result = "";
        let unknown = [];
        for (const char of text) {
            if (this.vismurToAscii[char]) {
                result += this.vismurToAscii[char];
            } else {
                result += char;
                unknown.push(char);
            }
        }
        return {
            result,
            unknown,
        };
    },
loadCustomMapping(mapping){
    this.asciiToVismur = {};
    this.vismurToAscii = {};
    for(const key in mapping){
        this.asciiToVismur[key]
            =
        mapping[key];
        this.vismurToAscii[mapping[key]]
            =
        key;
    }
}
};
```

Engineering\Krypt\Programm\javascript\sub_scripts\Toast.js:
```js
function showToast(title, message) {
  document.getElementById("toastTitle").innerText = title;
  document.getElementById("toastMessage").innerText = message;
  const toast = new bootstrap.Toast(document.getElementById("appToast"));
  toast.show();
}
```

Engineering\Krypt\Programm\javascript\sub_scripts\UI.js:
```js
function updateUI() {
  if (elements.encryptMode.checked) {
    elements.inputTitle.innerText = "Enter Text";
    elements.outputTitle.innerText = "Encrypted Text";
  } else {
    elements.inputTitle.innerText = "Enter Encrypted Text";
    elements.outputTitle.innerText = "Decrypted Text";
  }
  if (elements.liveMode.classList.contains("active")) {
    elements.convertButton.classList.add("d-none");
  } else {
    elements.convertButton.classList.remove("d-none");
  }
}
```



---

