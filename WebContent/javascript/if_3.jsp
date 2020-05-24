<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if_3</title>
<style>
	#info{
		border:2px outset #7777ff;
		padding:10px;
		box-sizing:border-box;
		box-shadow:3px 3px 6px #999;
		border-left-width:30px;
	}
	form{
		margin-left:30px;
	}
	#result{
		width:245px;
		height:150px;
	}
</style>
</head>
<body>
<h3>IF(3)</h3>
<p id='info'>
	키와 몸무게를 입력받아 키가 120미만이거나 몸무게가 100kg이상이면 라디오버튼 중 탑승불가 버튼을 아니면 탑승가능 버튼이 체크되도록 조치하시오.
</p>
<form name='frm'>
	<label>키</label>
	<input type='text' size='7' name='height' /><br/>
	<label>몸무게</label>
	<input type='text' size='7' name='weight' />
	<input type='button' value='확인' name='btn' />
	
	<p/>
	<h4>결과</h4>
	<label><input type='radio' name='chk' />탑승가능</label>
	<label><input type='radio' name='chk' />탑승불가</label>
</form>

<script>
	frm.btn.onclick = function(){
		let hei = Number(frm.height.value);
		let wei = Number(frm.weight.value);
		if(hei<120||wei>=100){
			frm.chk[1].checked=true;
		}else{
			frm.chk[0].checked=true;
		}
	}
</script>

</body>
</html>