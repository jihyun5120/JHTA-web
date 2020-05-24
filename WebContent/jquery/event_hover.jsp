<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_hover</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	.reverse{
		background-color:black;
		color:white; 
	}
</style>
</head>
<body>

<h1>Header-0</h1>
<h1>Header-1</h1>
<h1>Header-2</h1>

<script>
	$('h1').hover(function(){
		$(this).html(function(index, html){
			return html + '+';
		});
	});
	
	$('h1').on({
		mouseenter:function(){$(this).addClass('reverse');},
		mouseleave:function(){$(this).removeClass('reverse');}
	});
</script>

</body>
</html>