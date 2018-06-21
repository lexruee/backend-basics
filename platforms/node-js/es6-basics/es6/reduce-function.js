'use strict';

let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

let sum = arr.reduce((acc, x) => acc + x);
console.log(`sum: ${sum}`);

let mean = arr.reduce((acc, x) => acc + x/arr.length, 0);
console.log(`mean: ${mean}`);

let product = arr.reduce((acc, x) => acc * x);
console.log(`product: ${product}`);

let max = arr.reduce((y, x) => y > x ? y : x );
console.log(`max: ${max}`);

let min = arr.reduce((y, x) => x > y ? y : x );
console.log(`min: ${min}`);

let fibs = arr.reduce((acc, n) => { 
    let a = acc[acc.length-2], b = acc[acc.length-1];
    let f = a + b;
    acc.push(f);
    return acc;
}, [0, 1]);
let fib = fibs.reduce((x, y) => x > y ? x : y);
console.log(`fib: ${fib}`);
