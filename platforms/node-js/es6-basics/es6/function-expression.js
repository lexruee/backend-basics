(function() {
    'use strict';
    
    let counter = function() {
        let n = 0;
        return function() {
            console.log(++n);
        };
    };

    let count = counter();
    count();
    count();
    count();
    count();
    count();
})();
