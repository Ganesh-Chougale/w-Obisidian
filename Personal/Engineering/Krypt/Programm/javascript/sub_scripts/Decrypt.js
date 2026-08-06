function decryptText() {
  const response = mapper.decrypt(elements.inputText.value);

  elements.outputText.value = response.result;

  if (response.unknown.length) {
    showToast("Unknown Encrypted Symbols", response.unknown.join(" "));
  }
}
