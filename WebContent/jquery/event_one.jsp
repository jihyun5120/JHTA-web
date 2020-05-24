<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_one</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h1>Header-0</h1>
<h1>Header-1</h1>
<h1>Header-2</h1>

<script>
	//이벤트 연결
	$('h1').one('click', function(){
		//출력
		$(this).html('CLICK');
		alert('이벤트 발생');
	});
</script>

</body>
</html>