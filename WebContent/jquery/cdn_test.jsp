<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="http://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous">
</script>
</head>
<body>

<script>
	//document객체의 ready 이벤트 연결 : 문서가 준비되면 매개변수로 넣은 콜백 함수를 실행하라.
	$(document).ready(function(){
		alert("First");
	});
	
	//간단한형식
	$(function(){
		alert("Second");
	})
</script>

</body>
</html>