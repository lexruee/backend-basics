'use strict';

let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

let even = arr.filter(x => x % 2 === 0);
console.log(even);

let odd = arr.filter(x => x % 2 !== 0);
console.log(odd);
