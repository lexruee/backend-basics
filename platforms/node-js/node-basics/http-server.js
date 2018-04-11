#!/usr/bin/env node

var http = require('http');

var server = http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello World\n');
});
console.log('Server running at http://127.0.0.1:8080/');
server.listen(8080, '0.0.0.0');
