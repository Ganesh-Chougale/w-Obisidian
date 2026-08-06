function updateUI() {
  if (elements.encryptMode.checked) {
    elements.inputTitle.innerText = "Enter Text";

    elements.outputTitle.innerText = "Encrypted Text";
  } else {
    elements.inputTitle.innerText = "Enter Encrypted Text";

    elements.outputTitle.innerText = "Decrypted Text";
  }

  if (elements.liveMode.checked) {
    elements.convertButton.classList.add("d-none");
  } else {
    elements.convertButton.classList.remove("d-none");
  }
}
