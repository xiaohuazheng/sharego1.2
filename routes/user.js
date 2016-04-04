var User = require('../model/User');

//登陆页，发送当前页url，登陆完成返回当前页
exports.loginreg = function(req, res){	
	var url = req.query.url;
	res.render('loginreg',{backUrl:url});
}

exports.logout = function(req, res){
	req.session.user = '';
    res.redirect("/");	
}

//后台用户管理
exports.adminuser = function(req, res){
	var locals = res.locals;
	User.adminuser(1, function(result) {
		locals.adminResult = result;
		res.render('adminuser', {user:req.session.user});			
	});		
}

exports.useradmin = function(req, res){
	var locals = res.locals;
	User.adminuser(0, function(result) {
		locals.userResult = result;
		res.render('useradmin', {user:req.session.user});			
	});		
}

//删除管理员
exports.updateadmin = function(req, res){
  var dealid = req.query.id;

  User.updateadmin(dealid, function(result) {
    console.log('删除管理员成功加入至普通用户');
  });
};

//删除用户
exports.deleuser = function(req, res){
  var dealid = req.query.id;

  User.deleuser(dealid, function(result) {
    console.log('删除用户成功');
  });
};

//设置用户为管理员
exports.updateuser = function(req, res){
  var dealid = req.query.id;

  User.updateuser(dealid, function(result) {
    console.log('设置用户为管理员成功');
  });
};

//账号信息
exports.personal = function(req, res){	
	res.render('person/personal', {user:req.session.user});
}
