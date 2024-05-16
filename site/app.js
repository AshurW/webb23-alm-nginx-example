const counterElement = document.getElementById('counter')

let counter = 0

function incrementCounter() {
    counter++
    counterElement.innerText = counter
}