<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_click</title>
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
	//이벤트를 연결
	$('h1').on('click', function(){
		$(this).html(function(index, html){
			return html + '+'; //클릭하면 내용에 + 추가.
		});
	});
	
	$('h1').on({
		mouseenter:function(){$(this).addClass('reverse');}, //마우스올리면 addClass.
		mouseleave:function(){$(this).removeClass('reverse');} //마우스떼면 removeClass.
	});
</script>

</body>
</html>