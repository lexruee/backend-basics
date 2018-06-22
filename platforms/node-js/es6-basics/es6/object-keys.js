'use strict';

let p = {
    firstName: 'Mike',
    lastName: 'Peterson',
};


Object.keys(p).forEach(key => console.log(`${key}: ${p[key]}`));


