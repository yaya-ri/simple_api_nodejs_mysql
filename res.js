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