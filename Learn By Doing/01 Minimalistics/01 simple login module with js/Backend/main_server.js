const HTTP = require('http');
const allowCors = require("./sub_scripts/cors_platform");

let portNumber = 3000;

function urlBuilder(num){
    let urlString = `Enter this url at browser: http://localhost:${num}`
    return urlString;
}

const server = HTTP.createServer( (request, response) => {

    allowCors(response);
    
    console.log(request.method); // GET or POST
    console.log(request.url); // router value like /login
    // response.write("Hello from backend");

    if(request.url == "/login"){
        response.write("its a login url");
    }else if(request.url == "/register"){
        response.write("its a register url");
    }else{
        response.write("invalid url");
    }

    if(request.method == "GET" && request.url == "/login"){
        response.write("Login page requested");
    }else if(request.method == "POST" && request.url == "/login"){
        response.write("Login data received");
    }


    response.end();
})

server.listen(portNumber, ()=>{
    console.log(urlBuilder(portNumber));
});