var express = require('express');
var cheerio = require('cheerio');
var superagent = require('superagent');
var Jordan = require('../model/Jordan');

exports.jordan = function(req, res, next){
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
        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
        name = $element.parent().parent().find('.altName').find('a').text();
        Jordan.insert(href, picsrc, price, name, function(status, userInfo) {
          if(status == message.login.success){
            console.log('insert success');          
          }else{
            console.log('insert fail');
          }
        });
      });
    });
  res.render('index',{user:req.session.user});
};

exports.jordanshow = function(req, res, next){  
    Jordan.insert(href, picsrc, price, name, function(status, userInfo) {
      if(status == message.login.success){
        console.log('insert success');          
      }else{
        console.log('insert fail');
      }
    });
  	res.render('index',{user:req.session.user});
};