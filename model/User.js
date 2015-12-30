var MySQLUtil = require('../utils/mysql');

//用户登录
exports.loginByEmail = function (nickname, password, callback) {
  MySQLUtil.query('select id, nickname, email, password from smart_user_info where nickname=?', [nickname],
    function (rows, fields) {
      console.log('rows', JSON.stringify(rows));
      if(rows && rows.length>0){
        var row = rows[0];
        if(row.password == password){// 登陆成功
          callback(message.login.success, row);
        }else{// 密码错误
          callback(message.login.pwd.error, null);
        }
      }else{
        callback(message.login.none, null);
      }
    });
};

//判断用户名是否已存在
exports.isUser = function (nickname, callback) {
  MySQLUtil.query('select id, nickname from smart_user_info where nickname=?', [nickname],
    function (rows, fields) {
      console.log('rows', JSON.stringify(rows));
      var row = rows[0];
      if(rows && rows.length>0){
        callback(message.login.success, row);        
      }else{
        callback(message.login.none, null);
      }
    });
};

//用户注册
exports.insert = function (nickname, email, password, callback) {
  MySQLUtil.query('insert into smart_user_info (nickname,email,password) values (?,?,?)',[nickname,email,password], function (rows, fields) {
      console.log('rows', JSON.stringify(rows));
      if(rows){
        callback(message.login.success, rows);        
      }else{
        callback(message.login.none, null);
      }  
  });
};