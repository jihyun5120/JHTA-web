<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index_mybatis</title>
<link rel="stylesheet" type="text/css" href="./css/mybatis.css">
<script src="./js/mybatis.js"></script>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String inc = "select.myba"; /* 처음 열리는 페이지 */
	if (request.getParameter("inc") != null){
		inc = request.getParameter("inc");
	}
%>
<div id="mybatis">
	<div id="header">
		<h3>mybatis + servlet + jstl</h3>
	</div>
	<div id="center">
		<jsp:include page="<%=inc %>"></jsp:include>
	</div>
	<div id="footer">
		1907<sub>TM</sub>
	</div>
</div>
<script>btnFunc();</script>
</body>
</html>