const imgMain = document.querySelector('main > img');
const imgList = document.querySelectorAll('#lewy img');
const icon = document.querySelector('p img')

function swap(targetSrc,sourceRefence) {
    sourceRefence.src = targetSrc;
}

imgList.forEach(imgDiv=>{
    imgDiv.addEventListener('click', ()=>swap(imgDiv.src, imgMain))
})

let iconState = false;
icon.addEventListener('click',()=>{
    iconState=!iconState;

    const src = iconState ? 'icon-off.png' : 'icon-on.png'
    swap(`pliki/${src}`, icon)
})