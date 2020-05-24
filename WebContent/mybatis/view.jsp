<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="mybatis">
	<h2>자유 게시판 상세보기</h2>
	<form name="frm" id="frm_insert" method="post">
		<label>작성자</label>
		<input type="text" name="id" value="${vo.id}"/>
		<br/>
		<label>제목</label>
		<input type="text" name="subject" value="${vo.subject}"/>
		<br/>
		<textarea rows="10" cols="50" name="content">${vo.content}</textarea>
		<br/>
		<label>파일첨부</label>
		<div id="attList">
			<ul>
				<c:forEach var="i" items="${attList}">
					<li><a href="${i.sysFile}" download="${i.oriFile}">${i.oriFile}</a></li>
				</c:forEach>
			</ul>
		</div>
		<br/>
		<input type="button" id="btnModify" value="수정"/>
		<input type="button" id="btnDelete" value="삭제"/>
		<input type="button" id="btnRepl" value="댓글"/>
		<input type="button" id="btnList" value="취소"/>
		<br/>
		<input type="hidden" name="nowPage" value="${param.nowPage}"/>
		<input type="hidden" name="findStr" value="${param.findStr}"/>
		<input type="hidden" name="serial" value="${param.serial}"/>
		<input type="hidden" name="pSerial" value="${vo.serial}"/>
		<input type="hidden" name="pwd"/>

	</form>
</div>

</body>
</html>