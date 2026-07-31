1. characher block
eg.
64x64 or 128x128
2 input box
[input box] x [input box]
inputing into any of input box will will replicate it into another 

2. Add states option
eg.
Idle, Walk, Run, Jump, Attack, Hurt, Death, etc.

give me tags button, each button will had 2 scetion. all area of button which will add its into states list, the cancel or cross or just type x to make code smaller. when i click on it it will remove the selected entry from states list
and give one button with name "Default" which will add all expected like idle, walk, run, jump

we can add custom states too
	2a: Single whole sheet
	2b: Split sheets (eg. create chunks of 3 state)

for each states i can choose the frame count. like for idle i choose 6 frames    

3. sprite sheet Mapper. which gives me 2 options. yaml format, json format
- this will create mapping of sheet
- preview || Download

4. Generate button

5. Output Area: (with copy clipboard icon)
	- this area give text output of everything
	- mobile first approach using bootstrap


```javascript
variableName {

	spriteName {
		spriteSheetWidth: 1000,
		spriteSheetHeight: 1000,
		characterBlock: 64
	}

	statesInfo{
		"Idle": {
			row: 0,
			frameCount: 5,
			position: { x: 0, y: 0 },
			width: 64,
			height: 64
		},
		"Walk": {
			row: 1,
			frameCount: 7,
			position: { x: 0, y: 64 },
			width: 64,
			height: 64
		}
	}
}
```  