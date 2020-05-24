<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
</head>
<body>

<div id="mybatis">
	<h2>자유 게시판</h2>
	<form name="frm" id="frm_select" method="post">
		<input type="button" value="입력" id="btnInsert"/>
		<div>
			<input type="text" name="findStr" value="${param.findStr }"/>
			<input type="button" id="btnFind" value="검색"/>
			<input type="text" name="nowPage" value="${param.nowPage }"/>
			<input type="hidden" name="serial" />
			<input type="hidden" name="v" />
		</div>
	</form>
	<div id="title">
		<span class="no">순번</span>
		<span class="subject">제목</span>
		<span class="id">작성자</span>
		<span class="mDate">작성일</span>
		<span class="hit">조회수</span>
	</div>
	<div id="table">
		<c:forEach var="i" items="${list}">
			<div class="row" onclick="view(${i.serial, this})">
				<span class="no">${i.serial}</span>
				<span class="subject">${i.subject} ${(i.attCnt > 0)? [i.attCnt] : ''}</span>
				<span class="id">${i.id}</span>
				<span class="mDate">${i.mDate}</span>
				<span class="hit">${i.hit}</span>
			</div>
		</c:forEach>
	</div>
	<div id="page">
		<c:if test="${p.startPage > p.blockSize}">
			<input type="button" value="이전" onclick="go(${p.startPage - 1})"/>
		</c:if>
		<c:forEach var="i" begin="${p.startPage}" end="${p.endPage}">
			<input type="button" value="${i}" onclick="go(${i})" class="${(param.nowPage == i) ? 'here' : ''}"/>
		</c:forEach>
		<c:if test="${p.totPage > p.endPage}">
			<input type="button" value="다음" onclick="go(${p.endPage + 1})"/>
		</c:if>
	</div>
</div>

</body>
</html>