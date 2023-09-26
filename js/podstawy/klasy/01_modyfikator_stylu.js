const fontChanger = document.querySelector ("#font-changer")
const right = document.querySelector('#right')
const fontSize = document.querySelector('#font-size')
const h1=document.querySelector('#right h1')
const themeList= document.querySelector('#theme-list')
const body = document.querySelector('#body')

themeList.addEventListener('click', (event)=>{
    const theme = document.querySelector('input[name="theme"]:checked')
    body.classList.remove('red')
    body.classList.remove('green')
    body.classList.remove('blue')
    body.classList.add(`${theme.value}`)
})

fontChanger.addEventListener('change',(event)=>{
    if(fontChanger.checked){
        right.classList.add('font-courier')
    }
    else{
        right.classList.remove('font-courier')
    }
})


fontSize.addEventListener('blur', (event)=>{
    h1.style.fontSize=`${fontSize.value}%`

})