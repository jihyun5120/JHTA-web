<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_toggle</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h3>event_toggle</h3>

<button id='btnToggle'>Toggle</button>
<button id='btnSlide'>Slide</button>
<button id='btnFade'>fade</button>
</p>

<div id='result'>
	<img src='../images/강아지.PNG' width='200px' height='250px'/>
	<img src='../images/copy.png' width='200px' height='250px'/>
</div>

<script>
	$('#btnToggle').on('click', function(){
		$('#result').toggle(3000); //뿌옇게 대각선방향으로 사라지거나 생김.
	});
	$('#btnSlide').on('click', function(){
		$('#result').slideToggle(3000); //위에서 아래방향으로 생기거나 반대방향으로 사라짐.
	});
	$('#btnFade').on('click', function(){
		$('#result').fadeToggle(2000); //뿌옇게 사라지거나 생김.
	});
</script>

</body>
</html>