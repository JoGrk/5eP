const submit = document.querySelector('#submit');
const hsl = document.querySelector('#hsl');
const tdmain = document.querySelector('#tdmain');
const td1 = document.querySelector('#td1');
const td2 = document.querySelector('#td2');
const td3 = document.querySelector('#td3');
const td4 = document.querySelector('#td4');

submit.addEventListener('click',()=>{
    let h=hsl.value;
    console.dir(tdmain);
    tdmain.style.backgroundColor= `hsl(${h}, 100%, 50%)`
    td1.style.backgroundColor= `hsl(${h}, 80%, 50%)`
    td2.style.backgroundColor= `hsl(${h}, 60%, 50%)`
    td3.style.backgroundColor= `hsl(${h}, 40%, 50%)`
    td4.style.backgroundColor= `hsl(${h}, 20%, 50%)`
})