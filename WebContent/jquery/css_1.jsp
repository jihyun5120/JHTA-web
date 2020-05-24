<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_1</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h1>Header-0</h1>
<h1>Header-1</h1>
<h1>Header-2</h1>

<script>
	//변수 선언
	let color = ['red', 'green', 'blue'];
	
	//문서 객체의 스타일을 변경
	$('h1').css('color', function(index){
		return color[index];
	});
</script>

</body>
</html>