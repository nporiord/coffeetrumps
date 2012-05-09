http = require 'http'
console = require 'console'
trumps = require './trumps'

module.exports = http.createServer((req, res) ->
 trump = trumps.process 'Niall'
 console.log(JSON.stringify(trump))
 res.writeHead 200, 'Content-Type': 'text/plain'
 res.end 'Hello World\n'
)