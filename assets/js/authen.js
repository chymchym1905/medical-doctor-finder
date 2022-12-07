const form = document.getElementById("form");
const user = document.getElementById("username");
const password = document.getElementById("password");
const password2 = document.getElementById("password-repeat");

form.addEventListener('submit', e => {
    
    if(validateInputs()==0){
        e.preventDefault();
        alert("Password does not match");
    }
});

const validateInputs = () => {
    uservalue = user.value.trim();
    passvalue = password.value.trim();
    passvalue2 = password2.value.trim();

    if(passvalue!=passvalue2){
        return 0;
    }else{
        return 1;
    }
}