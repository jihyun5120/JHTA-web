<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addClass</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h1>Header-0</h1>
<h1>Header-1</h1>
<h1>Header-2</h1>
<script>
	$('h1').addClass(function(index){
		return 'class' + index; //<h1 class="class0">Header-0</h1> 등으로 속성이 추가됨.
	});
</script>

</body>
</html>