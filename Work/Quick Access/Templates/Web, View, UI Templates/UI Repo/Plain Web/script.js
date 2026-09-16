const codeEditor = document.getElementById("codeEditor");
const preview = document.getElementById("preview");

codeEditor.addEventListener("input", function () {
preview.innerHTML = codeEditor.value;
});
