'use strict';

var response = require('../res');
const uuidv4 = require('uuid/v4');
const models = require("../models");
//const models = require("./models/index");

exports.readClasses = function (req, res) {
    models.Classes.findAll().then(data => {
        response.classes(data, res);
    })
};

exports.insertClasse = function (req, res) {
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
    response.classes("halo node js restful!!", res);
};