/* 
* message方法
*/
var propertiesReader = require('properties-reader');
var message = propertiesReader('config/message.conf');

exports.instance = function () {
 return message.path();
}

exports.get = function (key) {
 return message.get(key);
}

exports.set = function (key, value) {
 return message.set(key, value);
}