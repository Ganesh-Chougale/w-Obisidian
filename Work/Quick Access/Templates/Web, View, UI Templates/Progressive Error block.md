1.
```js
success: function (response, status, xhr) {
    $("#mainContent").html(response);
},
error: function (err) {
    $("#mainContent").html(err);
}
```  
2.
```js
success: function (response, status, xhr) {

},
error: function (xhr) {
    alert("Error: " + xhr.status + ": " + xhr.statusText);
}
```  
3.
```js
success: function (response, status, xhr) {

},
error: function (xhr, status, error) {
    console.dir(xhr);

    var win = window.open("", "_blank");
    win.document.open();
    win.document.write(xhr.responseText);
    win.document.close();

    alert("Error : " + xhr.status + " - " + error);
}
```  
4.
```js
error: function (xhr, status, error) {
    console.dir(xhr);

    // 1. Define unique IDs to prevent DOM duplicates
    var modalId = "dynamic_error_modal";
    var frameId = "dynamic_error_frame";

    // 2. Clean up any previous error modal instance if it exists
    $("#" + modalId).remove();

    // 3. Construct a fully self-contained HTML overlay string
    var modalHtml = 
        '<div id="' + modalId + '" style="position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0,0,0,0.8); z-index:999999; padding:20px; box-sizing:border-box;">' +
            '<div style="background:#fff; width:100%; height:100%; display:flex; flex-direction:column; border-radius:6px; overflow:hidden; border:4px solid #dc3545; box-shadow:0 10px 30px rgba(0,0,0,0.5); font-family:sans-serif;">' +
                '<div style="background:#dc3545; color:#fff; padding:12px 20px; display:flex; justify-content:space-between; align-items:center; font-size:16px; font-weight:bold;">' +
                    '<span>Backend Error: ' + xhr.status + ' (' + error + ')</span>' +
                    '<button onclick="document.getElementById(\'' + modalId + '\').remove()" style="background:none; border:none; color:#fff; font-size:28px; cursor:pointer; line-height:1; padding:0; margin:0;">&times;</button>' +
                '</div>' +
                '<iframe id="' + frameId + '" style="width:100%; flex-grow:1; border:none; background:#fff;"></iframe>' +
            '</div>' +
        '</div>';

    // 4. Inject the modal directly into the body
    $('body').append(modalHtml);

    // 5. Safely write the raw Razor Exception HTML inside the iframe
    var iframe = document.getElementById(frameId);
    var iframeDoc = iframe.contentDocument || iframe.contentWindow.document;
    
    iframeDoc.open();
    iframeDoc.write(xhr.responseText || "<h1>No server details returned.</h1>");
    iframeDoc.close();
}

```  