<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>effect_colorbox</title>
<link rel='stylesheet' type='text/css' href='colorbox.css' />
<script src='../lib/jquery-3.4.1.js'></script>
<script src='../lib/jquery.colorbox-min.js'></script>
</head>
<body>
<h3>colorbox plug-in</h3>
<a href='./images/강아지.PNG'>img1</a>
<a href='./images/바다.gif'>img2</a>
<a href='./images/밤.gif'>img3</a>
<a href='./images/밤하늘.jpg'>img4</a>
<a href='./images/풍등.gif'>img5</a>

<script>
	$('a').colorbox();
</script>
</body>
</html>