$(function () {
	//各分类数据爬取
	$('.crawlerBtn_jordan').click(function(){			
		$.ajax({
			type:'get',
			url:'crawlerjordan',
			success:function(){
				console.log('数据更新成功！');					
			},
			error:function(){
				console.log('数据更新成功！');
			},
			async:true
		});			
	});

	$('.crawlerBtn_kobe').click(function(){			
		$.ajax({
			type:'get',
			url:'crawlerkobe',
			success:function(){
				console.log('数据更新成功！');						
			},
			error:function(){
				console.log('数据更新成功！');
			},
			async:true
		});			
	});

	$('.crawlerBtn_james').click(function(){			
		$.ajax({
			type:'get',
			url:'crawlerjames',
			success:function(){
				console.log('数据更新成功！');						
			},
			error:function(){
				console.log('数据更新成功！');
			},
			async:true
		});			
	});

	$('.crawlerBtn_durant').click(function(){			
		$.ajax({
			type:'get',
			url:'crawlerdurant',
			success:function(){
				console.log('数据更新成功！');						
			},
			error:function(){
				console.log('数据更新成功！');
			},
			async:true
		});			
	});

	$('.crawlerBtn_jorge').click(function(){			
		$.ajax({
			type:'get',
			url:'crawlerjorge',
			success:function(){
				console.log('数据更新成功！');						
			},
			error:function(){
				console.log('数据更新成功！');
			},
			async:true
		});			
	});

	$('.crawlerBtn_curry').click(function(){			
		$.ajax({
			type:'get',
			url:'crawlercurry',
			success:function(){
				console.log('数据更新成功！');						
			},
			error:function(){
				console.log('数据更新成功！');
			},
			async:true
		});			
	});

	$('.crawlerBtn_harden').click(function(){			
		$.ajax({
			type:'get',
			url:'crawlerharden',
			success:function(){
				console.log('数据更新成功！');						
			},
			error:function(){
				console.log('数据更新成功！');
			},
			async:true
		});			
	});

	$('.crawlerBtn_more').click(function(){			
		$.ajax({
			type:'get',
			url:'crawlermore',
			success:function(){
				console.log('数据更新成功！');						
			},
			error:function(){
				console.log('数据更新成功！');
			},
			async:true
		});			
	});


	//搜索
	$('.header_button').click(function(){
		var searchCon = $.trim($('.header_search input[name=search]').val());
		var searchUrl = 'search?name=' + searchCon;
		if(searchCon != ''){
			window.location.href = searchUrl;
			/*$.get(searchUrl,function(){
				console.log('数据更新成功！');					
			});*/
		} 
	});

});