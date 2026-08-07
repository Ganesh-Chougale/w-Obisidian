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
    copyGenerationPrompt,
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
