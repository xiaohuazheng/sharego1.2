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



