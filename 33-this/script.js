console.log(self)

document.addEventListener("DOMContentLoaded", () => {
    console.log('DOM loaded')
    let button = document.querySelector('button')
    button.addEventListener('click', () => console.log('clicked'))
})

function greet() {
    debugger
    console.log(`${this.firstName} says hi`)
}

let paul = {
    firstName: "Paul",
    lastName: "Nicholsen"
}

let ann = {
    firstName: "Ann",
    lastName: "Duong"
}

