function startDesktopQwertyKeyboard(onKeyEvent) {
    // Map both WASD and Arrow keys to their standard directions
    const keyMap = {
        // Up keys
        'w': 'up', 'W': 'up', 'ArrowUp': 'up',
        // Left keys
        'a': 'left', 'A': 'left', 'ArrowLeft': 'left',
        // Down keys
        's': 'down', 'S': 'down', 'ArrowDown': 'down',
        // Right keys
        'd': 'right', 'D': 'right', 'ArrowRight': 'right'
    };

    window.addEventListener("keydown", function (event) {
        const direction = keyMap[event.key];
        if (direction) {
            onKeyEvent({ direction: direction, state: "down" });
        }
    });

    window.addEventListener("keyup", function (event) {
        const direction = keyMap[event.key];
        if (direction) {
            onKeyEvent({ direction: direction, state: "up" });
        }
    });
}
