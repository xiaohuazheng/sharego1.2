var express = require('express');
var cheerio = require('cheerio');
var superagent = require('superagent');
var StarDeal = require('../model/StarDeal');

//乔丹数据爬取存储
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
          StarDeal.deleall(dealtype, function(status){
          	if(status == message.login.success){
          	  var $ = cheerio.load(sres.text);
		      $('.productList .frame .frameA img').each(function (idx, element) {
		        var $element = $(element),
		        href = $element.parent().attr('href'),
		        picsrc = $element.attr('src'),
		        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
		        name = $element.parent().parent().find('.altName').find('a').text();
		        dealid = href.replace(/[^0-9]+/g, '');
		        StarDeal.insertall(href, picsrc, price, name, dealtype, dealid, function(status){});
		        StarDeal.insertjordan(href, picsrc, price, name, dealid, function(status, userInfo) {});
		      });
          	}
          });	                    
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

//科比数据爬取存储
exports.kobe = function(req, res, next){
  superagent.get('http://www.52xie.com/category-421-0-b0-min0-max0-attr0-1-last_update-DESC.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      var dealtype = 2;
      StarDeal.delekobe(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          StarDeal.deleall(dealtype, function(status){
          	if(status == message.login.success){
          	  var $ = cheerio.load(sres.text);
		      $('.productList .frame .frameA img').each(function (idx, element) {
		        var $element = $(element),
		        href = $element.parent().attr('href'),
		        picsrc = $element.attr('src'),
		        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
		        name = $element.parent().parent().find('.altName').find('a').text();
		        dealid = href.replace(/[^0-9]+/g, '');
		        StarDeal.insertall(href, picsrc, price, name, dealtype, dealid, function(status){});
		        StarDeal.insertkobe(href, picsrc, price, name, dealid, function(status, userInfo) {});
		      });
          	}
          });         
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

//詹姆斯数据爬取存储
exports.james = function(req, res, next){
  superagent.get('http://www.52xie.com/category-422-0-b0-min0-max0-attr0-1-last_update-DESC.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      var dealtype = 3;
      StarDeal.delejames(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          StarDeal.deleall(dealtype, function(status){
          	if(status == message.login.success){
          	  var $ = cheerio.load(sres.text);
		      $('.productList .frame .frameA img').each(function (idx, element) {
		        var $element = $(element),
		        href = $element.parent().attr('href'),
		        picsrc = $element.attr('src'),
		        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
		        name = $element.parent().parent().find('.altName').find('a').text();
		        dealid = href.replace(/[^0-9]+/g, '');
		        StarDeal.insertall(href, picsrc, price, name, dealtype, dealid, function(status){});
		        StarDeal.insertjames(href, picsrc, price, name, dealid, function(status, userInfo) {});
		      });
          	}
          });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

//杜兰特数据爬取存储
exports.durant = function(req, res, next){
  superagent.get('http://www.52xie.com/category-423.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      var dealtype = 4;
      StarDeal.deledurant(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          StarDeal.deleall(dealtype, function(status){
          	if(status == message.login.success){
          	  var $ = cheerio.load(sres.text);
		      $('.productList .frame .frameA img').each(function (idx, element) {
		        var $element = $(element),
		        href = $element.parent().attr('href'),
		        picsrc = $element.attr('src'),
		        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
		        name = $element.parent().parent().find('.altName').find('a').text();
		        dealid = href.replace(/[^0-9]+/g, '');
		        StarDeal.insertall(href, picsrc, price, name, dealtype, dealid, function(status){});
		        StarDeal.insertdurant(href, picsrc, price, name, dealid, function(status, userInfo) {});
		      });
          	}
          });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

//保罗数据爬取存储
exports.jorge = function(req, res, next){
  superagent.get('http://www.52xie.com/category-869.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      var dealtype = 5;
      StarDeal.delejorge(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          StarDeal.deleall(dealtype, function(status){
          	if(status == message.login.success){
          	  var $ = cheerio.load(sres.text);
		      $('.productList .frame .frameA img').each(function (idx, element) {
		        var $element = $(element),
		        href = $element.parent().attr('href'),
		        picsrc = $element.attr('src'),
		        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
		        name = $element.parent().parent().find('.altName').find('a').text();
		        dealid = href.replace(/[^0-9]+/g, '');
		        StarDeal.insertall(href, picsrc, price, name, dealtype, dealid, function(status){});
		        StarDeal.insertjorge(href, picsrc, price, name, dealid, function(status, userInfo) {});
		      });
          	}
          });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

//欧文数据爬取存储
exports.curry = function(req, res, next){
  superagent.get('http://www.52xie.com/category-866.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      var dealtype = 6;
      StarDeal.delecurry(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          StarDeal.deleall(dealtype, function(status){
          	if(status == message.login.success){
          	  var $ = cheerio.load(sres.text);
		      $('.productList .frame .frameA img').each(function (idx, element) {
		        var $element = $(element),
		        href = $element.parent().attr('href'),
		        picsrc = $element.attr('src'),
		        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
		        name = $element.parent().parent().find('.altName').find('a').text();
		        dealid = href.replace(/[^0-9]+/g, '');
		        StarDeal.insertall(href, picsrc, price, name, dealtype, dealid, function(status){});
		        StarDeal.insertcurry(href, picsrc, price, name, dealid, function(status, userInfo) {});
		      });
          	}
          });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

//哈登数据爬取存储
exports.harden = function(req, res, next){
  superagent.get('http://www.52xie.com/category-538.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      var dealtype = 7;
      StarDeal.deleharden(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          StarDeal.deleall(dealtype, function(status){
          	if(status == message.login.success){
          	  var $ = cheerio.load(sres.text);
		      $('.productList .frame .frameA img').each(function (idx, element) {
		        var $element = $(element),
		        href = $element.parent().attr('href'),
		        picsrc = $element.attr('src'),
		        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
		        name = $element.parent().parent().find('.altName').find('a').text();
		        dealid = href.replace(/[^0-9]+/g, '');
		        StarDeal.insertall(href, picsrc, price, name, dealtype, dealid, function(status){});
		        StarDeal.insertharden(href, picsrc, price, name, dealid, function(status, userInfo) {});
		      });
          	}
          });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};

//其他球星数据爬取存储
exports.more = function(req, res, next){
  superagent.get('http://www.52xie.com/category-425.html')
    .end(function (err, sres) {
      if (err) {
        return next(err);
      }
      var dealtype = 8;
      StarDeal.delemorestar(function (status, userInfo){
        if(status == message.login.success){
          console.log('dele ok and then:');
          StarDeal.deleall(dealtype, function(status){
          	if(status == message.login.success){
          	  var $ = cheerio.load(sres.text);
		      $('.productList .frame .frameA img').each(function (idx, element) {
		        var $element = $(element),
		        href = $element.parent().attr('href'),
		        picsrc = $element.attr('src'),
		        price = parseInt($element.parent().parent().find('.price').find('.okprice').text()),
		        name = $element.parent().parent().find('.altName').find('a').text();
		        dealid = href.replace(/[^0-9]+/g, '');
		        StarDeal.insertall(href, picsrc, price, name, dealtype, dealid, function(status){});
		        StarDeal.insertmorestar(href, picsrc, price, name, dealid, function(status, userInfo) {});
		      });
          	}
          });          
        }else{
          console.log('dele fail');
        }
      });	      
    });
};