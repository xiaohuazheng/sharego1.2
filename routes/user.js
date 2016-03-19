
exports.loginreg = function(req, res){	
	var url = req.query.url;
	res.render('loginreg',{backUrl:url});
}

exports.logout = function(req, res){
	req.session.user = '';
    res.redirect("/");	
}

exports.adminuser = function(req, res){
    res.render('adminUser',{user:req.session.user});	
}



