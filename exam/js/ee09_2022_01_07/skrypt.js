const imgMain = document.querySelector('main img');
const imgList = document.querySelectorAll('#lewy img');
const icon = document.querySelector('p img')


for (let imgDiv of imgList) {
    imgDiv.addEventListener('click', ()=> {
        imgMain.src = imgDiv.src
    })
}

let iconState = false;
icon.addEventListener('click',()=>{
    if (iconState){
        icon.src= 'pliki/icon-off.png'
    }
    else {
        icon.src= 'pliki/icon-on.png'
    }
    iconState=!iconState;

})