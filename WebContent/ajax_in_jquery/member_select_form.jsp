<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_select</title>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='member.js'></script>
</head>
<body>

<form name='frm' id='frm'>
	<input type='button' value='회원추가' id='btnInsert' />
	<div>
		<input type='text' name='findStr' id='findStr' />
		<input type='button' value='검색' id='btnFind' />
	</div>
</form>

<div class='header'>
	<span class='mid'>학번</span>
	<span class='mname'>성명</span>
	<span class='rdate'>등록일</span>
	<span class='grade'>학년</span>
</div>

<script>select();/* 페이지가 켜질 때 바로 조회내역을 띄우기 위해 */</script>
</body>

</html>