<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html" charset="UTF-8">
<title>select</title>
<link rel='stylesheet' type='text/css' href='./css/index.css'>
<script src='./lib/jquery-3.4.1.js'></script>
<script src='./jsp_member/jsp_member.js'></script>
</head>
<body>

<div id='member_main'>
	<h3>회원조회</h3>	
	<form id='frm' name='frm' method='post'>
		<input type='button' id='btnInsert' value='회원등록' />
		<div>
			<input type='text' name='findStr' value='${param.findStr}'/>
			<input type='button' id='btnFind' name='btnFind' value='검색' />
			<input type='hidden' name='mId' />
			<input type='hidden' name='nowPage' id='nowPage' value='${empty param.nowPage? 1 : param.nowPage}' />
		</div>
	</form>
	<div id='title'>
		<span class='mId'>아이디</span>
		<span class='mName'>성명</span>
		<span class='rDate'>등록일</span>
		<span class='grade'>학번</span>
	</div>
	<div id='result'>
		<c:forEach var='vo' items='${list}'>
			<div class='item' onclick='view("${vo.mId}")'>
				<span class='mId'>${vo.mId}</span>
				<span class='mName'>${vo.mName}</span>
				<span class='rDate'>${vo.rDate}</span>
				<span class='grade'>${vo.grade}</span>
			</div>
		</c:forEach>
	</div>
	<div id='pageing'>
		<c:if test='${p.nowPage > p.blockSize}'> <!-- nowPage가 blockSize보다 크면 이전버튼을 보여줘라. -->
			<input type='button' value='이전' onclick='goPage(1)' />
		</c:if>
		
		<c:forEach var='i' begin='${p.startPage}' end='${p.endPage}'>		
			<input type='button' value='${i}' ${(i==p.nowPage)? "class='here'": ""} onclick='goPage(${i})' />
		</c:forEach>
		
		<c:if test='${p.nowPage < p.totPage}'> 
			<input type='button' value='다음' onclick='goPage(${p.nowPage + 1})' />
		</c:if>
	</div>
</div>
<script>btnFunc();</script>
<%
	if(request.getParameter("nowPage") == null){
		out.print("<script> goPage(1) </script>");
	}
%>

</body>
</html>