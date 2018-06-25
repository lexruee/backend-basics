'use strict';

class FibSequence {
    [Symbol.iterator]() {
        let a = 0, b = 1;
        return {
            next() {
                let rval = { value: b, done: false };
                b += a;
                a = rval.value;
                return rval;
            }
        };
    }
}

let fib = new FibSequence();

let i = 0;
for (let f of fib) {
    console.log(f);
    if (++i == 10) break;
}
