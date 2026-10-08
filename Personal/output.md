## Code Summary
00_know_key_press\hardwares\desktop_querty_keyboard\desktop_querty_keyboard.js:
```js
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
```

00_know_key_press\ui\kkp.html:
```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>key press prompt</title>
</head>
<body style="
margin: 0;
width: 100vw; height: 100vh;
background: #050505;
display: flex;
flex-direction: column; /* Stacks items vertically */
justify-content: center;
align-items: center; /* Centers items horizontally */
gap: 15px; /* Adds space between the dropdown and the canvas */
">
<div>
<select id="controllerSelect" style="padding: 5px; cursor: pointer;">
<option value=""></option>
<option value="desktop_querty_keyboard">Desktop Qwerty Keyboard</option>
</select>        
</div>
<canvas id="playground"
style="
width: 90vw; height: 85vh; /* Reduced height slightly to account for the dropdown */
background: #111111;
border: 1px solid #1c1c1c;
">
</canvas>
<script src="../hardwares/desktop_querty_keyboard/desktop_querty_keyboard.js"></script>
<script src="main.js"></script>
</body>
</html>
```

00_know_key_press\ui\main.js:
```js
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
```

dot_controll\hardwares\desktop_querty_keyboard\desktop_querty_keyboard.js:
```js
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
```

dot_controll\ui\DotConPlay.html:
```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dot Controller Playground</title>
</head>
<body style="
margin: 0;
width: 100vw; height: 100vh;
background: #050505;
display: flex;
flex-direction: column; /* Stacks items vertically */
justify-content: center;
align-items: center; /* Centers items horizontally */
gap: 15px; /* Adds space between the dropdown and the canvas */
">
<div>
<select id="controllerSelect" style="padding: 5px; cursor: pointer;">
<option value=""></option>
<option value="desktop_querty_keyboard">Desktop Qwerty Keyboard</option>
</select>        
</div>
<canvas id="playground"
style="
width: 90vw; height: 85vh; /* Reduced height slightly to account for the dropdown */
background: #111111;
border: 1px solid #1c1c1c;
">
</canvas>
<script src="../hardwares/desktop_querty_keyboard/desktop_querty_keyboard.js"></script>
<script src="main.js"></script>
</body>
</html>
```

dot_controll\ui\main.js:
```js
const canvas = document.getElementById("playground");
const ctx = canvas.getContext("2d");
const controllerSelect = document.getElementById("controllerSelect");
canvas.width = canvas.clientWidth;
canvas.height = canvas.clientHeight;
let dotX = canvas.width / 2;
let dotY = canvas.height / 2;
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
ctx.arc(dotX, dotY, 10, 0, Math.PI * 2);
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
// Handle vertical movement
if (movement.up) {
dotY -= 5;
moved = true;
}
if (movement.down) {
dotY += 5;
moved = true;
}
// Handle horizontal movement
if (movement.left) {
dotX -= 5;
moved = true;
}
if (movement.right) {
dotX += 5;
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
```