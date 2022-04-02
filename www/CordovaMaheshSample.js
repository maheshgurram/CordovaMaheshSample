var exec = require('cordova/exec');

exports.sum = function (arg0, success, error) {
    exec(success, error, 'Sum', 'add', arg0);
};
