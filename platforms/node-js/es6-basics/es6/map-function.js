'use strict';

let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

let squares = arr.map(x => x**2);
console.log(squares);

let squares2 = arr.map(function(x) { return x**2; });
console.log(squares2);
