'use strict';

function fib(n) {
    function iter(a, b, n) {
        if(n > 0) 
            return iter(b, a + b, n-1);
        return b;
    }
    return iter(0, 1, n);
}

console.log(fib(5));
