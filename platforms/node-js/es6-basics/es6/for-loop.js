'use strict';

let arr = [0, 1, 2, 3, 4];

console.log(arr);

for(let i=0; i < arr.length; i++)
    console.log(arr[i]);

for(let item of arr)
    console.log(item);

for(let i in arr)
    console.log(arr[i]);
