
exports.loginreg = function(req, res){	
	res.render('loginreg');
}

exports.logout = function(req, res){
	req.session.user = '';
    res.redirect("/");	
}



