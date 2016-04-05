$(function() {
	//隐藏左侧边栏
	$('#sidebar').hide();

	//原始密码输入验证
	$('#oldPw').on('blur',function(){
		var str = '#oldPw';
		if($.trim($(this).val()) == ''){
			$('.pwnotice1').text('请输入原始密码（6-18位）');
		}else{
			if(check_pass(str)){
				$('.pwnotice1').text('');
			}else{
				$('.pwnotice1').text('请输入原始密码（6-18位）');
			}
		}
	});

	//新密码输入验证
	$('#pw').on('blur',function(){
		var str = '#pw';
		if($.trim($(this).val()) == ''){
			$('.pwnotice2').text('请输入新的密码（6-18位）');
		}else{
			if(check_pass(str)){
				$('.pwnotice2').text('');
			}else{
				$('.pwnotice2').text('请输入新的密码（6-18位）');
			}
		}
	});

	//3.密码确认验证
	$('#newPw').on('blur',function(){
		if($.trim($(this).val()) == ''){
			$('.pwnotice3').text('请再次输入密码');
		}else{
			if(check_notpass()){
				$('.pwnotice3').text('');
			}else{
				$('.pwnotice3').text('密码不一致，请重新输入');
			}
		}
	});	
	function check_notpass(){
		if($.trim($('#newPw').val()) == $.trim($('#pw').val())){
			return true;
		}
	}

	//密码验证函数	
	function check_pass(str){
		var value = $.trim($(str).val());
		var value_length = value.length;		
		
		if(value_length >= 6 && value_length <= 18){
			return true;
		}else{
			return false;
		}
	}	

	//重置
	function reWrite() {
		$('#oldPw').val('');
		$('#pw').val('');
		$('#newPw').val('');
		$('.pwnotice1').text('');
		$('.pwnotice2').text('');
		$('.pwnotice3').text('');
	}

	//重新输入
	$('.resetPw').on('click', function(){
		reWrite();
	});

	//提交验证
	$('.submitPw').on('click', function() {
		var flag = true;
		if (!check_pass('#oldPw')) {
			flag = false;
		}

		if (!check_pass('#pw')) {
			flag = false;
		}
		
		if (!check_notpass()) {
			flag = false;
		}

		//如果所有都返回true
		if(flag){
			$('#loading').css('display', 'block');
			$('#loading p').html('加载中...');
			$.ajax({
				method:'post',
				url:'newpassword',
				data:{
					oldPw: $('#oldPw').val(),
					newPw: $('#newPw').val()
				},
				success:function(){
					$('#loading').css('display', 'none');
					$('#success').css('display', 'block');
					$('#success p').html('修改成功，返回首页');
					setTimeout(function(){						
						$('#success').css('display', 'none');
						window.location.href = "/";
					},3000);					
				},
				error:function(){
					$('#loading').css('display','none');
					$('#error').css('display','block');
					$('#error p').html('原始密码错误，请重试');
					setTimeout(function(){						
						$('#error').css('display', 'none');
						reWrite();
					},2000);
				},
				async:true
			});
		}
	});

	
	//评论页提交评论
	
	var docom = $('#wyReping .DoComment'),
		isLogin = $.cookie('sharego_user'),
	    btn = docom.find('.subcom'),
		con = docom.find('textarea'),
		limit = docom.find('.limit');

	con.focus(function() {
		this.value == this.title ? this.value = '' : null;
	});

	con.blur(function() {
		$.trim(this.value) == '' ? this.value = this.title : null;
	});

	con.keyup(function() {
		var len = 200 - this.value.toString().length;
		limit.html('剩余字数：' + len);
	});

	if (isLogin) {
		btn.css('background-color', '#f66');

		$('.subcom').on('click', function() {
			var val = con.val(),
				id = docom.find('input[name=brand_id]').attr('value'),
				oval = con.attr('title'),
				mydate = new Date(),
				time = mydate.toLocaleString();

			val = $.trim(val);
			errTip(val, oval);
			$.ajax({
				type:'post',
				url:'brand_comments',
				data:{
					content: val,
					brand_id: id,
					com_time: time
				},
				success:function() {
					$('#subComm').show();
					closeTip();
					con.val(oval); //成功后还原为默认值
					limit.html('剩余字数：200');
				},
				error:function() {
					console.log('error');
				},
				async: true
			});
		});
	}

	var errTip = function(val, oval) { //评论字数错误提醒

		var err = $('#wyReping .notice');

		if (!!val && typeof val === 'object') {
			err.html(val.message);
			return false;
		} else {
			val = val.toString() || '';
			var len = val.length;
		}

		if (val == oval) {
			err.html('请输入评论！');
			return false;
		}

		if (len < 5) {
			err.html('您填写的评论字数少于5个字，请您继续填写！');
			return false;
		} else if (len > 200) {
			err.html('您填写的评论字数超过200个字，请您进行修改！');
			return false;
		} else {
			err.html('');
			return true;
		}
	}

	var closeTip = function() { //关闭弹窗
		var close = $('#subComm .close, #subComm .btn');
		close.click(function() {
			var $this = $(this);
			$(this).parents('#subComm').remove();
		});
	}
		




});