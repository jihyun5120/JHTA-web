<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_transform</title>
<style>
	div{
		border:2px solid #aaaaff;
		width:670px;
		height:150px;
		margin-bottom:20px;
	}
	#rotate>span{
		position:absolute;
		margin:30px;
		font-size:30px;
		transform-origin:50% 50%;
		transform:rotate(-25deg);
	}
	
	#scale{
		height:300px;
	}
	#scale>.a{
		transform:scale(0.5);
	}
	#scale>.b{
		position:relative;
		top:40px;
		transform:scale(1.3);
	}
	
	#skew>span{
		position:absolute;
		font-size:50px;
		transform:skew(40deg, 0deg);
	}
	
	#translate>span{
		font-size:50px;
		position:absolute;
		transform:translate(200px,30px);
	}
</style>
</head>
<body>
<h3>transform</h3>
	<ul>
		<li>ratate</li>
		<li>scale</li>
		<li>skew</li>
		<li>translate</li>
	</ul>
<hr/>
	<div id='rotate'> <!-- 회전 -->
		<span>화이팅 1907</span>
	</div>
	<div id='scale'> <!-- 확대|축소 -->
		<img src='../images/강아지.PNG' />
		<img src='../images/강아지.PNG' class='a' />
		<img src='../images/강아지.PNG' class='b'/>
	</div>
	<div id='skew'><!-- 비틀기 -->
		<span>화이팅 1907</span>
	</div>
	<div id='translate'> <!-- 위치축 좌표이동(lefe, top으로 하는 것이 더 편함) -->
		<span>화이팅 1907</span>
	</div>
</body>
</html>