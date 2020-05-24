<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>switch</title>

<style>
	p{
		font-family:나눔고딕;
	}
	#result{
		border:2px solid #FFE400;
		padding:10px;
		box-sizing:border-box;
		border-left-width:30px;
		font-family:나눔스퀘어어라운드;
	}
</style>

</head>
<body>

<h3>switch</h3>
<p id='info'>
	prompt를 사용하여 정수 하나를 입력받아 짝수와 홀수를 구분하여 출력하고, 만약 숫자가 아니라면 '숫자를 입력하세요' 메세지를 div에 출력.
</p>

<div id='result'></div>

<script>
	window.onload = function(){
		
		let s = prompt('숫자를 입력하세요');
		let str = '';
		let div = document.getElementById('result');
		switch(s%2){
			case 0:
				str = '짝수 : ' + s;
				break;
			case 1:
				str = '홀수 : ' + s;
				break;
			default:
				str = '숫자를 입력하세요';
				break;
		}
			div.innerHTML = str;
	}
</script>

</body>
</html>