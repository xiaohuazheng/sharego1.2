var StarDeal = require('../model/StarDeal');
/* GET home page. */

exports.index = function(req, res){
  StarDeal.querymorestar(function(result) {
    res.render('index',{user:req.session.user,data:result});
  });
};
exports.jordan = function(req, res){
  StarDeal.queryjordan(function(result) {
    res.render('shoes/jordan',{user:req.session.user,data:result});
  });
};
exports.kobe = function(req, res){
  StarDeal.querykobe(function(result) {
    res.render('shoes/kobe',{user:req.session.user,data:result});
  });
};
exports.james = function(req, res){
  StarDeal.queryjames(function(result) {
    res.render('shoes/james',{user:req.session.user,data:result});
  });
};
exports.durant = function(req, res){
  StarDeal.querydurant(function(result) {
    res.render('shoes/durant',{user:req.session.user,data:result});
  });
};
exports.paul = function(req, res){
  StarDeal.queryjorge(function(result) {
    res.render('shoes/paul',{user:req.session.user,data:result});
  });
};
exports.curry = function(req, res){
  StarDeal.querycurry(function(result) {
    res.render('shoes/curry',{user:req.session.user,data:result});
  });
};
exports.harden = function(req, res){
  StarDeal.queryharden(function(result) {
    res.render('shoes/harden',{user:req.session.user,data:result});
  });
};
exports.morestar = function(req, res){
  StarDeal.querymorestar(function(result) {
    res.render('shoes/morestar',{user:req.session.user,data:result});
  });
};

exports.crawler = function(req, res){
  res.render('common/crawler',{user:req.session.user});
};


