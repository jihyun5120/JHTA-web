<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>plugin_1</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h3>선택자를 사용하지 않는  plugin</h3>

<script>
	//플러그인 정의
	$.reload = function(){
		location = location();
	}
	
	//플러그인 호출 (실행)
	$('h1').first().click(function(){ // 호출버튼이 눌리면 새로고침
		$.reload();		
	});
</script>

</body>
</html>