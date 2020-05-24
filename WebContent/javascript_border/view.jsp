<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
<style>
	#content{
		border:2px groove #B2CCFF;
		border-radius:10px;
		padding:10px;
		margin:10px;
		width:250px;
		height:360px;
		box-sizing:border-box;
		overflow:auto;
		font-family:나눔손글씨 펜;
	}
</style>
</head>
<body>

<h4>게시판 상세보기</h4>
<form name='brd'>
	<label>순번</label>
	<input type='text' name='serial' readonly/>
	<label>작성자</label>
	<input type='text' name='mName' readonly /><br/>
	<label>제목</label>
	<input type='text' name='subject' readonly /><br/>
	<div id='content'></div><br/>
	<input type='button' value='수정' name='btnModify' />
	<input type='button' value='삭제' name='btnDelete' />
	<input type='button' value='목록' name='btnSelect' />
</form>
<script>
	let data = localStorage.getItem('element');
	let obj = localStorage.getItem(data);
	let div = document.getElementById('content');
		str = JSON.parse(obj);
	if(obj != null){
		brd.serial.value = str.serial;
		brd.mName.value = str.mName;
		brd.subject.value = str.subject;
		div.innerHTML = str.content;
	}
	
	brd.btnDelete.onclick = function(){
		localStorage.removeItem(date);
	}
	
	brd.btnSelect.onclick = function(){
		location.href = 'select.jsp';
	}
</script>
</body>
</html>