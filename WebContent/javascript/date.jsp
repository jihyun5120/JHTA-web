<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>date</title>
</head>
<body>

<h3>date</h3>
<fieldset id='info'>
	생년월일을 입력하여 오늘날짜를 기준으로 나이, 개월수, 시간수, 분수를 계산하여 표시하시오.
</fieldset>
<form name='frm'>
	<label>생년월일</label>
	<input type='date' name='birth' />
	<br/>
	<label>오늘날짜</label>
	<input type='date' name='now' />
	<input type='button' name='btn' value='날 수 계산' />
	<br/>
</form>
<div id='result'></div>
<script>
	let tempDate1 = new Date();
	let tempDate2 = new Date('June 22 1995');
	let div = document.getElementById('result');
	
	frm.now.valueAsDate = tempDate1;
	frm.birth.valueAsDate = tempDate2;
	
	frm.btn.onclick = function(){
		let now = new Date(frm.now.value);
		let birth = new Date(frm.birth.value);
		let str = '';
		let d = (now - birth)/1000;
		let mi = d/60; //분수
		let ho = d/60/60; //시간수
		let da = d/60/60/24; //날수
		let mo = parseInt(d/60/60/24/30); //개월수
		let ye = parseInt(d/60/60/24/30/12); //년수
		
		str = '<li>년수 :  ' + ye
			+ '<li>개월수 :  ' + mo
			+ '<li>날수 :  ' + da
			+ '<li>시간수 :  ' + ho
			+ '<li>분수 :  ' + mi;
		
		div.innerHTML = str;
	}
</script>
</body>
</html>