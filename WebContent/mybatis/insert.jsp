<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
</head>
<body>

<div id="mybatis">
	<h2>게시물 작성</h2>
	<form name="frm" id="frm_insert" method="post" enctype="multipart/form-data">
		<label>작성자</label>
		<input type="text" name="id" value="choi"/>
		<br/>
		<label>제목</label>
		<input type="text" name="subject" value="안농!"/>
		<br/>
		<textarea rows="10" cols="50" name="content">하이루방가루</textarea>
		<br/>
		<label>비밀번호</label>
		<input type="password" name="pwd" value="1"/>
		<br/>
		<label>파일첨부</label>
		<input type="file" name="att" id="btnAtt" multiple/><!-- multiple : 동일한 폴더에 있는 파일을 여러개 선택할 수 있음. -->
		<fieldset id="attList"><legend>첨부된 파일 목록</legend></fieldset>
		<p/>
		<input type="button" id="btnRegister" value="저장"/>
		<input type="button" id="btnList" value="취소"/>
		<br/>
		<input type="hidden" name="nowPage" value="${param.nowPage }"/>
		<input type="hidden" name="findStr" value="${param.findStr }"/>
	</form>
</div>

</body>
</html>