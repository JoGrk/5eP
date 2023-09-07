const loginEl = document.querySelector('#login'); 
const passwordEl = document.querySelector('#password'); 
const rulesEl = document.querySelector('#rules'); 
const buttonEl = document.querySelector('form button');
const resultEl = document.querySelector('#result')

console.log(buttonEl);


buttonEl.addEventListener('click',(e)=>{
    e.preventDefault()
    if(loginEl.value === "admin" && passwordEl.value === "admin"){
        if(rulesEl.checked){
            console.log(` ${loginEl.value} zaakceptował regulamin`)
            resultEl.textContent=` ${loginEl.value} zaakceptował regulamin`
        }
        else{
            console.log(` ${loginEl.value} nie zaakceptował regulaminu`)
            result=` ${loginEl.value} nie zaakceptował regulaminu`
        }
    }
    else{
        console.log("nie działa");
    }
    
})