const indigoE = document.querySelector('#indigo');
const steelblueE = document.querySelector('#steelblue');
const oliveE = document.querySelector('#olive');
const fontColorE = document.querySelector('#font-color');
const rightE=document.querySelector('#right');
const sizeE=document.querySelector('#size');
const borderE = document.querySelector('#border');
const pictureE = document.querySelector('#picture');
const listE = document.querySelector('#right ul');


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
sizeE.addEventListener('blur',(e)=>{
    rightE.style.fontSize=`${sizeE.value}%`
})

borderE.addEventListener('change',(e)=>{
    if(borderE.checked){
        pictureE.style.border='solid white 1px';
    }else{
        pictureE.style.border='none';
    }
});

radio_div.addEventListener('change', (event)=>{
    const nameRadio = document.querySelector(`input[name='bullet']:checked`);
    listE.style.listStyleType = nameRadio.value;
    
})