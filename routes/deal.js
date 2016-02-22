var express = require('express');
var cheerio = require('cheerio');
var superagent = require('superagent');
var StarDeal = require('../model/StarDeal');

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