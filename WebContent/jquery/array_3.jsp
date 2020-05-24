<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_3</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	.high-light{background-color:orange;}
	.high-light-0{background-color:red;}
	.high-light-1{background-color:yellow;}
	.high-light-2{background-color:green;}
	.high-light-3{background-color:blue;}
	.high-light-4{background-color:purple;}
</style>
</head>
<body>

<h3>addClass()를 사용한 class 속성 추가</h3>
<h1>item - 0</h1>
<h1>item - 1</h1>
<h1>item - 2</h1>
<h1>item - 3</h1>
<h1>item - 4</h1>

<script>
	$('h1').addClass('high-light'); //모든 high-light를 주황색으로.

	$('h1').each(function(index, item){
		$(this).addClass('high-light-' + index); //각각 high-light의 설정한 색으로 바뀜.
	});
</script>

</body>
</html>