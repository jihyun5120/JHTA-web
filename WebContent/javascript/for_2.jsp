<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for_2</title>
<style>
	#info{
		border:2px outset #7777ff;
		padding:5px;
		box-sizing:border-box;
		box-shadow:3px 3px 6px #999;
		border-left-width:30px;
		font-family:배달의민족 주아;
		font-size:20px;
	}
	form{
		margin-left:30px;
	}
	#result{
		border:2px groove #B2CCFF;
		border-radius:10px;
		padding:10px;
		margin:10px;
		width:250px;
		height:360px;
		box-sizing:border-box;
		overflow:auto;
		font-family:나눔손글씨 펜;
	}
	#result>div{
		padding:20px;
		margin:10px;
		font-size: 25px;
		
	}
	#result>div>span{
		font-weight:bold;
		font-size:1.2em;
		background-color:#fff;
		padding:0 5px 0 5px;
		border-radius: 10px 10px 10px 10px;
	}
	#result>div:nth-child(2n){ 
		background-color:#CC3D3D; 
	}
	#result>div:nth-child(2n-1){
	 	background-color:#4374D9; 
	}
</style>
</head>
<body>

<h3>구구단</h3>
<p id='info'>
	2~9단까지 구구단을 출력하시오.
</p>

<form id='frm'>
	<input type='button' name='btn' value='출력' />
</form>

<div id='result' ></div>

<script>
	frm.btn.onclick = function(){
		let str = '';
		let div = document.getElementById('result');
		for(i=2; i<=9; i++){
			str += '<div>';
			str += '<span>' + i  + '단' + '</span>' + '<br/>';
			for(j=1; j<=9; j++){
				str += i + ' * ' + j + ' = ' + (i*j) + '<br/>';
			}
			str += '</div>';
		}
			div.innerHTML = str;
	}
	
</script>

</body>
</html>