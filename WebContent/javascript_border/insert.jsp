<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<style>
</style>
</head>
<body>

<h4>게시판 입력</h4>
<form name='brd'>
	<label>작성자</label>
	<input type='text' name='mName' /><br/>
	<label>제목</label>
	<input type='text' name='subject' /><br/>
	<textarea rows="10" cols="70" name='content'></textarea><br/>
	<input type='button' value='저장' name='btnSave' />
</form>
<script>
	brd.btnSave.onclick = function(){
		let num = localStorage.getItem('no');
		let serial = no; //순번
		let subject = brd.subject.value; //제목
		let mName = brd.mName.value; //작성자
		let now = new Date();
		let year = now.getFullYear();
		let month = now.getMonth()+1;
		let day = now.getDate();
		let mDate = `\${year}-\${month}-\${day}`; //작성일
		let content = brd.content.value; //내용
		let insert = [];
		let hit = 0; //조회수	
		let i = new Insert(++serial, subject, mName, mDate, content, hit);
		insert = JSON.stringify(i);
		localStorage.setItem(serial, insert);
		localStorage.setItem('no', serial);
	}
	
	function Insert(serial, subject, mName, mDate, content, hit){
		this.serial = serial;
		this.subject = subject;
		this.mName = mName;
		this.mDate = mDate;
		this.content = content;
		this.hit = hit;
	}
	
</script>

</body>
</html>