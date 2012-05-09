http = require 'http'

exports.post = post ->
    
    request : http.createClient(80, 'server')
    
    request.request('POST', '', {'host': 'sever', 'content-type': 'application/json'})
    
    request.write(JSON.stringify(" "),encoding='utf8')
    
    request.end();
    
    request.on('response', do (response) -> 
        response.setEncoding('utf8')
        response.on('data', do (chunk) -> 
            return chunk
            ) 
        )