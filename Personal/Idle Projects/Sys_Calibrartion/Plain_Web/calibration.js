const originalNumber = document.getElementById("originalNumber");
const operation = document.getElementById("operation");
const againstNumber = document.getElementById("againstNumber");
const iterationLimit = document.getElementById("iterationLimit");
const triggerButton = document.getElementById("triggerButton");
const time = document.getElementById("time");

const detailedLog = document.getElementById("detailedLog");
const clearDetailedLog = document.getElementById("clearDetailedLog");

const log = document.getElementById("log");
const downloadLog = document.getElementById("downloadLog");
const copyLog = document.getElementById("copyLog");
const clearLog = document.getElementById("clearLog");

let isRunning = false;
let startTime = 0;
let timerId = null;
let iterationCount = 0;
let currentValue = 0;

/*
 * Detailed log performance settings.
 *
 * Only the newest 10,000 lines are kept in memory and displayed.
 * The UI is refreshed in batches rather than once per iteration.
 */
const MAX_DETAILED_LOG_LINES = 10000;
const DETAILED_LOG_FLUSH_INTERVAL = 10000;

let detailedLogLines = [];
let pendingDetailedLogLines = [];

/*
 * Final conclusion log is intentionally small and independent
 * from the high-volume Detailed Logs.
 */
function addLog(message) {
    const entry = document.createElement("div");
    entry.className = "log-entry";

    const logTime = document.createElement("span");
    logTime.className = "log-time";
    logTime.textContent = new Date().toLocaleTimeString();

    const logMessage = document.createElement("span");
    logMessage.className = "log-message";
    logMessage.textContent = message;

    entry.appendChild(logTime);
    entry.appendChild(logMessage);
    log.appendChild(entry);

    log.scrollTop = log.scrollHeight;
}

function formatTime(milliseconds) {
    const totalMilliseconds = Math.floor(milliseconds);

    const hours = Math.floor(totalMilliseconds / 3600000);

    const minutes = Math.floor(
        (totalMilliseconds % 3600000) / 60000
    );

    const seconds = Math.floor(
        (totalMilliseconds % 60000) / 1000
    );

    const ms = totalMilliseconds % 1000;

    return (
        String(hours).padStart(2, "0") +
        ":" +
        String(minutes).padStart(2, "0") +
        ":" +
        String(seconds).padStart(2, "0") +
        "." +
        String(ms).padStart(3, "0")
    );
}

function updateTimer() {
    if (!isRunning) {
        return;
    }

    time.value = formatTime(performance.now() - startTime);
    timerId = requestAnimationFrame(updateTimer);
}

function performOperation(value, against) {
    switch (operation.value) {
        case "addition":
            return value + against;

        case "multiplication":
            return value * against;

        case "power":
            return Math.pow(value, against);

        case "exponential":
            return Math.exp(value);

        default:
            return value;
    }
}

function formatDetailedValue(value) {
    if (Number.isNaN(value)) {
        return "NaN";
    }

    if (value === Infinity) {
        return "Infinity";
    }

    if (value === -Infinity) {
        return "-Infinity";
    }

    return String(value);
}

function appendDetailedLog(line) {
    pendingDetailedLogLines.push(line);

    if (
        pendingDetailedLogLines.length >=
        DETAILED_LOG_FLUSH_INTERVAL
    ) {
        flushDetailedLogs();
    }
}

function flushDetailedLogs() {
    if (pendingDetailedLogLines.length === 0) {
        return;
    }

    detailedLogLines.push(...pendingDetailedLogLines);
    pendingDetailedLogLines.length = 0;

    /*
     * Keep only the newest MAX_DETAILED_LOG_LINES entries.
     * Slice is performed only once per large batch, not per iteration.
     */
    if (detailedLogLines.length > MAX_DETAILED_LOG_LINES) {
        detailedLogLines = detailedLogLines.slice(
            -MAX_DETAILED_LOG_LINES
        );
    }

    const wasAtBottom =
        detailedLog.scrollHeight -
        detailedLog.scrollTop -
        detailedLog.clientHeight <
        20;

    detailedLog.textContent = detailedLogLines.join("\n");

    /*
     * Follow the running test only when the user was already
     * near the bottom. This allows manual inspection of older
     * visible entries without being forced back down.
     */
    if (wasAtBottom) {
        detailedLog.scrollTop = detailedLog.scrollHeight;
    }
}

function resetDetailedLog() {
    detailedLogLines = [];
    pendingDetailedLogLines = [];
    detailedLog.textContent = "";
}

function createDetailedIterationLog(
    iteration,
    previousValue,
    against,
    result
) {
    const operationLabel =
        operation.options[operation.selectedIndex].text;

    return (
        `Iteration ${iteration.toLocaleString()} | ` +
        `Previous: ${formatDetailedValue(previousValue)} | ` +
        `Operation: ${operationLabel} | ` +
        `Against: ${formatDetailedValue(against)} | ` +
        `Result: ${formatDetailedValue(result)}`
    );
}

