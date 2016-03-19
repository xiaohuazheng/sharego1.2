var MySQLUtil = require('../utils/mysql');

//用户登录
exports.loginByEmail = function (nickname, password, callback) {
  MySQLUtil.query('select id, nickname, email, password from user_info where nickname=?', [nickname],
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
  MySQLUtil.query('select id, nickname from user_info where nickname=?', [nickname],
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
  MySQLUtil.query('insert into user_info (nickname,email,password) values (?,?,?)',[nickname,email,password], function (rows, fields) {
      console.log('rows', JSON.stringify(rows));
      if(rows){
        callback(message.login.success, rows);        
      }else{
        callback(message.login.none, null);
      }  
  });
};

//判断管理员
exports.queryUser = function (nickname, callback) {
  MySQLUtil.query('select status from user_info where nickname=?', [nickname], function (rows, fields) {
    callback(rows);
  });
};

//管理员&&user
exports.adminuser = function (status, callback) {
  MySQLUtil.query('select nickname, email from user_info where status=?', [status], function (rows, fields) {
    callback(rows);
  });
};

//删除管理员转为普通用户
exports.updateadmin = function (nickname, callback) {
  MySQLUtil.query('update user_info set status = 0 where nickname=?', [nickname], function (rows, fields) {
    callback(rows);
  });
};

//删除用户
exports.deleuser = function (nickname, callback) {
  MySQLUtil.query('delete from user_info where nickname=?', [nickname], function (rows, fields) {
    callback(rows);
  });
};

//设置用户为管理员
exports.updateuser = function (nickname, callback) {
  MySQLUtil.query('update user_info set status = 1 where nickname=?', [nickname], function (rows, fields) {
    callback(rows);
  });
};