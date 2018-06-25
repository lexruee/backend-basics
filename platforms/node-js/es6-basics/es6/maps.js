'use strict';

let map1 = new Map();
map1.set('a', 1);
map1.set('b', 2);
map1.set('c', 3);

let map2 = new Map([['a', 1], ['b', 2], ['c', 3]]);

for(let [k, v] of map1.entries())
    console.log(`${k}: ${v}`);

for(let k of map1.keys()) {
    let v = map1.get(k);
    console.log(`${k}: ${v}`);
}

map2.forEach((k, v) => {
    console.log(`${k}: ${v}`);
});
