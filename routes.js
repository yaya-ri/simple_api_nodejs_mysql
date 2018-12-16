'use strict';

module.exports = function (app) {
    var controller = require('../simpleAPI/controller/controller');

    app.route('/').get(controller.index);
    app.route('/classes').get(controller.readClasses);
    app.route('/classes').post(controller.insertClasse);
    app.route('/students/:class_id').get(controller.readClassWithStudents);
    app.route('/students').post(controller.insertStudent);

    // app.route('/user/:user_id').get(todoList.findUser);
    // app.route('/user/insert').post(todoList.createUser);
    // app.route('/user/:user_id').put(todoList.updateUser);
    // app.route('/user/:user_id').delete(todoList.deleteUser);

    // app.route('/address/:address_id').get(todoList.findUserAddress);
};