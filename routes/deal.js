var express = require('express');
var cheerio = require('cheerio');
var superagent = require('superagent');
var StarDeal = require('../model/StarDeal');
var User = require('../model/User');

//商品评论页
exports.dealpage = function(req, res){

  var dealUrl = req.query.url;
  superagent.get(dealUrl)
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      var locals = res.locals;
      var $ = cheerio.load(sres.text);

      /*商品信息*/
      var urlId = dealUrl.replace(/[^0-9]+/g, '');
      var dealInfo = [];
      dealInfo.push({
      	dealPic: $('.goods_big_img img').attr('src'),
      	dealName: $('.goods_big_img a').attr('title'),
      	dealPrice: $('#prodPriceAj').text(),
      	dealBuy: dealUrl,
        dealid: urlId.substring(2)
      });

      //console.log('pppppppppp' + JSON.stringify(dealInfo));

      /*图形化评论展示数据*/
      var allComment = parseInt($('.evalu_value .prodvalu12').text());
      var items = [];      
      $('.evalu_value .evalu_value2 div').each(function (idx, element) {
        var $element = $(element);
        items.push($(element).text());
      });
      for(var i = 0; i < items.length; i++) {
      	var tempVal = parseInt(items[i].replace(/[^0-9]+/g, ''));
      	items[i] = tempVal == 0 ? 96 : (tempVal/allComment) * 100;
      }
      items.unshift(parseInt($('.evalu_value .prodvalu11').text()));
      
      locals.commchar = items;

      /*评论数据*/
      var commentData = [];
      $('.commentCell').each(function (idx, element) {
        var $element = $(element);
        commentData.push({
          commUser: $element.find('.user_celname').text(),
          commCon: $element.find('.commentCell_contents').text().substring(5)
        });
      });
      //console.log('===========' + JSON.stringify(commentData));
      res.render('deals/commentpage',{user:req.session.user,comment:commentData,dealIn:dealInfo});
    });
};


//删除收藏
exports.delecoll = function(req, res){
  var dealid = parseInt(req.query.id);

  StarDeal.delecoll(dealid, function(result) {
    console.log('删除收藏成功');
  });
};

//加入收藏
exports.colldeal = function(req, res){
  var dealid = parseInt(req.query.id);
  var nickname = req.session.user;
  if (!nickname) {
    console.log('请先登录');
    res.send(404);    
  } else {
    StarDeal.insertcoll(dealid, nickname, function(result) {
      console.log('收藏成功');
      res.send(200);
    });
  }
};


//搜索页
exports.search = function(req, res){
  var name = req.query.name;
  name = '%' + name + '%';
  StarDeal.querysearch(name, function(result) {
    res.render('shoes/search',{user:req.session.user,data:result});
  });
};

//乔丹，凡事无绝对
exports.jordan_brand = function(req, res){
  var name = '%乔丹%';
  StarDeal.querysearch(name, function(result) {
    res.render('shoes/jordan_brand',{user:req.session.user,data:result});
  });
};

//耐克，just do it
exports.naike_brand = function(req, res){
  var name = '%耐克%';
  StarDeal.querysearch(name, function(result) {
    res.render('shoes/naike_brand',{user:req.session.user,data:result});
  });
};

//物美价廉
exports.low_price_brand = function(req, res){
  StarDeal.querylow(function(result) {
    res.render('shoes/low_price_brand',{user:req.session.user,data:result});
  });
};

//就要奢侈
exports.high_price_brand = function(req, res){
  StarDeal.queryhigh(function(result) {
    res.render('shoes/high_price_brand',{user:req.session.user,data:result});
  });
};

//介绍页
exports.jordan_descri = function(req, res){
  User.queryComments(1, function(result) {
    res.render('person/jordan_descri', {user:req.session.user,data:result});
  });         
}
exports.kobe_descri = function(req, res){
  User.queryComments(2, function(result) {
    res.render('person/kobe_descri', {user:req.session.user,data:result});
  });         
}
exports.james_descri = function(req, res){
  User.queryComments(3, function(result) {
    res.render('person/james_descri', {user:req.session.user,data:result});
  });         
}
exports.durant_descri = function(req, res){
  User.queryComments(4, function(result) {
    res.render('person/durant_descri', {user:req.session.user,data:result});
  });         
}
exports.paul_descri = function(req, res){
  User.queryComments(5, function(result) {
    res.render('person/paul_descri', {user:req.session.user,data:result});
  });         
}
exports.irving_descri = function(req, res){
  User.queryComments(6, function(result) {
    res.render('person/irving_descri', {user:req.session.user,data:result});
  });         
}
exports.harden_descri = function(req, res){
  User.queryComments(7, function(result) {
    res.render('person/harden_descri', {user:req.session.user,data:result});
  });         
}
exports.morestar_descri = function(req, res){
  User.queryComments(8, function(result) {
    res.render('person/morestar_descri', {user:req.session.user,data:result});
  });         
}