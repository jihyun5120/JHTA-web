<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel='stylesheet' type='text/css' href='../css/index.css' />
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<div id='main'>
	<div id='header'></div>
	<div id='login_form'>
		<form id='frm' name='frm' method='post' action='./login_result.jsp'>
			<input type='text' id='mId' name='mId' size='20' placeholder='아이디' />
			<br/>
			<input type="password" id='pwd' name='pwd' size='20' placeholder='비밀번호' />
			<br/>
			<input type='submit' value='로그인' id='btnLog'/>
			<input type='button' value='취소' id='btnCancel'/>
			<p/>
			<a href='#'>아이디/비밀번호 찾기</a>
		</form>
	</div>
	<%@include file='../bottom.jsp' %>
</div>
<script>
	$('#btnCancel').click(function(){
		location.href = '../index.jsp';
	});
</script>
</body>
</html>