var express = require('express');
var cheerio = require('cheerio');
var superagent = require('superagent');
var StarDeal = require('../model/StarDeal');

exports.jordan = function(req, res, next){
  superagent.get('http://www.52xie.com/category-410-0-b0-min0-max0-attr0-1-last_update-DESC.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.delejordan(function (status, userInfo){
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
        StarDeal.insertjordan(href, picsrc, price, name, function(status, userInfo) {
          if(status == message.login.success){
            console.log('insert success');          
          }else{
            console.log('insert fail');
          }
        });
      });
    });
};

exports.kobe = function(req, res, next){
  superagent.get('http://www.52xie.com/category-421-0-b0-min0-max0-attr0-1-last_update-DESC.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.delekobe(function (status, userInfo){
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
        StarDeal.insertkobe(href, picsrc, price, name, function(status, userInfo) {
          if(status == message.login.success){
            console.log('insert success');          
          }else{
            console.log('insert fail');
          }
        });
      });
    });
};

exports.james = function(req, res, next){
  superagent.get('http://www.52xie.com/category-422-0-b0-min0-max0-attr0-1-last_update-DESC.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.delejames(function (status, userInfo){
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
        StarDeal.insertjames(href, picsrc, price, name, function(status, userInfo) {
          if(status == message.login.success){
            console.log('insert success');          
          }else{
            console.log('insert fail');
          }
        });
      });
    });
};

exports.durant = function(req, res, next){
  superagent.get('http://www.52xie.com/category-423.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.deledurant(function (status, userInfo){
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
        StarDeal.insertdurant(href, picsrc, price, name, function(status, userInfo) {
          if(status == message.login.success){
            console.log('insert success');          
          }else{
            console.log('insert fail');
          }
        });
      });
    });
};

exports.jorge = function(req, res, next){
  superagent.get('http://www.52xie.com/search.php?encode=YTo0OntzOjg6ImtleXdvcmRzIjtzOjY6IuS5lOayuyI7czoxMToic2VhcmNoSW5kZXgiO3M6MToiMCI7czo4OiJtYXhJbmRleCI7czoxOiIwIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQ1NDMxMTU0NDt9')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.delejorge(function (status, userInfo){
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
        StarDeal.insertjorge(href, picsrc, price, name, function(status, userInfo) {
          if(status == message.login.success){
            console.log('insert success');          
          }else{
            console.log('insert fail');
          }
        });
      });
    });
};

exports.curry = function(req, res, next){
  superagent.get('http://www.52xie.com/search.php?encode=YTo0OntzOjg6ImtleXdvcmRzIjtzOjY6IuW6k%2bmHjCI7czoxMToic2VhcmNoSW5kZXgiO3M6MToiMCI7czo4OiJtYXhJbmRleCI7czoxOiIwIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQ1NDMxMTYwMzt9')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.delecurry(function (status, userInfo){
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
        StarDeal.insertcurry(href, picsrc, price, name, function(status, userInfo) {
          if(status == message.login.success){
            console.log('insert success');          
          }else{
            console.log('insert fail');
          }
        });
      });
    });
};

exports.harden = function(req, res, next){
  superagent.get('http://www.52xie.com/search.php?encode=YTo0OntzOjg6ImtleXdvcmRzIjtzOjY6IuWTiOeZuyI7czoxMToic2VhcmNoSW5kZXgiO3M6MToiMCI7czo4OiJtYXhJbmRleCI7czoxOiIwIjtzOjE4OiJzZWFyY2hfZW5jb2RlX3RpbWUiO2k6MTQ1NDMxMTY0Njt9')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.deleharden(function (status, userInfo){
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
        StarDeal.insertharden(href, picsrc, price, name, function(status, userInfo) {
          if(status == message.login.success){
            console.log('insert success');          
          }else{
            console.log('insert fail');
          }
        });
      });
    });
};