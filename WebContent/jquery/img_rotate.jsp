<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>img_rotate</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<img src='../images/강아지.PNG' />
<img src='../images/copy.png' />
<img src='../images/hi.PNG' />
<img src='../images/we.PNG' />
<img src='../images/밤하늘.jpg' />

<script>
	//.image의 크기를 조정
	$('img').css('width', 250);
	
	//함수를 2초마다 실행
	let rotate = setInterval(function(){
					//첫 번째 이미지를 마지막으로 보냄
					$('img').first().appendTo('body');}, 200);
	//이미지를 누르면 회전이 멈추게 함
	$('img').click(function(){
		clearInterval(rotate);
	});
</script>

</body>
</html>