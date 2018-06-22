'use strict';

class Vehicle {
    constructor(brand, model) {
        this._brand =  brand;
        this._model = model;
    }
    set model(value) {
        this._model = value;
    }
    get model() {
        return this._model;
    }
    set brand(value) {
        this._brand = value;
    }
    get brand() {
        return this._brand;
    }
}

class Car extends Vehicle {
}

class Motorcycle extends Vehicle {
}


let c = new Car('BMW', 'M3');
let m = new Motorcycle('Honda', 'CBR600');

console.log(c instanceof Vehicle);
console.log(m instanceof Vehicle);
console.log(c);
console.log(m);
