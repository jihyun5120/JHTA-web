<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="UTF-8">
<title>modify</title>
<script src='./lib/jquery-3.4.1.js'></script>
<script src='./jsp_member/jsp_member.js'></script>
</head>
<body>

<h3>회원수정</h3>
<form id='frm' name='frm' method='post' enctype='multipart/form-data'>
	<label>아이디</label><br/>
	<input type='text' name='mId' value='${vo.mId}'/>
	<br/>
	<label>성명</label><br/>
	<input type='text' name='mName' value='${vo.mName}'/>
	<br/>
	<label>등록일</label><br/>
	<input type='date' name='rDate' value='${vo.rDate}'/>
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
	<c:choose>
		<c:when test='${empty vo.photos[0].sysFile}'>
			<img width='120px' height='150px' id='photo' src='./images/profile.PNG'/>
		</c:when>
		<c:otherwise>
			<c:forEach var='item' items='${vo.photos}'>
				<img width='120px' height='150px' id='photo' src='./upload/${item.sysFile}'/>
			</c:forEach>
		</c:otherwise>
	</c:choose>
	<label id='lPhoto'>증명사진</label>
	<input type='file' id='btnPhoto' name='photo' />
	<input type='button' value='수정' id='btnUpdate' />
	<input type='button' value='목록' id='btnList' />
	<input type='button' value='X' id='btnPdel' />
	<input type='hidden' name='findStr' value='${param.findStr}' />
	<input type='hidden' name='nowPage' value='${param.nowPage}' />
	<input type='hidden' name='pwd' value='${vo.pwd}'/>
	<input type='hidden' name='flag' id='flag'/>
</form>
<script>
	frm.grade.selectedIndex = Number(${vo.grade} - 1);
	btnFunc();
</script>

</body>
</html>