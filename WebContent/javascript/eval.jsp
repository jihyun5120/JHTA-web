<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eval</title>
<style>
	textarea{
		border:5px double #4C4C4C;
		margin:5px;
		padding:10px;
		width:300px;
		height:300px;
	}
</style>
</head>
<body>

<h3>eval</h3>
<p id='info'>
	eval()을 사용한 간단 계산기
</p>
<form name='frm'>
	<label>연산식</label>
	<input type='text' size='30' name='oper' />
	<input type='button' value='연산하기' name='btn' />
	<br/>
	<textarea rows='10' cols='60' name='result'></textarea>
</form>
<script>
	let func = function(){
		let r = eval(frm.oper.value);
		frm.result.value += frm.oper.value + ' = ' + r + '\n------------\n';
	}
	frm.btn.onclick = func;
</script>

</body>
</html>