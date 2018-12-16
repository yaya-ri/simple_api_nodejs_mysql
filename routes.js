'use strict';
const jwt = require('./middleware/auth');
var express = require('express');
var routes = express();
var controller = require('../simpleAPI/controller/controller');

// module.exports = function (app) {
//     var controller = require('../simpleAPI/controller/controller');

//     app.route('/').get(controller.index);
//     app.route('/classes').get(controller.readClasses);
//     app.route('/classes').post(controller.insertClasse);
//     app.route('/students/:class_id').get(controller.readClassWithStudents);
//     app.route('/students').post(controller.insertStudent);
//     app.route('/login').post(controller.login);
// };

routes.get('/', controller.index);
routes.post('/login', controller.login);
routes.post('/Register', controller.register);

routes.get('/classes', jwt, controller.readClasses);
routes.post('/classes', jwt, controller.insertClasses);
routes.get('/students/:class_id', jwt, controller.readClassWithStudents);
routes.post('/students', jwt, controller.insertStudent);

module.exports = routes;