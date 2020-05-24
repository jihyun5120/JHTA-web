<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="mongo.MongoMember"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert_result</title>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='member.js'></script>
</head>
<body>
	<div id='main'>
	<%
		request.setCharacterEncoding("utf-8");
		String msg = "";
		String findStr = request.getParameter("findStr");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		MongoMember mm = new MongoMember();
		BasicDBObject obj = new BasicDBObject();
		
		obj.put("mId", request.getParameter("mId"));
		obj.put("mName", request.getParameter("mName"));
		obj.put("rDate", request.getParameter("rDate"));
		obj.put("grade", request.getParameter("grade"));
		
		msg = mm.insert(obj);
		out.print(msg);
	%>
	</div>
	<form name='frm' id='frm' method='post'>
		<input type='hidden' name='findStr' value='<%=findStr%>' />
		<input type='button' value='목록' id='btnList' />
	</form>
<script> btnFunc(); </script>
</body>
</html>