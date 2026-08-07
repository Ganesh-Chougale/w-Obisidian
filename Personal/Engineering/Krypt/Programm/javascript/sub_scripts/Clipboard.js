function copyOutput() {
  navigator.clipboard.writeText(elements.outputText.value);

  showToast("Copied!", "Text copied to clipboard");
}

function clearInput() {
  elements.inputText.value = "";
  elements.outputText.value = "";
}


async function copyGenerationPrompt() {
  try {
    await navigator.clipboard.writeText(cryptographyGenerationPrompt);

    showToast(
      "Prompt Copied!",
      `CTRL + V to paste it.
       Use this txt with your prefered AI chatbot to generate own cryptography (csv) file.`
    );
  } catch (error) {
    console.error("Prompt copy failed:", error);
    showToast("Error", "Unable to copy prompt");
  }
}