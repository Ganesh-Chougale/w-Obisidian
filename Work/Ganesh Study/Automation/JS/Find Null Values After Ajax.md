- if we used a left join in business LINQ there are possiblity to have null values to certain keys in json result. if we want to see those, paste this in ajax success call.  
```js
console.log("AJAX Response:", data);

function findNulls(obj, path = "") {
    if (obj === null) {
        console.log("NULL:", path);
        return;
    }

    if (Array.isArray(obj)) {
        obj.forEach((item, index) => {
            findNulls(item, `${path}[${index}]`);
        });
        return;
    }

    if (typeof obj === "object") {
        Object.keys(obj).forEach(key => {
            const currentPath = path ? `${path}.${key}` : key;
            findNulls(obj[key], currentPath);
        });
    }
}

findNulls(data);
```  

## in browser
```csharp
(() => {
    console.log("========== AJAX NULL CHECK ==========");

    if (typeof data === "undefined") {
        console.error("❌ 'data' variable is not available in this console scope.");
        return;
    }

    console.log("Full AJAX data:", data);

    function findNulls(obj, path = "data") {
        if (obj === null) {
            console.warn("⚠️ NULL:", path);
            return;
        }

        if (Array.isArray(obj)) {
            obj.forEach((item, index) => {
                findNulls(item, `${path}[${index}]`);
            });
            return;
        }

        if (typeof obj === "object") {
            Object.keys(obj).forEach(key => {
                findNulls(obj[key], `${path}.${key}`);
            });
        }
    }

    findNulls(data);

    console.log("========== NULL CHECK COMPLETE ==========");
})();
```  