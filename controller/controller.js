'use strict';

var response = require('../res');
const uuidv4 = require('uuid/v4');
const models = require("../models");
const jwt = require('jsonwebtoken');
//const models = require("./models/index");

exports.readClasses = function (req, res) {
    models.Classes.findAll().then(data => {
        response.classes(data, res);
    })
};

exports.insertClasses = function (req, res) {
    // var class_name = req.body.class_name;
    // var class_time = req.body.class_time;
    // var room = req.body.room;

    models.Classes.create({
        'id': uuidv4(),
        'class_name': req.body.class_name,
        'class_time': req.body.class_time,
        'room': req.body.room,
    }).then(insert => {
        response.classes(insert, res);
    })
};

exports.insertStudent = function (req, res) {
    // var class_name = req.body.class_name;
    // var class_time = req.body.class_time;
    // var room = req.body.room;

    models.Students.create({
        'id': uuidv4(),
        'name': req.body.name,
        'phone': req.body.phone,
        'class_id': req.body.class_id,
    }).then(insert => {
        response.classes(insert, res);
    })
};

exports.readClassWithStudents = function (req, res) {
    var class_id = req.params.class_id;
    models.Classes.findAll(
        {
            include: [{
                'model': models.Students
            }],
            where: {
                'id': class_id
            }
        }
    ).then(data => {
        response.class(data, res);
    })
};

exports.index = function (req, res) {
    response.classes("test code!!", res);
};

exports.login = function (req, res) {
    var email = req.body.email;
    var password = req.body.password;

    var user = {
        'email': email,
        'password': password
    }

    models.User.count(
        {
            where: {
                'email': req.body.email,
                'password': req.body.password
            }
        }
    ).then(data => {
        console.log(data)
        if (data != 0) {
            jwt.sign({ user }, 'SuperSecRetKey', { expiresIn: 60 * 60 }, (err, token) => {
                res.json({ token });
            });
        } else {
            response.error("wrong email or password", res);
        }
        //response.error("wrong email or password", res);
    })


};

exports.register = function (req, res) {
    models.User.create({
        'first_name': req.body.first_name,
        'last_name': req.body.last_name,
        'email': req.body.email,
        'password': req.body.password,
    }).then(data => {
        response.reg1(data, res);
    })
};

