<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>switch2</title>

<style>
	#info{
		border:2px solid #FFB2D9;
		padding:10px;
		box-sizing:border-box;
		border-left-width:30px;
	}
	#result{
		border:2px double #747474;
		margin:10px;
		padding:10px;
		box-sizing:border-box;
	}
</style>

</head>
<body>

<h3>switch2</h3>
<p id='info'>
	성적을 입력받아 학점을 구하여 성적과 학점을 div에 출력
</p>

<form name='frm'>
	<lable>성적</lable>
	<input type='text' name='score' />
	<input type='button' name='btn' value='입력' />
</form>

<div id='result'></div>

<script>
	
	frm.btn.onclick = function(){
		let s = frm.score.value;
		let div = document.getElementById('result');
		let str = '<li>성적 : ' + s + '\n' + '<li>학점 : ';
		div.innerHTML = '';
		
		switch(true){
			case s>=90:
				str += 'A';
				break;
			case s>=80:
				str += 'B';
				break;
			case s>=70:
				str += 'C';
				break;
			case s>=60:
				str += 'D';
				break;
			default:
				str += 'F';
		}
		div.innerHTML = str;
		
		let color = (s>=60)? '#6799FF' : '#F15F5F';
		div.style.backgroundColor = color;
	}
</script>

</body>
</html>