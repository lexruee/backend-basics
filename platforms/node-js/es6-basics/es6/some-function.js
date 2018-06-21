'use strict';

let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

let hasEvenNums = arr.some(x => x % 2 === 0);
console.log(hasEvenNums);

let hasOddNums = arr.some(x => x % 2 !== 0);
console.log(hasOddNums);

