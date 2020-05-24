<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>abc</title>
</head>
<body>
	<span>폼 태그의 값들을 전달받음..</span>
	<% //스크립들릿(이 안에서는 자바코드로 사용.)
		String mId = request.getParameter("mId"); //mId값 받아오기
		out.print(mId);
	%>
</body>
</html>