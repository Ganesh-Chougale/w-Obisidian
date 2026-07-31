// 0. Glogal variable part (if needed)
const BTN_REGISTER_SHOW = document.getElementById("uRegister");
const BTN_LOGIN_SHOW = document.getElementById("uLogin");

const REGISTER_AREA = document.getElementById("registerArea");
const LOGIN_AREA = document.getElementById("loginArea");

// 1. Show Register OR Login Part
BTN_REGISTER_SHOW.addEventListener("click", showRegisterArea);
function showRegisterArea()
{
    LOGIN_AREA.style.display = "none";
    REGISTER_AREA.style.display = "block";
}

BTN_LOGIN_SHOW.addEventListener('click', showLoginArea);
function showLoginArea()
{
    REGISTER_AREA.style.display = "none";
    LOGIN_AREA.style.display = "block";
}

// 2. Register User Part
const BTN_REGISTER_SUMBIT = document.getElementById("regTest");

BTN_REGISTER_SUMBIT.addEventListener("click", handleRegisterSubmission);

function handleRegisterSubmission(){

    let regFullName = document.getElementById("rFullName");
    let regEmail = document.getElementById("rEmail");
    let regPassword = document.getElementById("rPassword");
    let regConfirmPassword = document.getElementById("rConfirmPassword");

    var registrationObj = {
        FullName: regFullName.value,
        Email: regEmail.value,
        Password: regPassword.value,
        ConfirmPassword: regConfirmPassword.value
    }

    // console.log(registrationObj);

    // fetch("http://localhost:3000/register")

}

// 3. Login User Part
const BTN_LOGIN_SUMBIT = document.getElementById("loginTest");

BTN_LOGIN_SUMBIT.addEventListener("click", handleLoginSubmission);

function handleLoginSubmission(){

    let logEmail = document.getElementById("lEmail");
    let logPassword = document.getElementById("lPassword");

    var loginObj = {
        Email: logEmail.value,
        Password: logPassword.value
    }

    // console.log(loginObj);
    let url = 'http://localhost:3000/login';
    fetch(url, 
            {
                method: "POST", 
                headers: {'Content-Type': 'application/json'},
                body: JSON.stringify(loginObj)
            }
        )
    .then(response  => {
        if(!response.ok){
            throw new Error(`HTTP error: ${response.status}`);
        }
        return response.text();
    })
    .then(result => {
        console.log(`Sucess: ${result}`);
    })
    .catch(error => {
        console.error(`Error posting data: ${error}`);
    });

}