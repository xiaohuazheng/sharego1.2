/* GET users listing. 
exports.list = function(req, res){
  res.render('loginreg');
};
*/
exports.loginreg = function(req, res){	
	res.render('loginreg');
}

exports.logout = function(req, res){
	req.session.user = '';
    res.redirect("/");	
}



