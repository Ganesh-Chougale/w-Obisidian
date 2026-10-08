const canvas = document.getElementById("playground");
const ctx = canvas.getContext("2d");
const controllerSelect = document.getElementById("controllerSelect");

canvas.width = canvas.clientWidth;
canvas.height = canvas.clientHeight;

let dotX = canvas.width / 2;
let dotY = canvas.height / 2;
const dotRadius = 10; // Explicitly defined radius for boundary checking

// Track movement state for all directions
let movement = { 
    up: false, 
    down: false, 
    left: false, 
    right: false 
};

function draw() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.beginPath();
    ctx.arc(dotX, dotY, dotRadius, 0, Math.PI * 2);
    ctx.fillStyle = "rgb(76, 28, 77)";
    ctx.fill();
}

function handleKeyboardEvent(data) {
    // Update the true/false state of the specific direction
    if (data.direction in movement) {
        movement[data.direction] = data.state === "down";
    }
}

function update() {
    let moved = false;

    // Handle vertical movement with wall boundaries
    if (movement.up) {
        dotY -= 5;
        if (dotY < dotRadius) {
            dotY = dotRadius; // Stop at top wall
        }
        moved = true;
    }
    if (movement.down) {
        dotY += 5;
        if (dotY > canvas.height - dotRadius) {
            dotY = canvas.height - dotRadius; // Stop at bottom wall
        }
        moved = true;
    }

    // Handle horizontal movement with wall boundaries
    if (movement.left) {
        dotX -= 5;
        if (dotX < dotRadius) {
            dotX = dotRadius; // Stop at left wall
        }
        moved = true;
    }
    if (movement.right) {
        dotX += 5;
        if (dotX > canvas.width - dotRadius) {
            dotX = canvas.width - dotRadius; // Stop at right wall
        }
        moved = true;
    }

    // Redraw only if the dot actually moved
    if (moved) {
        draw();
    }

    requestAnimationFrame(update);
}

controllerSelect.addEventListener("change", function () {
    if (controllerSelect.value === "desktop_querty_keyboard") {
        startDesktopQwertyKeyboard(handleKeyboardEvent);
    }
});

// Initial canvas draw and start the animation loop
draw();
update();
