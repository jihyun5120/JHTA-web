<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>

<style>
	h4{
		border:2px outset #5587ED;
		padding:10px;
		box-sizing:border-box;
		box-shadow:3px 3px 6px #B2CCFF;
		border-left-width:30px;
		font-family:배달의민족 연성;
		font-size:1.3em;
	}
	.sel{
		width:150px;
	}
	#result{
		border:2px solid #6B66FF;
		padding:15px;
		box-sizing:border-box;
		width:300px;
		height:150px;
		box-shadow:3px 3px 4px #747474;
		font-family:배달의민족 주아;
	}
</style>

</head>
<body>

<h3>select</h3>
<form name='frm'>
	<h4>과정명을 하나만 선택하시오.</h4>
	<select name='course' size='1' class='sel'>
		<option value='프로그래밍 과정'>프로그래밍 과정</option>
		<option value='웹 디자인 과정'>웹 디자인 과정</option>
		<option value='스크립터 과정'>스크립터 과정</option>
		<option value='퍼블리싱 과정'>퍼블리싱 과정</option>
	</select>
	
	<h4>신청 과목을 한 개 이상 선택하시오.</h4>
	<select name='subject' size='7' multiple='multiple' class='sel'>
		<option value='java'>java</option>
		<option value='html5'>html5</option>
		<option value='css3'>css3</option>
		<option value='javascript'>javascript</option>
		<option value='jsp'>jsp</option>
		<option value='ajax'>ajax</option>
		<option value='jquery'>jquery</option>
		<option value='node.js'>node.js</option>
		<option value='spring'>spring</option>
	</select>
	<p/>
	<input type='button' value='선택' name='btn' />
</form>
<div id='result'></div>

<script>
	let subject = [];
	let r = document.getElementById('result');
	let str = '';
	
	frm.btn.onclick = function(){
		str = '<li>과정명 : ' + frm.course.value + '<br/>';
		
		for(i=0; i<frm.subject.length; i++){
			if(frm.subject[i].selected){
				subject.push(frm.subject[i].value);
			}
		}
		str += '<li>과목명 : ' + subject;						
		r.innerHTML = str;
	}
</script>

</body>
</html>