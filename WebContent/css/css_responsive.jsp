<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_responsive</title>

<style media='screen and (min-width:1000px)'>
	#main{ width:1200px; overflow:hidden; margin:auto;}
	#main div{ float:left; }
	#left{ background-color:#FFD8D8; width:200px; height:300px;}
	#center{ background-color:#CEFBC9; width:800px; height:300px; }
	#right{ background-color:#D4F4FA; width:200px; height:300px; }
</style>

<style media='screen and (min-width:800px) and (max-width:999px)'>
	#main{ width:900px; overflow:hidden; margin:auto; }
	#main div{ float:left; height:300px; }
	#left{ background-color:#FFD8D8; width:200px; }
	#center{ background-color:#CEFBC9; width:700px; }
	#right{ background-color:#D4F4FA; clear:left; width:100%; }
</style>

<style media='screen and (max-width:799px)'>
	#main{ width:900px; overflow:hidden; margin:auto; }
	#main div{ height:300px; }
	#left{ background-color:#FFD8D8; width:100%; }
	#center{ background-color:#CEFBC9; width:100%; }
	#right{ background-color:#D4F4FA; width:100%; }
</style>

</head>
<body>
<h3>responsive(반응형 웹)</h3>
<dl>
	<dt>link 태그를 사용한 반응형</dt>
	<dd>media='screen and (최소크기) and (최대크기)' href='path'</dd>
	<dt>style 태그를 사용한 반응형</dt>
	<dd>media='screen and (최소크기) and (최대크기)'</dd>
	<dt>가로 | 세로 모드</dt>
	<dd> media='screen and (orientation:portraint(세로) | landscape(가로))'</dd>
</dl>
<div id='main'>
	<div id='left'></div>
	<div id='center'></div>
	<div id='right'></div>
</div>
</body>
</html>