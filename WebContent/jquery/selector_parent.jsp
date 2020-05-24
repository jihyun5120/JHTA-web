<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_parent</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h3>selector_parent</h3>
<div>
	<span>비활성화</span>
	<button>활성화하기</button>
</div>
<script>
	$('button').click(function(){
		$(this).text('비활성화하기'); //this는 button.
		$(this).parent().css('background-color', '#aaaaff'); //parent는 div
		$(this).parent().find('span').text('활성화'); //botton의 부모인 div에서 span을 찾아라
	});
</script>

</body>
</html>