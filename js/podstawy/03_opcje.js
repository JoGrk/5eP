const mezczyznaE = document.querySelector('#mezczyzna');
const kobietaE = document.querySelector('#kobieta');
const buttonE = document.querySelector('button');
const wynikE = document.querySelector('#wynik');


buttonE.addEventListener('click',(event)=>{
    event.preventDefault();
    console.log(kobietaE)
    // if(kobietaE.checked){
    //     wynikE.textContent="kobieta"
    // }
    // else{
    //     wynikE.textContent="mezczyzna"
    // }
    if(kobietaE.checked){
        wynikE.textContent=kobietaE.value
    }
    else{
        wynikE.textContent=mezczyznaE.value
    }

    wynikE.innerHTML+='<br>'+document.querySelector('input[name="grupa"]:checked').value
    
})
