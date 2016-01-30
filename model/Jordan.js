//https://github.com/felixge/node-mysql
var MySQLUtil = require('../utils/mysql');
exports.dele = function (callback) {
  MySQLUtil.query('TRUNCATE TABLE jordan', [], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    }
  });
};

exports.query = function (callback) {
  MySQLUtil.query('select id, href, picsrc, price, name from jordan', [], function (rows, fields) {
    console.log('rows', JSON.stringify(rows));
    callback(rows);
  });
};

exports.detail = function (id, callback) {
  MySQLUtil.query('select id, href, picsrc, price, name from jordan where id=?',[id], function (rows, fields) {
    console.log('rows', JSON.stringify(rows));
    callback(rows.length>0 ? rows[0]:{});
  });
};

exports.insert = function (href, picsrc, price, name, callback) {
  MySQLUtil.query('INSERT INTO jordan (href, picsrc, price, name) values (?,?,?,?)',[href, picsrc, price, name], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    } 
  });
};