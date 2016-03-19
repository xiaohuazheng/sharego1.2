$(function() {
	$('.user_box dd').on('mouseenter', function() {
		$(this).find('span:not(.email)').show();
	}).on('mouseleave', function() {
		$(this).find('span:not(.email)').hide();
	});

	//点击删除管理员
	$('.dele_admin').click(function(){
		$(this).parent().hide();
		var dealId = $(this).attr('data-id');
		var deleUrl = 'updateadmin?id=' + dealId;
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

	//点击删除用户
	$('.dele_user').click(function(){
		$(this).parent().hide();
		var dealId = $(this).parent().attr('data-id');
		var deleUrl = 'deleuser?id=' + dealId;
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

	//设置用户为管理员
	$('.set_admin').click(function(){
		$(this).parent().hide();
		var dealId = $(this).parent().attr('data-id');
		var deleUrl = 'updateuser?id=' + dealId;
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