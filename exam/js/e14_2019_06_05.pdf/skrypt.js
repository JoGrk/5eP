const nameE = document.querySelector('#name')
const surnameE = document.querySelector('#surname')
const emailE = document.querySelector('#email')
const serviceE = document.querySelector('#service')
const checkE = document.querySelector('#check')
const resultE =document.querySelector('#result')

send.addEventListener('click',(e)=>{
    e.preventDefault();
    if (!checkE.checked ){
        resultE.innerHTML = 'Musisz zapoznac sie z regulaminem';
    }else{
        let name = nameE.value.toUpperCase() + ' ' + surnameE.value.toUpperCase();

        resultE.innerHTML = name + '</br>' + 'Treść Twojej sprawy: '+ serviceE.value;
        resultE.innerHTML += "<br> Na Podany e-mail zostanie wysłana oferta"
        
        

    }
    
})
