<%@page import="mongo.MongoMember"%>
<%@page import="com.mongodb.BasicDBObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify_result</title>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='member.js'></script>
</head>
<body>
<div id='main'>
	<%
		request.setCharacterEncoding("utf-8");
		String findStr = request.getParameter("findStr");
		String mId = request.getParameter("mId");
		BasicDBObject obj = new BasicDBObject();
		obj.put("mId", mId);
		obj.put("mName", request.getParameter("mName"));
		obj.put("rDate", request.getParameter("rDate"));
		obj.put("grade", request.getParameter("grade"));
		
		MongoMember mm = new MongoMember();
		String msg = mm.modify(obj);
	%>
	<h3><%=msg%></h3>
	<form name='frm' id='frm' method='post'>
		<input type='hidden' name='findStr' value='<%=findStr%>' />
		<input type='button' value='목록' id='btnList' />
	</form>
	<script> btnFunc(); </script>
</div>
</body>
</html>