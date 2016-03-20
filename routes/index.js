var StarDeal = require('../model/StarDeal');
var User = require('../model/User');

/* 考虑是否可以用正则进行匹配,减少代码量 */

//首页
exports.index = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  StarDeal.queryall(function(result) {
    res.render('index',{user:req.session.user,data:result});
  });
};

//乔丹
exports.jordan = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  StarDeal.queryjordan(function(result) {
    res.render('shoes/jordan',{user:req.session.user,data:result});
  });
};

//科比
exports.kobe = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  StarDeal.querykobe(function(result) {
    res.render('shoes/kobe',{user:req.session.user,data:result});
  });
};

//詹姆斯
exports.james = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  StarDeal.queryjames(function(result) {
    res.render('shoes/james',{user:req.session.user,data:result});
  });
};

//杜兰特
exports.durant = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  StarDeal.querydurant(function(result) {
    res.render('shoes/durant',{user:req.session.user,data:result});
  });
};

//保罗
exports.paul = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  StarDeal.queryjorge(function(result) {
    res.render('shoes/paul',{user:req.session.user,data:result});
  });
};

//库里
exports.curry = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  StarDeal.querycurry(function(result) {
    res.render('shoes/curry',{user:req.session.user,data:result});
  });
};

//哈登
exports.harden = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  StarDeal.queryharden(function(result) {
    res.render('shoes/harden',{user:req.session.user,data:result});
  });
};

//其他球星
exports.morestar = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  StarDeal.querymorestar(function(result) {
    res.render('shoes/morestar',{user:req.session.user,data:result});
  });
};

//收藏页
exports.dealcoll = function(req, res){
  var nickname = req.session.user;
  StarDeal.querycoll(nickname, function(arr) {
    if(arr.length) {
      var tempArr = [];
      for(var i = 0; i < arr.length; i++) {
        tempArr.push(parseInt(arr[i].dealid));
      }
      tempArr.join(',');
      StarDeal.querycolldeal(tempArr, function(result) {
        res.render('deals/dealcoll',{user:req.session.user,data:result});
      });
    } else {
      res.render('deals/dealcoll',{user:req.session.user,data:arr});
    }    
  });
};

//爬虫页
exports.crawler = function(req, res){
  var locals = res.locals;
  locals.admin = false;
  if(req.session.user) {
    User.queryUser(req.session.user, function(result) {
      if(result[0].status == 1) {        
        locals.admin = true;
      }
    });
  }  
  res.render('common/crawler',{user:req.session.user});
};


