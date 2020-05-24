<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for_1</title>
<style>
	#info{
		border:2px outset #7777ff;
		padding:10px;
		box-sizing:border-box;
		box-shadow:3px 3px 6px #999;
		border-left-width:30px;
		font-family:12롯데마트행복Bold;
	}
	form{
		margin-left:30px;
	}
	#result{
		border:2px groove #B2CCFF;
		border-radius:10px;
		padding:30px;
		margin:10px;
		width:250px;
		height:150px;
		box-sizing:border-box;
		border-shadow:3px 3px 4px #aaa;
		font-size: 20px;
	}
</style>
</head>
<body>

<h3>for(1)</h3>
<p id='info'>
	1이상의 정수 n을 입력받아 1~n까지의 합계를 구하여 div영역에 표시
</p>

<form name='frm'>
	<label>정수</label>
	<input type='text' name='n' value='100' />
	<input type='button' name='btn' value='RUN' />
</form>

<div id='result'></div>

<script>
	frm.btn.onclick = function(){
		
		let n = Number(frm.n.value);
		let hap = 0;
		let div = document.getElementById('result');
		for(i=1; i<n; i++){
			hap += i;
		}
		div.innerHTML = '합계 : ' + hap;
	}
</script>

</body>
</html>