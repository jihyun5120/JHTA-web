<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>effect_dialog_2</title>
<link rel='stylesheet' type='text/css' href='colorbox.css' />
<script src='../lib/jquery-3.4.1.js'></script>
<script src='../lib/jquery.colorbox-min.js'></script>
<style>
	#colorbox{
		position:relative;
	}
</style>
</head>
<body>
<h3>외부 test.html 파일을 생성하여 colorbox로 읽어들여 dialog를 구현</h3>
<a href='#dialog' id='colorbox'>Dialog with Colorbox</a>
<script>
	$('#colorbox').colorbox({
		href:'test.html',
		width:300,
		height:400,
		opacity:0.3,
	});
</script>

</body>
</html>