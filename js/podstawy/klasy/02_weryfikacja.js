const button=document.querySelector('button');
const firstNameE=document.querySelector('#first-name');
const surnameE=document.querySelector('#surname');
const ageE=document.querySelector('#age');

button.addEventListener('click',(e)=>{
    e.preventDefault();
    const trueE = true
    if(firstNameE.value.length < 3){
        firstNameE.classList.add('red');
        firstNameE.focus();
        firstNameE.placeholder = 'Wpisz imię';
        trueE = false
    }
    if(surnameE.value.length < 3){
        surnameE.classList.add('red');
        surnameE.focus();
        surnameE.placeholder = 'Wpisz nazwisko';
        trueE = false
    }
    if(ageE.value < 0 || ageE.value > 120){
        ageE.classList.add('red');
        ageE.focus();
        ageE.placeholder = 'Wpisz Poprawny Wiek';
        trueE = false
    }
    if (trueE){
        alert(`Witaj: ${firstNameE.value} ${surnameE.value}`)
    }
    
})

firstNameE.addEventListener('blur',(event)=>{
    if(firstNameE.value.length>=3){
        firstNameE.classList.remove('red')
    }
})

surnameE.addEventListener('blur',(event)=>{
    if(surnameE.value.length>=3){
        surnameE.classList.remove('red')
    }
})

ageE.addEventListener('change',(event)=>{
    if(ageE.value>=0 && ageE.value<=120){
        ageE.classList.remove('red')
    }
        
    
})