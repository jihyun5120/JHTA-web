<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="UTF-8">
<title>insert_result</title>
<script src='./lib/jquery-3.4.1.js'></script>
<script src='./jsp_member/jsp_member.js'></script>
</head>
<body>
<div id='member_main'>
	${msg}
	<form name='frm' id='frm' method='post'>
		<input type='button' value='목록' id='btnList' />
		<input type='hidden' name='findStr' value='${findStr}' />
		<input type='hidden' name='nowPage' value='${nowPage}' />
	</form>
</div>
<script>btnFunc();</script>
</body>
</html>