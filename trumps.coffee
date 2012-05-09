exports.process = process = (req, res) ->
    res.writeHead 200, 'Content-Type': 'application/json'
    res.end (new Trump "Ferrari")
    
class Trump

  constructor: (@name) ->
      
  toJSON: ->
    "name: " + @name