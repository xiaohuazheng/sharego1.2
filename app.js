var express = require('express');
var http = require('http');
var path = require('path');
var favicon = require('static-favicon');
var logger = require('morgan');
var session = require('express-session');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var cheerio = require('cheerio');
var superagent = require('superagent');


var User = require('./model/user');
var Encrypt = require('./utils/encrypt');

var routes = require('./routes');
var user = require('./routes/user');
var star = require('./routes/star');
var deal = require('./routes/deal');

var app = express();

// 全局变量
global.message = require('./utils/message').instance();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(favicon());
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded());
app.use(cookieParser());
app.use(session({
    name: 'cookiename',
    resave: false,
    saveUninitialized: true,
    secret: '123456',
    cookie: { maxAge: 60 * 1000 * 30 }
}));

app.use(express.static(path.join(__dirname, 'public')));
app.use(app.router);

//爬取数据路由
app.use('/crawlerjordan',star.jordan);
app.use('/crawlerkobe',star.kobe);
app.use('/crawlerjames',star.james);
app.use('/crawlerdurant',star.durant);
app.use('/crawlerjorge',star.jorge);
app.use('/crawlercurry',star.curry);
app.use('/crawlerharden',star.harden);
app.use('/crawlermore',star.more);

app.use('/crawler',routes.crawler);

//注册登录
app.use('/loginreg',user.loginreg);
app.use('/logout',user.logout);
app.use('/user',user);

app.use('/personal',user.personal);
app.use('/modifypw',user.modifypw);

app.use('/adminuser',user.adminuser);
app.use('/useradmin',user.useradmin);
app.get('/updateadmin',user.updateadmin);
app.get('/updateuser',user.updateuser);
app.get('/deleuser',user.deleuser);


//分类商品页
app.use('/jordan',routes.jordan);
app.use('/kobe',routes.kobe);
app.use('/james',routes.james);
app.use('/durant',routes.durant);
app.use('/paul',routes.paul);
app.use('/curry',routes.curry);
app.use('/harden',routes.harden);
app.use('/morestar',routes.morestar);

//收藏页
app.get('/dealcoll',routes.dealcoll);

app.get('/delecoll',deal.delecoll);
app.get('/colldeal',deal.colldeal);

//评论页
app.get('/dealpage',deal.dealpage);

//搜索页
app.get('/search',deal.search);
//recommend
app.use('/jordan_brand',deal.jordan_brand);
app.use('/naike_brand',deal.naike_brand);
app.use('/low_price_brand',deal.low_price_brand);
app.use('/high_price_brand',deal.high_price_brand);

app.use('/', routes.index);





/// catch 404 and forwarding to error handler
app.use(function(req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

/// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
    app.use(function(err, req, res, next) {
        res.render('error', {
            message: err.message,
            error: err
        });
    });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
    res.render('error', {
        message: err.message,
        error: {}
    });
});

//用户登录
app.post('/dologin', function(req, res) {
  var username = req.body.username;
  var password = req.body.password;
  var encryptPassword = Encrypt.md5(password).toUpperCase();
  User.loginByEmail(username, encryptPassword, function(status, userInfo){    
    if(status == message.login.success){
      req.session.user = username;
      res.send(200);           
    }else{
      res.send(404);
    }
  });
});


//用户注册时判断用户名是否已存在
app.post('/isuser', function(req, res) {
  var username = req.body.username;
  User.isUser(username, function(status, userInfo){    
    if(status == message.login.success){
      res.send(200);          
    }else{
      res.send(404);
    }
  });
});


//用户注册
app.post('/doregister', function(req, res) {
  var nickname = req.body.username;
  var email = req.body.email;
  var password = req.body.password;
  var encryptPassword = Encrypt.md5(password).toUpperCase(); 
  User.insert(nickname,email,encryptPassword, function(status,userInfo){
    if(status == message.login.success){
      res.send(200);          
    }else{
      res.send(404);
    }
  });
});


module.exports = app;
