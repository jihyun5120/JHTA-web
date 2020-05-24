<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="UTF-8">
<title>view</title>
<script src='./lib/jquery-3.4.1.js'></script>
<script src='./jsp_member/jsp_member.js'></script>
</head>
<body>

<h3>회원 상세보기</h3>
<form id='frm' name='frm' method='post' >
	<label>아이디</label><br/>
	<input type='text' name='mId' value='${vo.mId}' readonly/>
	<br/>
	<label>성명</label><br/>
	<input type='text' name='mName' value='${vo.mName}' readonly/>
	<br/>
	<label>등록일</label><br/>
	<input type='date' name='rDate' value='${vo.rDate}' readonly/>
	<br/>
	<label>학번</label><br/>
	<select name='grade' >
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
	<img width='120px' height='150px' id='photo' src='./upload/${vo.photos[0].sysFile}'>
	<input type='button' value='수정' id='btnModify' />
	<input type='button' value='삭제' id='btnDelete' />
	<input type='button' value='목록' id='btnList' />
	<input type='hidden' name='findStr' value='${param.findStr}' />
	<input type='hidden' name='nowPage' id='nowPage' value='${param.nowPage}' />
	<input type='hidden' name='pwd' id='pwd'/>
	<input type='hidden' name='flag' id='flag'/>
</form>
<script>
	frm.grade.selectedIndex = '${vo.grade}' - 1;
	btnFunc();
</script>
<%
	if(request.getAttribute("sysFile") == null){
		out.print("<script> nPhoto() </script>");
	}
%>

</body>
</html>