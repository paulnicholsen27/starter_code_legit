// 'use strict'

let ann = {
    firstName: "Ann",
    lastName: "Duong",
    greet: greet
}


let paul = {
    firstName: "Paul",
    lastName: "Nicholsen",
    greet: greet
}

function greet() {
    console.log(`${this.firstName} says hi`)
    let setNewProperty = () => {
         this.newProperty = "foobar"
    }
    setNewProperty()
}

function getAnn() {
    return document.getElementById("ann")
}

function getPaul() {
    return document.getElementById("paul")
}

getAnn().addEventListener('click', greet)
getPaul().addEventListener('click', greet)