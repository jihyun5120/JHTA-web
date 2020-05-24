<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>number</title>
<style>
	form[name=frm]{ /* form태그의 속성 name이 frm일때 */
		position:relative;
	}
	input[type=button]{ /* input태그의 속성 type이 button일때 */
		position:absolute;
		left:210px;
		top:2px;
		width:80px;
		height:44px;
	}
</style>
</head>
<body>

<h3>Number, parseInt, parseFloat</h3>
<form name='frm'>
	<label>성명</label>
	<input type='text' name='irum' value='hong' />
	<br/>
	<label>성적</label>
	<input type='text' name='score' value='50' />
	<br/>
	<input type='button' value='CHECK' name='btn' />
	<br/>
	<textarea rows='10' cols='50' name='result'></textarea> <!-- html문법을 사용하고 싶을 때는 <div>로 만들기 -->
</form>
<script>
	frm.btn.onclick = function(){
		
		let flag = false; 
		let n = frm.irum.value;
		let s = frm.score.value;
		frm.result.value = '';
		
		//이름에 숫자가 포함되어 있는지를 판별
		for(i=0; i<n.length; i++){
			var c = n.charAt(i);
			if(isFinite(c)){			
				flag = true;
				break;
			}		
		}
		if(flag){
			frm.result.value = '이름에 숫자가 있으면 안됨!';
			frm.irum.focus();
			frm.irum.select();
		}
		
		//성적에 문자가 포함되어 있는지를 판별
		if(!isFinite(s)){
			frm.result.value = '성적에 문자가 포함되어 있으면 안됨!';
			frm.score.focus();
			frm.score.select();
			flag = true;
		}
		
		//정상적으로 입력되었을 때
		if(!flag){
			frm.result.value = `성명 : \${n} \n성적 : \${s}`;
		}
	}
</script>
</body>
</html>