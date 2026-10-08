const canvas = document.getElementById("playground");
const ctx = canvas.getContext("2d");

const controllerSelect = document.getElementById("controllerSelect");

const keyLogs = [];


// --------------------------------------------------
// UI
// --------------------------------------------------

function draw() {

    canvas.width = canvas.clientWidth;
    canvas.height = canvas.clientHeight;

    ctx.clearRect(0, 0, canvas.width, canvas.height);

    const middleX = canvas.width / 2;

    // Vertical divider
    ctx.beginPath();
    ctx.moveTo(middleX, 0);
    ctx.lineTo(middleX, canvas.height);
    ctx.strokeStyle = "#333333";
    ctx.stroke();


    // ----------------------------------------------
    // LEFT PART - LAST PRESSED KEY
    // ----------------------------------------------

    const latestLog = keyLogs[keyLogs.length - 1];

    ctx.fillStyle = "#ffffff";
    ctx.font = "bold 48px Arial";
    ctx.textAlign = "center";
    ctx.textBaseline = "middle";

    ctx.fillText(
        latestLog ? latestLog.key : "-",
        middleX / 2,
        canvas.height / 2
    );


    // ----------------------------------------------
    // RIGHT PART - LOG
    // ----------------------------------------------

    ctx.textAlign = "left";
    ctx.textBaseline = "top";

    ctx.font = "18px Arial";

    const logX = middleX + 20;
    const logStartY = 20;
    const lineHeight = 28;

    const visibleLogs = keyLogs.slice(-20);

    visibleLogs.forEach(function (log, index) {

        const y = logStartY + (index * lineHeight);

        ctx.fillText(
            `${log.key} | ${log.state} | ${log.duration.toFixed(0)} ms`,
            logX,
            y
        );
    });
}


// --------------------------------------------------
// HARDWARE
// --------------------------------------------------

function handleKeyboardEvent(data) {

    keyLogs.push({
        key: data.key,
        code: data.code,
        state: data.state,
        duration: data.duration
    });

    draw();
}


// --------------------------------------------------
// CONTROLLER SELECTION
// --------------------------------------------------

controllerSelect.addEventListener("change", function () {

    if (controllerSelect.value === "desktop_querty_keyboard") {

        startDesktopQwertyKeyboard(handleKeyboardEvent);
    }
});


// Initial UI
draw();