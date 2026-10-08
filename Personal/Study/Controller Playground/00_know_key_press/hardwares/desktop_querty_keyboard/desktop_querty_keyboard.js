const KEY_HOLD_THRESHOLD = 500;

function startDesktopQwertyKeyboard(onKeyEvent) {

    const pressedKeys = new Map();

    window.addEventListener("keydown", function (event) {

        // Ignore repeated keydown events while holding a key
        if (event.repeat) {
            return;
        }

        const startTime = performance.now();

        pressedKeys.set(event.code, {
            key: event.key,
            startTime: startTime
        });
    });

    window.addEventListener("keyup", function (event) {

        const keyData = pressedKeys.get(event.code);

        if (!keyData) {
            return;
        }

        const duration = performance.now() - keyData.startTime;

        pressedKeys.delete(event.code);

        const state =
            duration >= KEY_HOLD_THRESHOLD
                ? "hold"
                : "press";

        onKeyEvent({
            key: keyData.key,
            code: event.code,
            state: state,
            duration: duration
        });
    });
}