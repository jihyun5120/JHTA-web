<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_slide</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	div{
		magin:0px;
		margin:0px;
	}
	#canvas{
		background-color:gray;
		width:600px;
		height:400px;
		position:relative;
		overflow:hidden;

	}
	.box{
		background-color:orange;
		width:100px;
		height:100px;
		position:absolute;
	}
</style>
</head>
<body>

<h3>Test Header</h3>
<div id='canvas'>
	<div class='box'></div>
	<div class='box'></div>
	<div class='box'></div>
	<div class='box'></div>
	<div class='box'></div>	
</div>
<h3>Test Header</h3>
<script>
	$('.box').each(function(index){
		$(this).css({
			'left':index*90,
			'top':index*90
		});
	});
</script>

</body>
</html>