## HttpStatusCodeResult

`HttpStatusCodeResult` is an ActionResult used to return only an HTTP status code (and optional message) to the client.  
It tells the browser:  
“Here is the result of your request — no view, no data, just a status.”  


- Common HTTP Status Codes (quick refresher)
| Code | Meaning               |
| ---- | --------------------- |
| 200  | OK                    |
| 201  | Created               |
| 400  | Bad Request           |
| 401  | Unauthorized          |
| 403  | Forbidden             |
| 404  | Not Found             |
| 500  | Internal Server Error |

### 1. Simple Controller Example
`Controllers/HomeController.cs`  
```csharp
public class HomeController : Controller
{
    public ActionResult CheckUser(int? id)
    {
        if (id == null)
        {
            return new HttpStatusCodeResult(400, "User Id is required");
        }

        var user = db.Users.Find(id);

        if (user == null)
        {
            return new HttpStatusCodeResult(404, "User not found");
        }

        return new HttpStatusCodeResult(200, "User exists");
    }
}
```  
What happens  
| Condition      | Response            |
| -------------- | ------------------- |
| `id == null`   | **400 Bad Request** |
| User not found | **404 Not Found**   |
| User exists    | **200 OK**          |

### MVC shortcuts (preferred)
MVC provides helper methods so you rarely write new HttpStatusCodeResult.
- 404 shortcut
```csharp
return HttpNotFound("User not found");
```  
- 401 shortcut
```csharp
return new HttpUnauthorizedResult();
```  