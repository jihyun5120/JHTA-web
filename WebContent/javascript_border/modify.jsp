<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
</head>
<body>

<h4>게시판 수정</h4>
<form name='brd'>
	<label>순번</label>
	<input type='text' name='serial' readonly/><br/>
	<label>작성자</label>
	<input type='text' name='mName' readonly/><br/>
	<label>제목</label>
	<input type='text' name='subject' /><br/>
	<textarea rows="10" cols="70" name='content'></textarea><br/>
	<input type='button' value='수정' name='btnModify' />
	<input type='button' value='목록' name='btnSelect' />
</form>
<script>
	let data = localStorage.getItem('element');
	let obj = localStorage.getItem(data);
	let str = JSON.parse(obj);
	if(obj != null){
		brd.serial.value = str.serial;
		brd.mName.value = str.mName;
		brd.subject.value = str.subject;
		brd.content.value = str.content;
	}
	
	function Modify(serial, subject, mName, mDate, content, hit){
		this.serial = serial;
		this.subject = subject;
		this.mName = mName;
		this.mDate = mDate;
		this.content = content;
		this.hit = hit;
	}
	
	brd.btnModify.onclick = function(){
		let flag = confirm("정말 수정하시겠습니까?");
		if(flag){
			let serial = brd.serial.value;
			let subject = brd.subject.value;
			let mName = brd.mName.value;
			let mDate = str.mDate;
			let content = brd.content.value;
			let hit = str.hit;
			let m = new Modify(serial, subject, mName, mDate, content, hit);
			modify = JSON.stringify(m);
			localStorage.setItem(serial, modify);
		}
	}
	
	brd.btnSelect.onclick = function(){
		location.href = 'select.jsp';
	}
</script>
</body>
</html>