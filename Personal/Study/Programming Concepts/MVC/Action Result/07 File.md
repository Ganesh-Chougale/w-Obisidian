## `FileResult` / `File()`  
`FileResult` is an ActionResult used to send files to the browser.  
When a controller returns `File()` it tells MVC:  
“Send this file in the HTTP response — either display it or download it.”  
No `.cshtml` rendering involved.  


##### Under the HUD
You’ll usually return it via File() helper, but internally MVC uses:  
- `FileContentResult` → byte[]
- `FileStreamResult` → stream
- `FilePathResult` → file path
You rarely need to name these explicitly.  


#### 1. Simple Controller Example (File Download)  
`Controllers`/`HomeController.cs`  
```csharp
public class HomeController : Controller
{
    public ActionResult Index()
    {
        return View();
    }

    public ActionResult DownloadReport()
    {
        // physical file path
        string filePath = Server.MapPath("~/Files/Report.pdf");

        // content type (MIME type)
        string contentType = "application/pdf";

        // file name shown to user
        string downloadName = "MonthlyReport.pdf";

        return File(filePath, contentType, downloadName);
    }
}
```  
Breakdown:  
- `filePath` → where file exists on server
- `contentType` → tells browser what it is
- `downloadName` → name user sees

#### 2. View
`Views/Home/Index.cshtml`  
```csharp
<h2>Reports</h2>

<a href="/Home/DownloadReport">Download Report</a>
```  

#### What happens step-by-step
1. User opens /Home/Index
2. View renders
3. User clicks Download Report
4. Browser requests /Home/DownloadReport
5. MVC executes DownloadReport()
6. FileResult is returned
7. Browser downloads MonthlyReport.pdf
✔ No Razor  
✔ No Layout  
✔ No HTML rendering  

#### Another examples
1. File from byte[] (Very common)
```csharp
public ActionResult DownloadText()
{
    byte[] bytes = System.IO.File.ReadAllBytes(
        Server.MapPath("~/Files/sample.txt")
    );

    return File(bytes, "text/plain", "sample.txt");
}
```  
2. Display File in Browser (Inline)
If the browser supports it (PDF, image):
```csharp
return File(filePath, "application/pdf");
```  
No download name → browser tries to open inline.  

## 
- File from byte[] (Very common)
```csharp
public ActionResult DownloadText()
{
    byte[] bytes = System.IO.File.ReadAllBytes(
        Server.MapPath("~/Files/sample.txt")
    );

    return File(bytes, "text/plain", "sample.txt");
}
```  
- File from Stream (Large files)
```csharp
public ActionResult DownloadLargeFile()
{
    var stream = new FileStream(
        Server.MapPath("~/Files/big.zip"),
        FileMode.Open,
        FileAccess.Read
    );

    return File(stream, "application/zip", "big.zip");
}
```  
✔ Efficient  
✔ Doesn’t load entire file into memory  