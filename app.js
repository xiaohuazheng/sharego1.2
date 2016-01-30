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
var Jordan = require('./model/Jordan')

var routes = require('./routes');
var user = require('./routes/user');

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


app.use('/loginreg',user.loginreg);
app.use('/logout',user.logout);
app.use('/user',user);

app.use('/jordan',routes.jordan);
app.use('/kobe',routes.kobe);
app.use('/james',routes.james);
app.use('/durant',routes.durant);
app.use('/paul',routes.paul);
app.use('/curry',routes.curry);
app.use('/harden',routes.harden);
app.use('/morestar',routes.morestar);
app.use('/dealpage',routes.dealpage);
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
  console.log('===========登录===========');
  console.log(JSON.stringify(req.body));
  var username = req.body.username;
  var password = req.body.password;
  var encryptPassword = Encrypt.md5(password).toUpperCase();
  console.log('>>>encryptPassword:' + encryptPassword);
  User.loginByEmail(username, encryptPassword, function(status, userInfo){    
    if(status == message.login.success){
      req.session.user = username;
      console.log('===========req.session.user===========');
      console.log(req.session.user);
      res.send(200);
      //res.end("end");           
    }else{
      res.send(404);
    }
  });
});


//用户注册时判断用户名是否已存在
app.post('/isuser', function(req, res) {
  console.log('=========判断用户名=============');
  console.log(JSON.stringify(req.body));
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
  console.log('=========注册=============');
  console.log(JSON.stringify(req.body));
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


//爬取数据
app.get('/crawler', function (req, res, next) {
  superagent.get('http://www.52xie.com/category-410-0-b0-min0-max0-attr0-1-last_update-DESC.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      Jordan.dele(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok');          
        }else{
          console.log('dele fail');
        }
      });
      var $ = cheerio.load(sres.text);
      $('.productList .frame .frameA img').each(function (idx, element) {
        var $element = $(element),
        href = $element.parent().attr('href'),
        picsrc = $element.attr('src'),
        price = parseInt($element.parent().parent().find('.price ').find('.okprice').text()),
        name = $element.parent().parent().find('.altName').find('a').text();
        Jordan.insert(href, picsrc, price, name, function(status, userInfo) {
          if(status == message.login.success){
            res.send(200);          
          }else{
            res.send(404);
          }
        });
      });
    });
});

module.exports = app;
