<%@page import="mongo.MongoMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete_result</title>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='member.js'></script>
</head>
<body>
	<div id='main'>
		<%
			request.setCharacterEncoding("utf-8");
			String findStr = request.getParameter("findStr");
			String mId = request.getParameter("mId");
			MongoMember mm = new MongoMember();
			String msg = mm.delete(mId);
		%>
		<h3><%=msg%></h3>
		<form name='frm' id='frm' method='post'>
    	    <input type='hidden' name='findStr' value='<%=findStr%>' />
			<input type='button' value='목록' id='btnList' />
    	</form>
	</div>
	<script> btnFunc(); </script>
</body>
</html>