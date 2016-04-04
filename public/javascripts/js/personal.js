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







});