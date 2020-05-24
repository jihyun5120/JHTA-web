<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setInterval</title>
<style>
	#main{
		border:8px double #C98AFF;
		width:270px;
		margin:10px;
		padding:10px;
		border-radius:20px;
		box-sizing:border-box;
		background-color:#6E2FC7;
		color:fff;
	}
	#date{
		padding:2px;
		font-size:1em;
		font-family:On 석보상절;
		font-weight:bold;
	}
	#time{
		color:#fff;
		font-size:3em;
		font-family:여기어때 잘난체;
		text-align:center;
	}
</style>
</head>
<body>

<h3>setInterval을 사용한 시계</h3>
<div id='main'>
	<div id='date'></div>
	<div id='time'></div>
</div>
<script>
	let date = document.getElementById('date');
	let time = document.getElementById('time');
	let weeks = ['일', '월', '화', '수', '목', '금', '토']; 
	
	let func = function(){
		
		let now = new Date(); //현재 날짜
		let year = now.getFullYear(); //년
		let month = now.getMonth()+1; //0~11월이라서 +1.
		let day = now.getDate(); //일
		let week = now.getDay(); //요일
		let hour = now.getHours(); //시
		let min = now.getMinutes(); //분
		let sec = now.getSeconds(); //초
		
		//시, 분, 초 2자리로
		hour = (hour<10)? '0'+hour : hour;
		min = (min<10)? '0'+min : min;
		sec = (sec<10)? '0'+sec : sec;
		
		let d = `\${year}년 \${month}월 \${day}일 (\${weeks[week]})`;
		let t = `\${hour}:\${min}:\${sec}`;
		
		date.innerHTML = d;
		time.innerHTML = t;
	}
	
	setInterval(func, 1000);
</script>

</body>
</html>