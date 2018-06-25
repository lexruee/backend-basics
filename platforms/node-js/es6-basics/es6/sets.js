'use strict';

let set1 = new Set();
set1.add('a');
set1.add('b');
set1.add('c');

set1.forEach(e => {
    console.log(`${e}`);
});


let set2 = new Set();
set2.add(1);
set2.add(2);
set2.add(3);


for(let e of set2)
    console.log(`${e}`);


