var Jordan = require('../model/Jordan');
/* GET home page. */

exports.index = function(req, res){
  res.render('index',{user:req.session.user});
};
exports.jordan = function(req, res){
  Jordan.query(function(result) {
    res.render('shoes/jordan',{user:req.session.user,data:result});
  });
  //res.send(result);
  
};
exports.kobe = function(req, res){
  res.render('shoes/kobe',{user:req.session.user});
};
exports.james = function(req, res){
  res.render('shoes/james',{user:req.session.user});
};
exports.durant = function(req, res){
  res.render('shoes/durant',{user:req.session.user});
};
exports.paul = function(req, res){
  res.render('shoes/paul',{user:req.session.user});
};
exports.curry = function(req, res){
  res.render('shoes/curry',{user:req.session.user});
};
exports.harden = function(req, res){
  res.render('shoes/harden',{user:req.session.user});
};
exports.morestar = function(req, res){
  res.render('shoes/morestar',{user:req.session.user});
};
exports.dealpage = function(req, res){
  res.render('deals/dealpage',{user:req.session.user});
};


