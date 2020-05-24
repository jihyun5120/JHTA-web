<%@page import="com.mongodb.DBObject"%>
<%@page import="mongo.MongoMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='member.js'></script>
</head>
<body>

	<h3>회원수정</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String findStr = request.getParameter("findStr");
		String mId = request.getParameter("mId");
		MongoMember mm = new MongoMember();
		DBObject o = mm.view(mId);
	%>
	<form name='frm' id='frm' method='post'>
		<label>아이디</label><br/>
		<input type='text' name='mId' value='<%=o.get("mId")%>' />
		<br/>
		<label>성명</label><br/>
		<input type='text' name='mName' value='<%=o.get("mName")%>'/>
		<br/>
		<label>등록일</label><br/>
		<input type='date' name='rDate' value='<%=o.get("rDate")%>'/>
		<br/>
		<label>학년</label><br/>
		<select name='grade'>
			<option value='1'>1학년</option>
			<option value='2'>2학년</option>
			<option value='3'>3학년</option>
			<option value='4'>4학년</option>
			<option value='5'>5학년</option>
			<option value='6'>6학년</option>
			<option value='7'>7학년</option>
			<option value='8'>8학년</option>
			<option value='9'>9학년</option>
			<option value='10'>10학년</option>
		</select>
		<br/>
		<input type='button' value='수정' id='btnUpdate' />
		<input type='button' value='목록' id='btnList' />
		<input type='hidden' name='findStr' value='<%=findStr%>' />
	</form>
	<script> 
		frm.grade.selectedIndex = Number('<%=o.get("grade")%>')-1;
		btnFunc();
	</script>

</body>
</html>