function runIteration() {
    if (!isRunning) {
        return;
    }

    const limitText = iterationLimit.value.trim();

    const limit =
        limitText === ""
            ? Infinity
            : Number(limitText);

    /*
     * Keep the calculation batch large enough to reduce scheduling
     * overhead, while yielding regularly so the browser remains
     * responsive.
     */
    const batchSize = 1000;
    const against = Number(againstNumber.value);

    for (let i = 0; i < batchSize; i++) {
        if (iterationCount >= limit) {
            flushDetailedLogs();
            stopTest("Iteration limit reached.");
            return;
        }

        const previousValue = currentValue;

        currentValue = performOperation(
            currentValue,
            against
        );

        iterationCount++;

        appendDetailedLog(
            createDetailedIterationLog(
                iterationCount,
                previousValue,
                against,
                currentValue
            )
        );
    }

    /*
     * If the batch did not reach 10,000 pending entries, don't
     * force a DOM update. The next batches will flush it.
     */
    setTimeout(runIteration, 0);
}

function startTest() {
    if (isRunning) {
        return;
    }

    const original = Number(originalNumber.value);
    const against = Number(againstNumber.value);

    if (!Number.isFinite(original)) {
        addLog("Invalid original number.");
        return;
    }

    if (!Number.isFinite(against)) {
        addLog("Invalid against number.");
        return;
    }

    const limitText = iterationLimit.value.trim();

    if (limitText !== "") {
        const limit = Number(limitText);

        if (
            !Number.isInteger(limit) ||
            limit < 1
        ) {
            addLog(
                "Iteration limit must be a positive integer."
            );
            return;
        }
    }

    /*
     * Start a fresh Detailed Log for each test.
     * The Final Conclusion Log remains as historical summaries.
     */
    resetDetailedLog();

    currentValue = original;
    iterationCount = 0;
    startTime = performance.now();
    isRunning = true;

    triggerButton.textContent = "Stop";
    triggerButton.classList.add("is-running");

    const operationLabel =
        operation.options[operation.selectedIndex].text;

    addLog(
        `Started: ${operationLabel} ` +
        `${original} against ${against}.`
    );

    appendDetailedLog(
        `Test started | ` +
        `Original: ${formatDetailedValue(original)} | ` +
        `Operation: ${operationLabel} | ` +
        `Against: ${formatDetailedValue(against)}`
    );

    flushDetailedLogs();

    updateTimer();
    runIteration();
}

function stopTest(reason = "Stopped.") {
    if (!isRunning) {
        return;
    }

    isRunning = false;

    if (timerId !== null) {
        cancelAnimationFrame(timerId);
        timerId = null;
    }

    /*
     * Make sure the last partial batch of detailed logs is visible.
     */
    flushDetailedLogs();

    const elapsed = performance.now() - startTime;

    time.value = formatTime(elapsed);

    triggerButton.textContent = "Start";
    triggerButton.classList.remove("is-running");

    addLog(
        `${reason} ` +
        `Iterations: ${iterationCount.toLocaleString()}. ` +
        `Elapsed: ${formatTime(elapsed)}.`
    );

    appendDetailedLog(
        `Test finished | ` +
        `Reason: ${reason} | ` +
        `Iterations: ${iterationCount.toLocaleString()} | ` +
        `Elapsed: ${formatTime(elapsed)}`
    );

    flushDetailedLogs();
}

triggerButton.addEventListener("click", () => {
    if (isRunning) {
        stopTest();
    } else {
        startTest();
    }
});

clearDetailedLog.addEventListener("click", () => {
    resetDetailedLog();
    detailedLog.textContent = "Detailed log cleared.";
});

clearLog.addEventListener("click", () => {
    log.innerHTML = "";
    addLog("Log cleared.");
});

copyLog.addEventListener("click", async () => {
    const entries = Array.from(
        log.querySelectorAll(".log-entry")
    );

    const text = entries
        .map((entry) => entry.textContent.trim())
        .join("\n");

    try {
        await navigator.clipboard.writeText(text);
        addLog("Conclusion log copied to clipboard.");
    } catch {
        addLog("Unable to copy conclusion log.");
    }
});

downloadLog.addEventListener("click", () => {
    const entries = Array.from(
        log.querySelectorAll(".log-entry")
    );

    const text = entries
        .map((entry) => entry.textContent.trim())
        .join("\n");

    const blob = new Blob([text], {
        type: "text/plain;charset=utf-8"
    });

    const url = URL.createObjectURL(blob);
    const anchor = document.createElement("a");

    anchor.href = url;
    anchor.download = "machine-calibration-log.txt";

    document.body.appendChild(anchor);
    anchor.click();
    anchor.remove();

    URL.revokeObjectURL(url);
});
