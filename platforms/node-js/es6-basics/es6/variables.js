'use strict';

const HELLO_WORLD = 'Hello World!';

let a = 1;
var b = 2;

{
    let a = 2;
    var b = 3;
    console.log(a);
    console.log(b);
}

console.log(a);
console.log(b);
console.log(HELLO_WORLD);
