const send = document.querySelector('#send')

const Piling = document.querySelector('#Piling')
const Maska = document.querySelector('#Maska')
const Masaz = document.querySelector('#Masaz')
const Regulacja = document.querySelector('#Regulacja')


const result = document.querySelector('#result')

send.addEventListener('click', (e)=>{
    let suma = 0;
    if(Piling.checked){
        suma += parseInt(Piling.value)
    }
    if(Maska.checked){
        suma += parseInt(Maska.value)
    }
    if(Masaz.checked){
        suma += parseInt(Masaz.value)
    }
    if(Regulacja.checked){
        suma += parseInt(Piling.value)
    }
    result.innerHTML = `Cena zabiegów: ${suma}`
    
})


