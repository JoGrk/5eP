const numberAE=document.querySelector('#numberA')
const numberBE=document.querySelector('#numberB')
const plusE=document.querySelector('#plus')
const minusE=document.querySelector('#minus')
const multiE=document.querySelector('#multi')
const divE=document.querySelector('#div')
const expE=document.querySelector('#exp')
const resultE=document.querySelector('#result')

plusE.addEventListener('click',(event)=>{
    let a=Number(numberAE.value);
    let b=Number(numberBE.value)
    resultE.innerHTML=`Wynik: ${a+b}`

})

minusE.addEventListener('click', (event)=>{
    resultE.innerHTML=`Wynik: ${numberAE.value-numberBE.value}`
})

multiE.addEventListener('click', (event)=>{
    resultE.innerHTML=`Wynik: ${numberAE.value*numberBE.value}`
})

divE.addEventListener('click', (event)=>{
    resultE.innerHTML=`Wynik: ${numberAE.value/numberBE.value}`
})

expE.addEventListener('click', (event)=>{
    resultE.innerHTML=`Wynik: ${numberAE.value**numberBE.value}`
})