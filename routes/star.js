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
      var dealtype = 1;
      StarDeal.delejordan(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          
          var $ = cheerio.load(sres.text);
	      $('.productList .frame .frameA img').each(function (idx, element) {
	        var $element = $(element),
	        href = $element.parent().attr('href'),
	        picsrc = $element.attr('src'),
	        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
	        name = $element.parent().parent().find('.altName').find('a').text();
	        dealid = href.replace(/[^0-9]+/g, '');
	        StarDeal.insertjordan(href, picsrc, price, name, dealid, function(status, userInfo) {
	          if(status == message.login.success){
	            console.log('insert success');
	                     
	          }else{
	            console.log('insert fail');
	          }
	        });
	      });          
        }else{
          console.log('dele fail');
        }
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
          console.log('dele ok and then:');
          var $ = cheerio.load(sres.text);
	      $('.productList .frame .frameA img').each(function (idx, element) {
	        var $element = $(element),
	        href = $element.parent().attr('href'),
	        picsrc = $element.attr('src'),
	        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
	        name = $element.parent().parent().find('.altName').find('a').text();
	        dealid = href.replace(/[^0-9]+/g, '');
	        StarDeal.insertkobe(href, picsrc, price, name, dealid, function(status, userInfo) {
	          if(status == message.login.success){
	            console.log('insert success');          
	          }else{
	            console.log('insert fail');
	          }
	        });
	      });          
        }else{
          console.log('dele fail');
        }
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
          console.log('dele ok and then:');
          var $ = cheerio.load(sres.text);
	      $('.productList .frame .frameA img').each(function (idx, element) {
	        var $element = $(element),
	        href = $element.parent().attr('href'),
	        picsrc = $element.attr('src'),
	        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
	        name = $element.parent().parent().find('.altName').find('a').text();
	        dealid = href.replace(/[^0-9]+/g, '');
	        StarDeal.insertjames(href, picsrc, price, name, dealid, function(status, userInfo) {
	          if(status == message.login.success){
	            console.log('insert success');          
	          }else{
	            console.log('insert fail');
	          }
	        });
	      });          
        }else{
          console.log('dele fail');
        }
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
          console.log('dele ok and then:');
          var $ = cheerio.load(sres.text);
	      $('.productList .frame .frameA img').each(function (idx, element) {
	        var $element = $(element),
	        href = $element.parent().attr('href'),
	        picsrc = $element.attr('src'),
	        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
	        name = $element.parent().parent().find('.altName').find('a').text();
	        dealid = href.replace(/[^0-9]+/g, '');
	        StarDeal.insertdurant(href, picsrc, price, name, dealid, function(status, userInfo) {
	          if(status == message.login.success){
	            console.log('insert success');          
	          }else{
	            console.log('insert fail');
	          }
	        });
	      });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

exports.jorge = function(req, res, next){
  superagent.get('http://www.52xie.com/category-869.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.delejorge(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          var $ = cheerio.load(sres.text);
	      $('.productList .frame .frameA img').each(function (idx, element) {
	        var $element = $(element),
	        href = $element.parent().attr('href'),
	        picsrc = $element.attr('src'),
	        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
	        name = $element.parent().parent().find('.altName').find('a').text();
	        dealid = href.replace(/[^0-9]+/g, '');
	        StarDeal.insertjorge(href, picsrc, price, name, dealid, function(status, userInfo) {
	          if(status == message.login.success){
	            console.log('insert success');          
	          }else{
	            console.log('insert fail');
	          }
	        });
	      });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

exports.curry = function(req, res, next){
  superagent.get('http://www.52xie.com/category-866.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.delecurry(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          var $ = cheerio.load(sres.text);
	      $('.productList .frame .frameA img').each(function (idx, element) {
	        var $element = $(element),
	        href = $element.parent().attr('href'),
	        picsrc = $element.attr('src'),
	        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
	        name = $element.parent().parent().find('.altName').find('a').text();
	        dealid = href.replace(/[^0-9]+/g, '');
	        StarDeal.insertcurry(href, picsrc, price, name, dealid, function(status, userInfo) {
	          if(status == message.login.success){
	            console.log('insert success');          
	          }else{
	            console.log('insert fail');
	          }
	        });
	      });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

exports.harden = function(req, res, next){
  superagent.get('http://www.52xie.com/category-538.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.deleharden(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          var $ = cheerio.load(sres.text);
	      $('.productList .frame .frameA img').each(function (idx, element) {
	        var $element = $(element),
	        href = $element.parent().attr('href'),
	        picsrc = $element.attr('src'),
	        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
	        name = $element.parent().parent().find('.altName').find('a').text();
	        dealid = href.replace(/[^0-9]+/g, '');
	        StarDeal.insertharden(href, picsrc, price, name, dealid, function(status, userInfo) {
	          if(status == message.login.success){
	            console.log('insert success');          
	          }else{
	            console.log('insert fail');
	          }
	        });
	      });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

exports.more = function(req, res, next){
  superagent.get('http://www.52xie.com/category-425.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      StarDeal.delemorestar(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          var $ = cheerio.load(sres.text);
	      $('.productList .frame .frameA img').each(function (idx, element) {
	        var $element = $(element),
	        href = $element.parent().attr('href'),
	        picsrc = $element.attr('src'),
	        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
	        name = $element.parent().parent().find('.altName').find('a').text();
	        dealid = href.replace(/[^0-9]+/g, '');
	        StarDeal.insertmorestar(href, picsrc, price, name, dealid, function(status, userInfo) {
	          if(status == message.login.success){
	            console.log('insert success');          
	          }else{
	            console.log('insert fail');
	          }
	        });
	      });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};