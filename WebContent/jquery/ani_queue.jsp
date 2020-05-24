<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_queue</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	div{
		width:50px; 
		height:50px;
		background-color:orange;
		position:relative;
	}
</style>
</head>
<body>
<div></div>
<script>
	$('div').click(function(){
		$(this).animate({
				'left':'+=60'
			}, 2000).animate({
				'width':'+=60'
				}, 2000).animate({
					'height':'+=60'
				}, 2000);
		setTimeout(function(){
			$('div').clearQueue();
		}, 3000); //클릭하고 3초 뒤 실행하여 height의 명령을 실행되지 않음.
		
	});
</script>

</body>
</html>