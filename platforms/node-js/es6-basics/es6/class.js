'use strict';

class Person {
    static getNextId() {
        return ++Person.nums;
    }
    constructor(firstName, lastName, age) {
        this._firstName = firstName;
        this._lastName = lastName;
        this._age = age;
        this._id = Person.getNextId();
    }
    get id() {
        return this._id;
    }
    set firstName(value) {
        this._firstName = value;
    }
    get firstName() {
        return this._firstName;
    }
    set lastName(value) {
        this._lastName = value;
    }
    get lastName() {
        return this._lastName;
    }
    set age(value) {
        this._age = value;
    }
    get age() {
        return this._age;
    }
    toString() {
        return `{id: ${this.id}, firstName: ${this.firstName}, lastName: ${this.lastName}, age: ${this.age}}`;
    }
}
Person.nums = 0;

let p1 = new Person('Mike', 'Peterson', 30), p2 = new Person('Joe', 'Lee', 29);
console.log(p1.toString());
console.log(p2.toString());


