request = require "request"
express = require "express"
cors = require "cors"
app = express()
app.use cors()
app.get "/", (req, res) ->
  request req.query.url, (err, resp, body) ->
    res.send body
app.listen process.env.PORT or 3005
