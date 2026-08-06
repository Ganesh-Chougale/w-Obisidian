function copyOutput() {
  navigator.clipboard.writeText(elements.outputText.value);

  showToast("Copied!", "Text copied to clipboard");
}
