$(function () {	

	//初始化轮播器
	$('#banner img').attr('opacity',0);
	$('#banner img').eq(0).attr('opacity',1);
	$('#banner ul li').eq(0).css('color', '#333');
	$('#banner strong').html($('#banner img').eq(0).attr('alt'));
		
	//轮播器计数器
	var banner_index = 1;		
	//轮播器的种类
	var banner_type = 1; 	//1表示透明度，2表示上下滚动	
	//自动轮播器
	var banner_timer = setInterval(banner_fn, 3000);
	
	//手动轮播器
	$('#banner ul li').hover(function(){
		clearInterval(banner_timer);
		if($(this).css('color') != 'rgb(51,51,51)' && $(this).css('color') != '#333'){
			banner(this,banner_index == 0 ? $('#banner ul li').length - 1 : banner_index - 1);
		}
		
	},function(){
		banner_index = $(this).index() + 1;
		banner_timer = setInterval(banner_fn, 3000);
	});
	
	function banner(obj,prev) {
		$('#banner ul li').css('color', '#999');
		$(obj).css('color', '#333');
		$('#banner strong').html($('#banner img').eq($(obj).index()).attr('alt'));
		
		if(banner_type == 1){
			$('#banner img').eq(prev).animate({
				opacity:'0',				
			},1000).css('zIndex',1);
			$('#banner img').eq($(obj).index()).animate({
				opacity:'1',				
			},1000).css('zIndex',2);
		}else if(banner_type == 2){
			$('#banner img').eq(prev).animate({
				height : '240px',
			},1000).css('zIndex', 1).attr('opacity',1);
			$('#banner img').eq($(obj).index()).animate({
				height : '0',			
			},1000).css('top', '-240px').css('zIndex', 2).attr('opacity',1);
		}
	}
	
	function banner_fn(){
		if(banner_index >= $('#banner ul li').length){
			banner_index = 0;
		}
		banner($('#banner ul li').eq(banner_index).first(),banner_index == 0 ? $('#banner ul li').length - 1 : banner_index - 1);
		banner_index ++;
	}

	

	//点击去登陆，带url过去
    $('#login_a').click(function() {
    	var url = window.location.href;
    	var loginUrl = "loginreg?url=" + url;
    	window.location.href = loginUrl; 
    });

    //导航栏跟随 
    if((window.location.href).indexOf('dealpage') == -1) {  
	    var scrollFun = function() {
	    	var scrollHeight = $('.dealbox').offset().top;

	    	if($(window).scrollTop() > scrollHeight) {
	    		$('.to_top').show();
	    		$('#head_nav').addClass('head_nav_fix');
	    	} else {
	    		$('.to_top').hide();
	    		$('#head_nav').removeClass('head_nav_fix');
	    	}
	    }

	    $(window).scroll(scrollFun);
	   
	    //点击回顶部
	    $('.to_top').on('click', function() {
	    	$('html, body').animate({
	    		scrollTop: 0
	    	},600);
	    });
	} else {
		$('#sidebar').hide();
	}

});	