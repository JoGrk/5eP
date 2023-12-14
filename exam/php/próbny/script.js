const buttonE = document.querySelector('button');
const emailE = document.querySelector('#email');
const sugestions = document.querySelector('#sugestions');
const resultE= document.querySelector('#result');
const one = document.querySelector('#one');
const two = document.querySelector('#two');
const three = document.querySelector('#three');
const four = document.querySelector('#four');
const five = document.querySelector('#five');

buttonE.addEventListener('click',(e)=>{
    resultE.innerHTML=`Dziękujemy ${emailE.value} za wyrażenie opinii`;
    
    if(one.checked){
        resultE.style.color='Red';
    }
    else if(two.checked){
        resultE.style.color='Red';
    }
    else if(three.checked){
        resultE.style.color='Green';
    }
    else if(four.checked){
        resultE.style.color='Green';
    }
    else if(five.checked){
        resultE.style.color='Green';
    }
})

