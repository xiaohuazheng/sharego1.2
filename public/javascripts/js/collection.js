$(function(){
	$('.rd-goodsColl').click(function(){
		$(this).text('已加入收藏');
		var dealid = parseInt($(this).attr('data-id'));
		var collUrl = 'collDeal?id=' + dealid;
		$.ajax({
			type:'get',
			url:collUrl,
			success:function(){
				console.log('数据更新成功！');					
			},
			error:function(){
				console.log('数据更新成功！');
			},
			async:true
		});
	});
});