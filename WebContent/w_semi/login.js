/**
 * login.js
 */

function btnFunc(){
	
	if('#btnLogin_c' != null){
		$('#btnLogin_c').click(function(){
			$('#frm_c').attr('action','login.lg').submit();
		});
	}
	
	if('#btnNextE_c' != null){
		$('#btnNextE_c').click(function(){
			location.href="./email.jsp";
		});
	}
	 /* 이메일 인증 */
	if('#btnSend_c' != null){
		$('#btnSend_c').click(function(){
			$('#numView').css('display','block');
			var email = $('#email_c').val();
			$.post("email.lg", {'email':email}, 
					function(data, status){
						$('#btnSendNum_c').click(function(){
							console.log(2);
							var num = $('#num_c').val();
							if(data == num){
								$('#btnNextM_c').removeAttr('disabled');
							}else{
								alert("인증번호가 일치하지 않습니다.");
							}
						});
					});
		});
	}
	
	if('#btnNextM_c' != null){
		$('#btnNextM_c').click(function(){
			$('#frm_c').attr('action','membership.jsp').submit();
		});
	}
};

/* 약관동의 */
function agree(){
	$('[name=agreeAll]').click(function(){
		$('[name=agreeOne]').prop('checked', $(this).prop('checked') );
		if($(this).prop('checked')){
			$('#btnNextE_c').removeAttr('disabled');
		}else{
			$('#btnNextE_c').attr('disabled', true);
		}
	});
	$('[name=agreeOne]').each(function(){
		$(this).click(function(){
			var box = $(this);
			var allBox = $('[name=agreeAll]');
			var boxName = $(box).attr('name');
			
			if(box.prop('checked') ){
				checkBoxLength = $('[name='+ boxName +']').length;
				checkedLength = $('[name='+ boxName +']:checked').length;
			
				if( checkBoxLength == checkedLength ) {
					allBox.prop('checked', true);
					$('#btnNextE_c').removeAttr('disabled');
				}else {
					allBox.prop('checked', false);
					$('#btnNextE_c').attr('disabled', true);
				}
			}else{
				allBox.prop('checked', false);
				$('#btnNextE_c').attr('disabled', true);
			}
		});
	});
};

/* 회원가입 */
function check(){
	//비밀번호
	$('#pwd_c').on('keyup', function(){
		var msg = $('#pwdM_c');
		var num = $(this).val().search(/[0-9]/g);
		var eng = $(this).val().search(/[a-zA-Z]/ig);
		var spe = $(this).val().search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		$(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, "")); //한글은 입력 X
		$(this).val($(this).val().replace(/\s/, "")); //띄어쓰기X
		
		if($(this).val().length < 8 || $(this).val().length > 20){
			$(msg).text('8자리 ~ 20자리 이내로 입력해주세요.');
			$(msg).css('color', '#ff0055');	
			$(this).css('border', '1px solid #ff0055');
		}else if(num < 0 || eng < 0 || spe < 0 ){
			$(msg).text('영문, 숫자, 특수문자를 혼합하여 입력해주세요.');
			$(msg).css('color', '#ff0055');
			$(this).css('border', '1px solid #ff0055');
		}else {
			$(msg).text("");
			$(this).css('border', '1px solid #000');
		}
	});
	
	//비밀번호 확인
	$('#pwd_check_c').on('keyup', function(){
		var msg = $('#pwdM_check_c');
		$(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, ""));
		$(this).val($(this).val().replace(/\s/, ""));
		
		if($('#pwd_c').val() != $(this).val()){
			$(msg).text("비밀번호가 일치하지 않습니다.");
			$(msg).css('color', '#ff0055');
			$(this).css('border', '1px solid #ff0055');
		}else{
			$(msg).text("");
			$(this).css('border', '1px solid #000');
		};
	});
	
	//핸드폰번호
	$('#phone_c').on('keyup', function(){
		$(this).val($(this).val().replace(/[^0-9]/g, "")); //한글은 입력 X
	});
	
	//닉네임 중복체크
	
	/* 회원가입 버튼 활성화 | 비활성화*/
	$('#btnMember_c').click(function(){
		if($('input').css('border', '1px solid #000') == true){ //input태그가
			$('#frm_c').attr('action','member.lg').submit();
		}else{
			alert("회원정보를 정상적으로 기입해주세요.");
		}
		//input태그의 값이 null이거나 오류상태이면 오류색으로 띄워주기
	});
}




























