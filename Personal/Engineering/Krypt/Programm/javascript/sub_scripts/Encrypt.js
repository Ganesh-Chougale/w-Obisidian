function encryptText() {
  const response = mapper.encrypt(elements.inputText.value);

  elements.outputText.value = response.result;

  if (response.unknown.length) {
    showToast("Unsupported Characters", response.unknown.join(" "));
  }
}
