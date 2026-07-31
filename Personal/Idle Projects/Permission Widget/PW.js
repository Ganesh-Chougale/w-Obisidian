// inject HTML into page
fetch("PW.html")
  .then(res => res.text())
  .then(html => {
    document.body.insertAdjacentHTML("beforeend", html);
    initConsent(); // run after HTML loads
  });

function initConsent() {
    const modal = document.getElementById("consentModal");
    const checkboxes = document.querySelectorAll(".chk");
    const agreeBtn = document.getElementById("agreeBtn");
    const widget = document.getElementById("consentWidget");
    const preview = document.getElementById("previewBox");
    const permList = document.getElementById("permList");

    const consent = localStorage.getItem("userConsent");

    if (consent === "true") {
    modal.classList.add("hidden");
    widget.classList.remove("hidden");
    } else {
    modal.classList.remove("hidden");
    }

    checkboxes.forEach(chk => {
    chk.addEventListener("change", () => {
        const allChecked = [...checkboxes].every(c => c.checked);
        agreeBtn.disabled = !allChecked;
    });
    });


    agreeBtn.addEventListener("click", () => {
    const selected = [];

    checkboxes.forEach((chk, i) => {
        if (chk.checked) {
        selected.push("Permission " + (i + 1));
        }
    });

    localStorage.setItem("userConsent", "true");
    localStorage.setItem("permissions", JSON.stringify(selected));

    modal.classList.add("hidden");
    widget.classList.remove("hidden");
    });

    widget.addEventListener("click", () => {
    const saved = JSON.parse(localStorage.getItem("permissions")) || [];

    permList.innerHTML = "";

    saved.forEach(p => {
        const li = document.createElement("li");
        li.textContent = p;
        permList.appendChild(li);
    });

    preview.classList.toggle("hidden");
    });
}