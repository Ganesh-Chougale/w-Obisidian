Months:
```
01. January
02. February
03. March
04. April
05. May
06. June
07. July
08. August
09. September
10. October
11. November
12. December
```

```
Date:
01
02
03
04
05
06
07
08
09
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
follows the leap year, 30 or 31 or 27 for february 
```

- last two letters of month + current date + first letters of month + current time (dynamic password checking in 24 hour mmhh format)  
= ry + 01 + j + 2611  
first 3 steps are easy but the dynamic password time is good in my eyes  
plus it will generate 3 passwords  
1. the most: ry01j2611  
2. pre 1 minute forgiveness: ry01j2511  
2. post 1 minute forgiveness: ry01j2711  

for month im using alias seeds
for grabbing value im using alias vine
for first 2 letters im using alias head
for last letter im using alias tail
### Module:  
```javascript
export function getMonthParts(date){

const seeds=[
"ryj","ryf","chm","ila","eym","enj",
"lyj","tsa","res","reo","ren","red"
]

const vine=seeds[date.getMonth()]

return{
head:vine.slice(0,2),
tail:vine.slice(2)
}

}

function pad(num){
return String(num).padStart(2,"0")
}

export function generatePassword(date){

const {tail,head}=getMonthParts(date)

const day=pad(date.getDate())
const hour=pad(date.getHours())
const minute=pad(date.getMinutes())

const mmhh=minute+hour

return head+day+tail+mmhh

}

export function generatePasswordSet(){

const now = new Date(
  new Date().toLocaleString("en-US", { timeZone: "Asia/Kolkata" })
)

const prev=new Date(now.getTime()-60000)
const next=new Date(now.getTime()+60000)

return{
current:generatePassword(now),
previous:generatePassword(prev),
next:generatePassword(next)
}

}
```  

console check
```javascript
function getMonthParts(date){

const seeds=[
"ryj","ryf","chm","ila","eym","enj",
"lyj","tsa","res","reo","ren","red"
]

const vine=seeds[date.getMonth()]

return{
head:vine.slice(0,2),
tail:vine.slice(2)
}

}

function pad(num){
return String(num).padStart(2,"0")
}

function generatePassword(date){

const {tail,head}=getMonthParts(date)

const day=pad(date.getDate())
const hour=pad(date.getHours())
const minute=pad(date.getMinutes())

const mmhh=minute+hour

return head+day+tail+mmhh

}

function generatePasswordSet(){

const now = new Date(
  new Date().toLocaleString("en-US", { timeZone: "Asia/Kolkata" })
)

const prev=new Date(now.getTime()-60000)
const next=new Date(now.getTime()+60000)

return{
current:generatePassword(now),
previous:generatePassword(prev),
next:generatePassword(next)
}

}

/* ===== TEST RUN ===== */

const result=generatePasswordSet()

console.log("Current Password :",result.current)
console.log("Previous Password:",result.previous)
console.log("Next Password    :",result.next)

console.log("\nCurrent Time:",new Date().toString())
```  