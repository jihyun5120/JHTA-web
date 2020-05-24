<%@page import="com.mongodb.DBObject"%>
<%@page import="java.util.List"%>
<%@page import="mongo.MongoMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='member.js'></script>

<style>
	#main{width:400px;}
	#titile span, .item span{
		display:inline-block;
	}
	#title{
		background-color:#000;
		color:#fff;
	}
	.item:hover{background-color:#ddd;}
	.mId{width:80px;}
	.mName{width:100px;}
	.rDate{width:120px;}
	.grade{width:60px;}
	form>div{
		display:inline-block;
		width:400px;
		text-align:right;
	}
</style>
</head>
<body>
<div id='main'>
<h3>회원조회</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String findStr = request.getParameter("findStr");
		if(findStr == null){
			findStr = "";
		}
		
		MongoMember mm = new MongoMember();
		List<DBObject> list = mm.select(findStr);
	%>
<form name='frm' id='frm' method="post">
	<input type='button' value='추가' id='btnInsert' />
	<div>
		<input type='text' name='findStr' value='<%=findStr%>'/>
		<input type='submit' value='검색' name='btnFind' id='btnFind' />
		<input type='hidden' name='mId' />
	</div>
</form>
<p/>
<div id='title'>
	<span class='mId'>아이디</span>
	<span class='mName'>회원명</span>
	<span class='rDate'>등록일</span>
	<span class='grade'>학번</span>
</div>
<div id='result'>
	<%
		for(DBObject o : list){
			out.print("<div class='item' onclick='view(\"" + o.get("mId") + "\")'>");
			out.print("<span class='mId'>" + o.get("mId") + "</span>");
			out.print("<span class='mName'>" + o.get("mName") + "</span>");
			out.print("<span class='rDate'>" + o.get("rDate") + "</span>");
			out.print("<span class='grade'>" + o.get("grade") + "</span>");
			out.print("</div>");
		}
	%>
</div>
</div>
<script> btnFunc(); </script>
</body>
</html>