<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>plugin_2</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h3>선택자를 사용한 plugin</h3>
<h1>Header 1</h1>
<h1>Header 2</h1>

<script>
	//플러그인 정의
	jQuery.fn.myPluginMethod = function(options){
		$(this).css('color','white');
		$(this).css('background', 'black');
	};
	
	//플러그인 호출 (실행)
	$('h1').myPluginMethod();
</script>

</body>
</html>