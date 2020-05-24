<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h1>Header-0</h1>
<h1>Header-1</h1>
<h1>Header-2</h1>

<script>
	$('h1').html(function(index, html){
		return '★' + html + '★'; //모든 h1태그에  ★내용★ 이 됨.
	});
</script>

</body>
</html>