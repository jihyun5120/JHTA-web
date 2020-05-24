<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_background</title>
<style>
	div{
		border:2px solid #000;
		width:250px;
		height:150px;
		margin:10px;
		display:inline-block;
		border-radius:20px;
	}
	#div1{
		overflow:auto;
		background-image:url(../images/hi.PNG);
		background-attachment:fixed;
		
	}
	  
	#div2{
		background-image:url(../images/hi.PNG);
		background-repeat:no-repeat;
		background-position:20px 20px;
	}
	
	#div3{
		background-image:url(../images/hi.PNG);
		background-repeat:repeat-x;
	}
	
	#div4{
		background-image:url(../images/hi.PNG);
		background-repeat:repeat-Y;
	}
	
	#div5{
		width:500px;
		background-image:url(../images/hi.PNG);
		background-size:100% 100%;
	}
</style>
</head>
<body>
<h3>바탕 이미지</h3>
<ul>
	<li> background-image:url(path) </li>
	<li> background-attachment : fixed | scroll </li>
	<li> background-position : x y | left | right | bottom | top | center </li>
	<li> background-repeat : repeat-x | repeat-y |no-repeat </li>
	<li> background-size : sizeX sizeY </li>
</ul>
<hr/>
<div id='div1'>
	엄청 많은 내용이 있는 영역.
	엄청 많은 내용이 있는 영역.
	엄청 많은 내용이 있는 영역.
	엄청 많은 내용이 있는 영역.
	엄청 많은 내용이 있는 영역.
	엄청 많은 내용이 있는 영역.
	엄청 많은 내용이 있는 영역.
	엄청 많은 내용이 있는 영역.
	엄청 많은 내용이 있는 영역.
</div>
<div id='div2'></div>
<div id='div3'></div>
<div id='div4'></div>
<div id='div5'></div>
</body>
</html>