<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_position</title>
<style>
	div[id]{
		border:2px solid #aaaaff;
		height:50px;
	}
	
	#absolute>div{ position:absolute; }
	#absolute>div:hover{
		background-color:#ddd;
		cursor:pointer;
	}
	#absolute>.c2{ left:100px; top:10px;}
	#absolute>.c3{ left:200px; top:20px;}
	#absolute>.c4{ left:300px; top:30px;}
	#absolute>.c5{ left:400px; top:40px;}
	
	#relative>div{ position:relative; }
	#relative>.c2{ left:100px; top:-20px;}
	#relative>.c3{ left:200px; top:-43px;}
	#relative>.c4{ left:300px; top:-63px;}
	#relative>.c5{ left:400px; top:-83px;}
	
	#fixed{
		position:fixed;
		width:100px;
		height:120px;
		background-color:#ddd;
		opacity:0.8;
	}
	#fixed:hover{
		opacity:1;
	}
</style>
</head>
<body>
	<div id='absolute'> <!-- absolute : 부모의 높이를 인식하지 못함 (메뉴를 만들 때 잘 사용X, display:inline을 사용) -->
		<div class='c1'>HTML</div>
		<div class='c2'>CSS</div>
		<div class='c3'>Javascript</div>
		<div class='c4'>JSP</div>
		<div class='c5'>Java</div>
	</div>
	
	<div id='relative'> <!-- relative : 부모의 높이를 인식함 (메뉴를 만들 때 잘 사용X, display:inline을 사용) -->
		<div class='c1'>HTML</div>
		<div class='c2'>CSS</div>
		<div class='c3'>Javascript</div>
		<div class='c4'>JSP</div>
		<div class='c5'>Java</div>
	</div>

	<div id='fixed'> <!-- 스크롤을 내려도 고정되어 따라옴 -->
		<div class='c1'>HTML</div>
		<div class='c2'>CSS</div>
		<div class='c3'>Javascript</div>
		<div class='c4'>JSP</div>
		<div class='c5'>Java</div>
	</div>
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
	 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장 무척이나 긴 문장
</body>
</html>