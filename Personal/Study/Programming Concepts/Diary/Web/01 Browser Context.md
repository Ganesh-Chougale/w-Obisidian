## 1. Browser Context  
- a browser contexy is environment which web pages runs. this context includes elements like browser window, tabs & frames.
- Each tab or window has its own seperate browser context.
- such as its own window object, DOM & javascript runtime.

#### Keypoints about browser context.  
##### I] `Global Object`: global object is a template of tools which user ofter need while surfing on web page/pages. it includes every possible & essential tool which is mandatory to web page. like -- window object which contains  
`alert()`  
`console`  
`fetch()`  
`document`  
`localStorage`  
`setTimeout()`  
```javascript
console.log(window === globalThis); // true (in browser)    
```  
##### II] `Isolation`: as we know each tab & each windows has its own browser context. but each browser context is isolated from each other which means javascript running on one tab usually cannot access or modify the content or script of other tab.  
Unless explicitly allowed via:  
`postMessage()`  
BroadcastChannel  
Shared backend communication  
Shared storage like localStorage (but still not direct memory access)  

##### III] `Same Origin Policy`: Browser enforce same-origin-policy which restrict script from making request or accessing context on different domains which enhances security.  
What is an Origin?  
```code
Protocol + Domain + Port
```  
An origin consists of:
| URL                                                    | Same Origin?               |
| ------------------------------------------------------ | -------------------------- |
| [https://example.com](https://example.com)             | Base                       |
| [https://example.com/about](https://example.com/about) | ✅ Yes                      |
| [http://example.com](http://example.com)               | ❌ No (different protocol)  |
| [https://api.example.com](https://api.example.com)     | ❌ No (different subdomain) |
| [https://example.com:3000](https://example.com:3000)   | ❌ No (different port)      |

if page has iframe, that iframe has its own DOM. main page DOM can access that iframe DOM only & only if they belongs to same origin (`Protocol + Domain + Port`).  