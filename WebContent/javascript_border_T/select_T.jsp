<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css' href='board.css'/>
</head>
<body>

<div id='brd_select'>
	<h4>게시판 목록</h4>
	<form name='brd'>
		<input type='button' value='입력' name='btnInsert'/>
		<input type='text' name='findStr' id='findStr'>
		<input type='button' value='검색' name='btnSearch' id='btnSearch'/>
	</form>
	<div id='title'>
		<span class='serial'>No</span>
		<span class='subject' >제목</span>
		<span class='mName'>작성자</span>
		<span class='mDate'>작성일</span>
		<span class='hit'>조회수</span>
	</div>
	<div id='list'></div>
</div>

<script src='board.js'></script>
<script>
	brd.btnSearch.click(); //입력하려고 이동했다가 다시 목록으로 오면 다시 목록리스트가 뜰 수 있도록.(on이 안 붙어있으면 이벤트 -> 클릭이벤트를 강제로 줘라!)
</script>	

</body>
</html>



