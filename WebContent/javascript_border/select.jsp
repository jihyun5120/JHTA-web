<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
</head>
<body>

<h4>게시판 목록</h4>
<form name='brd'>
	<input type='text' name='findStr' />
	<input type='button' name = 'btnSearch' value='검색' />	
</form>
<div id='title'>
	<span class='serial'>No</span>
	<span class='subject'>제목</span>
	<span class='mName'>작성자</span>
	<span class='mDate'>작성일</span>
	<span class='hit'>조회수</span>
</div>
<div id='list'></div>
<script>
	let div = document.getElementById('list');
	let num = localStorage.getItem('no');
	let list = '';
	let str = [];
		for(i=1; i<=num; i++){
			let obj = localStorage.getItem(i);
			str = JSON.parse(obj);
			if(obj != null){
				list += `<div class='items'>
							<span class='serial'>\${str.serial}</span>
							<a href='view.jsp' onclick=getElement(\${str.serial})><span class='subject')>\${str.subject}</span></a>
							<span class='mName'>\${str.mName}</span>
							<span class='mDate'>\${str.mDate}</span>
							<span class='hit'>\${str.hit}</span>
						</div><br/>`; 
				div.innerHTML = list;
			}
		}
			brd.btnSearch.onclick = function(){
				list = '';
				for(i=1; i<=num; i++){
					let obj = localStorage.getItem(i);
					if(obj != null){
					str = JSON.parse(obj);
					let findStr = brd.findStr.value;
						if(findStr != ''){
							if(str.subject.indexOf(findStr) != -1){
								list += `<div class='items'>
									<span class='serial'>\${str.serial}</span>
									<a href='view.jsp' onclick=getElement(\${str.serial})><span class='subject'>\${str.subject}</span></a>
									<span class='mName'>\${str.mName}</span>
									<span class='mDate'>\${str.mDate}</span>
									<span class='hit'>\${str.hit}</span>
								</div><br/>`; 
								div.innerHTML = list;
								flag = true;
								console.log(flag);
							}
						}else{
							alert('검색어를 입력해주세요.');
							break;
						}
					}
				}
				
			}
			function getElement(serial){
				let data = serial;
				localStorage.setItem('element', data);
			}
		
	
</script>
</body>
</html>