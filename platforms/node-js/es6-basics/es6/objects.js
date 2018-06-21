'use strict';

let p = {
    firstName: 'Mike',
    lastName: 'Peterson',

    getFirstName() {
        return this.firstName;
    },

    getLastName() {
        return this.lastName;
    },

    toString: function() {
        return `${this.firstName} ${this.lastName}`;
    }
};


console.log(p.toString());
console.log(p.getFirstName());
console.log(p.getLastName());
