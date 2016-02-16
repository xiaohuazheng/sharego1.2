/*商品评论信息页数据爬取*/
var express = require('express');
var cheerio = require('cheerio');
var superagent = require('superagent');


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
      var dealInfo = [];
      dealInfo.push({
      	dealPic: $('.goods_big_img img').attr('src'),
      	dealName: $('.goods_big_img a').attr('title'),
      	dealPrice: $('#prodPriceAj').text(),
      	dealBuy: dealUrl
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