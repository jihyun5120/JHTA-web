<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_radius</title>
<style>
	div{
		width:100px;
		height:100px;
		border:2px solid #8041D9;
		margin:10px;
		float:left;
	}
	
	#div1{
		overflow:scroll; /*내용이 넘칠 때만 scroll바 나오게 하려면 scoll대신 auto로 사용*/
	}
	
	#div2{
		border-radius:20px;
		box-shadow:3px 3px 7px #353535;
	}
	
	#div3{
		border-radius:50px;
	}
	
	#div4{
		border-radius:30px 30px 0 0;
		box-shadow:-3px -3px 7px #FFFF6C;
	}
	
	#div5{
		border-radius:0 0 30px 30px;
		box-shadow:3px -3px 7px #FFA7A7;
	}
	
	#div6{
		border-radius:0 50px 0 50px;
		box-shadow: -3px 0 7px #6799FF;
	}
</style>
</head>
<body>
	<div id='div1'>
		123 abc 가나다 !@#$ ABC
		123 abc 가나다 !@#$ ABC
		123 abc 가나다 !@#$ ABC
		123 abc 가나다 !@#$ ABC
		123 abc 가나다 !@#$ ABC
	 </div>
	<div id='div2'></div>
	<div id='div3'></div>
	<div id='div4'></div>
	<div id='div5'></div>
	<div id='div6'></div>
</body>
</html>