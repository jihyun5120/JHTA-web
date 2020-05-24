<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member_modify</title>
</head>
<body>

<div id='modify'>
	<h3>회원가입</h3>
	<form name='frm' id='frm'>
		<label>아이디</label><br/>
		<input type='text' name='mId' readonly/>
		<br/>
		<label>성명</label><br/>
		<input type='text' name='mName' />
		<br/>
		<label>등록일</label><br/>
		<input type='date' name='rDate' />
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
	</form>
</div>
<script>insert();</script>

</body>
</html>