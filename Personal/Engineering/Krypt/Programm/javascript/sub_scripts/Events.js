function convert() {
  if (elements.encryptMode.checked) {
    encryptText();
  } else {
    decryptText();
  }
}

function registerEvents() {
  elements.copyButton.addEventListener("click", copyOutput);

  elements.encryptMode.addEventListener("change", updateUI);

  elements.decryptMode.addEventListener("change", updateUI);

  elements.liveMode.addEventListener("change", updateUI);

  elements.submitMode.addEventListener("change", updateUI);

  elements.convertButton.addEventListener("click", convert);

  elements.inputText.addEventListener("input", () => {
    if (elements.liveMode.checked) {
      convert();
    }
  });
}
