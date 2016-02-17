var MySQLUtil = require('../utils/mysql');



//乔丹数据库
exports.delejordan = function (callback) {
  MySQLUtil.query('TRUNCATE TABLE jordan', [], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    }
  });
};

exports.queryjordan = function (callback) {
  MySQLUtil.query('select id, href, picsrc, price, name, dealid from jordan', [], function (rows, fields) {
    callback(rows);
  });
};

exports.insertjordan = function (href, picsrc, price, name, dealid, callback) {
  MySQLUtil.query('INSERT INTO jordan (href, picsrc, price, name, dealid) values (?,?,?,?,?)',[href, picsrc, price, name, dealid], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    } 
  });
};

//科比数据库
exports.delekobe = function (callback) {
  MySQLUtil.query('TRUNCATE TABLE kobe', [], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    }
  });
};

exports.querykobe = function (callback) {
  MySQLUtil.query('select id, href, picsrc, price, name, dealid from kobe', [], function (rows, fields) {
    callback(rows);
  });
};

exports.insertkobe = function (href, picsrc, price, name, dealid, callback) {
  MySQLUtil.query('INSERT INTO kobe (href, picsrc, price, name, dealid) values (?,?,?,?,?)',[href, picsrc, price, name, dealid], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    } 
  });
};

//詹姆斯数据库
exports.delejames = function (callback) {
  MySQLUtil.query('TRUNCATE TABLE james', [], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    }
  });
};

exports.queryjames = function (callback) {
  MySQLUtil.query('select id, href, picsrc, price, name, dealid from james', [], function (rows, fields) {
    callback(rows);
  });
};

exports.insertjames = function (href, picsrc, price, name, dealid, callback) {
  MySQLUtil.query('INSERT INTO james (href, picsrc, price, name, dealid) values (?,?,?,?,?)',[href, picsrc, price, name, dealid], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    } 
  });
};

//杜兰特数据库
exports.deledurant = function (callback) {
  MySQLUtil.query('TRUNCATE TABLE durant', [], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    }
  });
};

exports.querydurant = function (callback) {
  MySQLUtil.query('select id, href, picsrc, price, name, dealid from durant', [], function (rows, fields) {
    callback(rows);
  });
};

exports.insertdurant = function (href, picsrc, price, name, dealid, callback) {
  MySQLUtil.query('INSERT INTO durant (href, picsrc, price, name, dealid) values (?,?,?,?,?)',[href, picsrc, price, name, dealid], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    } 
  });
};

//乔治数据库
exports.delejorge = function (callback) {
  MySQLUtil.query('TRUNCATE TABLE jorge', [], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    }
  });
};

exports.queryjorge = function (callback) {
  MySQLUtil.query('select id, href, picsrc, price, name, dealid from jorge', [], function (rows, fields) {
    callback(rows);
  });
};

exports.insertjorge = function (href, picsrc, price, name, dealid, callback) {
  MySQLUtil.query('INSERT INTO jorge (href, picsrc, price, name, dealid) values (?,?,?,?,?)',[href, picsrc, price, name, dealid], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    } 
  });
};

//库里数据库
exports.delecurry = function (callback) {
  MySQLUtil.query('TRUNCATE TABLE curry', [], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    }
  });
};

exports.querycurry = function (callback) {
  MySQLUtil.query('select id, href, picsrc, price, name, dealid from curry', [], function (rows, fields) {
    callback(rows);
  });
};

exports.insertcurry = function (href, picsrc, price, name, dealid, callback) {
  MySQLUtil.query('INSERT INTO curry (href, picsrc, price, name, dealid) values (?,?,?,?,?)',[href, picsrc, price, name, dealid], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    } 
  });
};

//哈登数据库
exports.deleharden = function (callback) {
  MySQLUtil.query('TRUNCATE TABLE harden', [], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    }
  });
};

exports.queryharden = function (callback) {
  MySQLUtil.query('select id, href, picsrc, price, name, dealid from harden', [], function (rows, fields) {
    callback(rows);
  });
};

exports.insertharden = function (href, picsrc, price, name, dealid, callback) {
  MySQLUtil.query('INSERT INTO harden (href, picsrc, price, name, dealid) values (?,?,?,?,?)',[href, picsrc, price, name, dealid], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    } 
  });
};


//more数据库
exports.delemorestar = function (callback) {
  MySQLUtil.query('TRUNCATE TABLE morestar', [], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    }
  });
};

exports.querymorestar = function (callback) {
  MySQLUtil.query('select id, href, picsrc, price, name, dealid from morestar', [], function (rows, fields) {
    callback(rows);
  });
};

exports.insertmorestar = function (href, picsrc, price, name, dealid, callback) {
  MySQLUtil.query('INSERT INTO morestar (href, picsrc, price, name, dealid) values (?,?,?,?,?)',[href, picsrc, price, name, dealid], function (rows, fields) {
    if(rows){
      callback(message.login.success, rows);        
    }else{
      callback(message.login.none, null);
    } 
  });
};



