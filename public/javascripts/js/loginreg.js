$(function () {

	//用户登录
	$('.login input').click(function(){	
		var backurl = $(this).attr('data-id');
		console.log(username);
		if ($('#login-form input[name=password]').val().length >= 6) {	
			$.cookie('sharego_user', 1, { expires: 7, path: '/'});	
			$('#loading').css('display','block');
			$('#loading p').html('正在登录...');
			console.log($("#login-form").serialize());
			$.ajax({
				type:'post',
				url:'dologin',
				data:$("#login-form").serialize(),
				success:function(){
					$('#loading').css('display','none');
					$('#success').css('display', 'block');
					$('#success p').html('登录成功...');
					setTimeout(function(){						
						$('#success').css('display','none');
						window.location.href = backurl;						
					},1500);
				},
				error:function(){
					$('#loading').css('display','none');
					$('#error').css('display','block');
					$('#error p').html('用户名或密码不正确！');
					$('#login-form')[0].reset();
				},
				async:true
			});		
		} else {
			$('#error').css('display','block');
			$('#error p').html('用户名或密码不合法！');
		}	
	});

	$('#login-form input').focus(function(){
		$('#error').css('display','none');
	});


	//用户注册
	$('#register-form')[0].reset();
	//1.用户名验证
	$('#register-form input[name=username]').bind('focus',function(){
		$('#register-form .error_user').hide();
	}).bind('change',function(){
		var len = $.trim($('#register-form input[name=username]').val()).length;
		if( len < 2 || len > 10) {
			$('#register-form .error_user').css('color','#ec1611');
			$('#register-form .error_user').html('输入不合法（2~10位），请重新输入');
			$('#register-form .error_user').show();
		}else if(check_user()){
			$('#register-form .error_user').css('color','#000991');
			$('#register-form .error_user').html('用户名可用');
			$('#register-form .error_user').show();
		}else{
			$('#register-form .error_user').css('color','#ec1611');
			$('#register-form .error_user').html('用户名已被占用');
			$('#register-form .error_user').show();
		}
	});	
	function check_user() {
		var flag = true;
		if ($.trim($('#register-form input[name=username]').val()).length < 2) {
			$('#register-form .error_user').css('color','#ec1611');
			$('#register-form .error_user').html('输入不合法（2~10位），请重新输入');
			$('#register-form .error_user').show();
			return false;
		}else{			
			$.ajax({
				method : 'post',
				url : 'isuser',
				data : $('#register-form').serialize(),
				success : function () {
						$('#register-form .error_user').css('color','#ec1611');
						$('#register-form .error_user').html('用户名已被占用');
						$('#register-form .error_user').show();
						flag = false;
				},
				error:function() {
						$('#register-form .error_user').css('color','#000991');
						$('#register-form .error_user').html('用户名可用');
						$('#register-form .error_user').show();
						flag = true;
					
				},
				async : false
			});
		}
		return flag;
	}


	//2.密码验证
	$('#register-form input[name=password]').bind('focus',function(){
		$('#register-form .error_pass').hide();
	}).bind('blur',function(){
		if($.trim($(this).val()) == ''){
			$('#register-form .error_pass').show();
		}else{
			if(check_pass()){
				$('#register-form .error_pass').hide();
			}else{
				$('#register-form .error_pass').show();
			}
		}
	});	
	//密码验证函数	
	function check_pass(){
		var value = $.trim($('#register-form input[name=password]').val());
		var value_length = value.length;		
		
		if(value_length >= 6 && value_length <= 18){
			return true;
		}else{
			return false;
		}
	}

	//3.密码确认验证
	$('#register-form input[name=confirm_password]').bind('focus',function(){
		$('#register-form .error_notpass').hide();
	}).bind('blur', function () {
		if ($.trim($(this).val()) == '') {
			$('#register-form .error_notpass').hide();
		} else if (check_notpass()){
			$('#register-form .error_notpass').hide();
		} else {
			$('#register-form .error_notpass').show();
		}
	});	
	function check_notpass(){
		if($.trim($('#register-form input[name=confirm_password]').val()) == $.trim($('#register-form input[name=password]').val())){
			return true;
		}
	}

	//6.电子邮件验证
	$('#register-form input[name=email]').bind('focus',function(){
		$('#register-form .error_email').hide();
	}).bind('blur',function(){		
		if($.trim($(this).val()) == ''){
			$('#register-form .error_email').hide();
		}else if (check_email()) {			
			$('#register-form .error_email').hide();
		} else {
			$('#register-form .error_email').show();
		}
	});	
	function check_email(){
		if (/^[\w\-\.]+@[\w\-]+(\.[a-zA-Z]{2,4}){1,2}$/.test($.trim($('#register-form input[name=email]').val()))){
			return true;
		}
	}


	//提交前进行验证
	$('.signin input').click(function(){
		var flag = true;
		
		if (!check_pass()) {
			$('#reg .error_pass').css('display', 'block');
			flag = false;
		}
		
		if (!check_notpass()) {
			$('#reg .error_notpass').css('display', 'block');
			flag = false;
		}
		
		if (!check_email()) {
			$('#reg .error_email').css('display', 'block');
			flag = false;
		}

		//如果所有都返回true
		if(flag){
			$('#loading').css('display', 'block');
			$('#loading p').html('注册中...');
			$.ajax({
				method:'post',
				url:'doregister',
				data:$('#register-form').serialize(),
				success:function(){
					$('#loading').css('display', 'none');
					$('#success').css('display', 'block');
					$('#success p').html('注册成功，请登录...');
					setTimeout(function(){						
						$('#success').css('display', 'none');
						$('#register-form')[0].reset();
						window.location.href = "loginreg#tologin"
					},2000);					
				},
				error:function(){
					$('#loading').css('display','none');
					$('#error').css('display','block');
					$('#error p').html('注册失败，请重试');
				},
				async:true
			});
		}		
		
	});
	
	$('#register-form input').focus(function(){
		$('#error').css('display','none');
	});


});