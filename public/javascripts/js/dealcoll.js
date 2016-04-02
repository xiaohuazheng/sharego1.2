$(function () {

	$('#sidebar').hide();
	//收藏页 deal鼠标hover
	$('.deal .con').mouseenter(function(){
		$(this).find('.deleColl').show();
	}).mouseleave(function(){
		$(this).find('.deleColl').hide();
	});

	//点击删除收藏
	$('.deleColl').click(function(){
		$(this).parent().hide();
		var dealId = $(this).parent().attr('data-id');
		var deleUrl = 'delecoll?id=' + dealId;
		$.ajax({
			type:'get',
			url:deleUrl,
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