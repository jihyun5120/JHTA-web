<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="mybatis">
	<h2>자유 게시판 수정</h2>
	<form name="frm" id="frm_insert" method="post" enctype="multipart/form-data">
		<label>작성자</label>
		<input type="text" name="id" value="choi"/>
		<br/>
		<label>제목</label>
		<input type="text" name="subject" value="${vo.subject}"/>
		<br/>
		<textarea rows="10" cols="50" name="content">${vo.content}</textarea>
		<br/>
		<br/>
		<label>파일첨부</label>
		<input type="file" name="att" id="btnAtt" multiple/><!-- multiple : 동일한 폴더에 있는 파일을 여러개 선택할 수 있음. -->
		<fieldset id="attList"><legend>첨부할 파일 목록</legend></fieldset>
		<p/>
		<fieldset><legend>첨부된 파일 목록</legend>
			<c:forEach var="i" items="${attList}">
				<div>
					<label style="width:auto;">${i.oriFile}</label>
					<input type="checkbox" name="delFile" value="${i.sysFile}" onclick="delCheck(this)"/>
				</div>
			</c:forEach>
		</fieldset>
		<p/>
		<input type="button" id="btnUpdate" value="저장"/>
		<input type="button" id="btnList" value="취소"/>
		<br/>
		<input type="text" name="nowPage" value="${param.nowPage}"/>
		<input type="text" name="findStr" value="${param.findStr}"/>
		<input type="text" name="serial" value="${vo.serial}"/>
		<input type="text" name="hit"/>
		<input type="text" name="pwd" />
	</form>
</div>
