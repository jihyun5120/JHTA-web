<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="UTF-8">
<title>insert</title>
<script src='./lib/jquery-3.4.1.js'></script>
<script src='./jsp_member/jsp_member.js'></script>
</head>
<body>

<h3>회원등록</h3>
<%
	request.setCharacterEncoding("utf-8");
	String findStr = request.getParameter("findStr");
%>
<form id='frm' name='frm' method='post' enctype="multipart/form-data"><!-- enctype을 사용하면 request.getParameter 사용X(무조건 null) -->
	<label>아이디</label><br/>
	<input type='text' name='mId' />
	<br/>
	<label>비밀번호</label><br/>
	<input type='password' name='pwd' />
	<br/>
	<label>성명</label><br/>
	<input type='text' name='mName' />
	<br/>
	<label>등록일</label><br/>
	<input type='date' name='rDate' />
	<br/>
	<label>학번</label><br/>
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
	<label id='lPhoto'>증명사진</label>
	<img width='120px' height='150px' id='photo' src='./images/profile.PNG' />
	<br/>
	<input type='file' id='btnPhoto' name='photo' />
	<br/>
	<input type='button' id='btnRegister' value='등록' />
	<input type='button' id='btnList' value='취소' />
	<input type='hidden' name='findStr' value='${param.findStr}' />
	<input type='hidden' name='nowPage' value='${param.nowPage}' />
</form>
<script> btnFunc(); </script>

</body>
</html>