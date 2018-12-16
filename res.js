'use strict';

exports.classes = function (values, res) {
    var data = {
        'success': true,
        'message': ["OK"],
        'data': {
            'classes': values
        }
        //'value': values
    };
    res.json(data);
    res.end();
};

exports.class = function (values, res) {

    var data = {
        'success': true,
        'message': ["OK"],
        'data': {
            'class': values
        }
        //'value': values
    };
    res.json(data);
    res.end();
};

exports.error = function (values, res) {

    var data = {
        'success': false,
        'message': ["Error!!"],
        'detail': values
        //'value': values
    };
    res.json(data);
    res.end();
};

exports.login = function (values, res) {

    var data = {
        'success': false,
        'message': ["Error!!"],
        'data': {
            'access_token': value
        }
    };
    res.json(data);
    res.end();
};


exports.reg = function (values, res) {

    var data = {
        'success': true,
        'message': ["OK"],
        'data': {
            'register': value
        }
    };
    res.json(data);
    res.end();
};

exports.reg1 = function (values, res) {

    var data = {
        'success': true,
        'message': ["OK"],
        'data': {
            'registration': values
        }
        //'value': values
    };
    res.json(data);
    res.end();
};
