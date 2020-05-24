<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_width</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	div{
		width:50px;
		height:50px;
		background-color:orange;
	}
</style>
</head>
<body>

<h3>도형을 클릭하면 넓이를 변경</h3>
<div></div>
<script>
	$('div').click(function(){ //클릭하면
		let w = $(this).css('width');
		let h = $(this).css('height');
		$(this).animate({
			'width':parseInt(w) + 50,
			'height':parseInt(h) + 50
		}, 1000);
	});
	$('div').mouseout(function(){ //마우스를 떼면
		$(this).animate({
			'width':50,
			'height':50
		}, 1500);
	});
</script>

</body>
</html>