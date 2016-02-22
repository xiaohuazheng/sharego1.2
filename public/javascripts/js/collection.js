//评论页点击收藏
$(function(){
	$('.rd-goodsColl').click(function(){		
		var dealid = parseInt($(this).attr('data-id'));
		var collUrl = 'colldeal?id=' + dealid;
		$.ajax({
			method:'get',
			url:collUrl,
			success:function(){
				$('.rd-goodsColl').text('收藏成功');					
			},
			error:function(){
				$('.rd-goodsColl').text('请先登录');	
			},
			async:true
		});
	});
});