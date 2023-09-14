const button=document.querySelector('button');
const resultE = document.querySelector('#result')
const bodyE = document.querySelector('body')
button.addEventListener('click',(event)=>{
    event.preventDefault()
    console.log('działa')
    const colorE = document.querySelector('input[name="theme"]:checked')
    resultE.innerHTML=`Wybrany kolor to ${colorE.value}`
    bodyE.style.color = colorE.value; 
});

