<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="UTF-8">
<title>delete_result</title>
<script src='./lib/jquery-3.4.1.js'></script>
<script src='./jsp_member/jsp_member.js'></script>
</head>
<body>
${msg}
<form id='frm' name='frm' method='post'>
	<input type='button' id='btnList' value='목록' />
	<input type='hidden' name='findStr' value='${param.findStr}' />
	<input type='hidden' name='nowPage' value='${param.nowPage}' />
</form>
<script>btnFunc();</script>
</body>
</html>