function showElementTypes() {

    const elementTypes = document.getElementById("elementTypes");

    elementTypes.classList.remove("d-none");

    document.getElementById("bootstrapElements").classList.add("d-none");
    document.getElementById("fontAwesomeElements").classList.add("d-none");
    document.getElementById("tryMessage").classList.add("d-none");
}


function showBootstrapElements() {

    const bootstrapElements =
        document.getElementById("bootstrapElements");

    bootstrapElements.classList.remove("d-none");

    document.getElementById("fontAwesomeElements").classList.add("d-none");
    document.getElementById("tryMessage").classList.add("d-none");

    loadBootstrapElements();
}

async function loadFontAwesomeElements() {

    const fontAwesomeElements =
        document.getElementById("fontAwesomeElements");

    if (fontAwesomeElements.innerHTML.trim() !== "") {
        return;
    }

    const response =
        await fetch("ui_elements/font_awesome/icons.html");

    const html =
        await response.text();

    fontAwesomeElements.innerHTML = html;
}


function showFontAwesomeElements() {

    const fontAwesomeElements =
        document.getElementById("fontAwesomeElements");

    fontAwesomeElements.classList.remove("d-none");

    document.getElementById("bootstrapElements").classList.add("d-none");
    document.getElementById("tryMessage").classList.add("d-none");

    loadFontAwesomeElements();
}


function showTryMessage() {

    const tryMessage =
        document.getElementById("tryMessage");

    tryMessage.classList.remove("d-none");

    document.getElementById("elementTypes").classList.add("d-none");
    document.getElementById("bootstrapElements").classList.add("d-none");
    document.getElementById("fontAwesomeElements").classList.add("d-none");
}


function copyCode(button) {

    const codeContainer = button.parentElement;

    const code = codeContainer.querySelector("code").innerText;

    navigator.clipboard.writeText(code);

    const originalText = button.innerHTML;

    button.innerHTML =
        '<i class="fa-solid fa-check"></i> Copied';

    setTimeout(function () {

        button.innerHTML = originalText;

    }, 1500);
}

async function loadBootstrapElements() {

    const bootstrapElements =
        document.getElementById("bootstrapElements");

    const response =
        await fetch("ui_elements/bootstrap/buttons.html");

    if (!response.ok) {
        console.error("Could not load Bootstrap elements.");
        return;
    }

    const html =
        await response.text();

    bootstrapElements.innerHTML = html;
}