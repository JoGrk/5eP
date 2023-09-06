// łapanie elementów
const inputA = document.querySelector('#a')
const inputB = document.querySelector('#b')
const button = document.querySelector('button')
const resultElement = document.querySelector('#result')

//nasłuchiwanie zdarzeń
button.addEventListener('click', (event) => {
    event.preventDefault()
    // odczytuje dane z formularza
    let a = Number(inputA.value)
    let b = Number(inputB.value)
    
    resultElement.textContent = `Suma liczb ${a} i ${b} wynosi ${a+b}`
})