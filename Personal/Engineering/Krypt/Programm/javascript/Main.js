const scripts = [
  "./assets/AsciiCharacters.js",
  "./assets/Vismur.js",

  "./sub_scripts/Constants.js",
  "./sub_scripts/Elements.js",
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
