const indigoE = document.querySelector('#indigo');
const steelblueE = document.querySelector('#steelblue');
const oliveE = document.querySelector('#olive');
const fontColorE = document.querySelector('#font-color');
const rightE=document.querySelector('#right');

indigoE.addEventListener('click', (e)=>{
    rightE.style.backgroundColor='indigo';
});
steelblueE.addEventListener('click', (e)=>{
    rightE.style.backgroundColor='steelblue';
});
oliveE.addEventListener('click', (e)=>{
    rightE.style.backgroundColor='olive';
});
fontColorE.addEventListener('change', (e)=>{
    rightE.style.color=fontColorE.value
})



