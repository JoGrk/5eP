function change(){
    let figure=document.getElementById('figure').value
    const R=document.getElementById('R').value
    const G=document.getElementById('G').value
    const B=document.getElementById('B').value
    const color=document.getElementById('color')
    figure = parseInt(figure)
    if(figure == 1){
        order.innerHTML=`Twoje zamowienie to cukierek: cytryna`;
    }
    else if(figure == 2){
        order.innerHTML=`Twoje zamowienie to cukierek: liść`;
    }
    else if(figure == 3){
        order.innerHTML=`Twoje zamowienie to cukierek: banan`;
    }
    else{
        order.innerHTML=`Twoje zamowienie to cukierek: inny`;
    }
    // switch(figure){
    //     case 1: order.innerHTML=`Twoje zamowienie to cukierek: cytryna`;
    //     break
    //     case 2: order.innerHTML=`Twoje zamowienie to cukierek: liść`;
    //     break
    //     case 3: order.innerHTML=`Twoje zamowienie to cukierek: banan`;
    //     break
    //     default : order.innerHTML=`Twoje zamowienie to cukierek: inny`;
        
    // }

    color.style.backgroundColor= `rgb(${R},${G},${B})`;
}