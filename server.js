var express = require('express'),
    app = express(),
    port = process.env.PORT || 3000,
    bodyParser = require('body-parser'),
    controller = require('./controller/controller'),
    jwt = require('jsonwebtoken'),
    routes = require('./routes');
;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// var routes = require('./routes');
// routes(app);

app.use(routes);

app.listen(port);
console.log('simple RESTful API server started on: ' + port);