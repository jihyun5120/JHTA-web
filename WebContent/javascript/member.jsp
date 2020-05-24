<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member</title>
<script src='http://dmaps.daum.net/map_js_init/postcode.v2.js'></script>
</head>
<body>

<h3>회원가입</h3>
<form name='frm'>
	<lable>우편번호</lable>
	<input type='text' size='7' name='zip' />
	<input type='button' value='우편번호검색' name='btn1' />
	<input type='button' value='다음 우편번호검색' name='btn2' />
	<br/>
	<input type='text' size='60' name='address1' /><br/>
	<lable>상세주소</lable>
	<input type='text' size='40' name='address2' />
</form>

<script> //member.jsp
	frm.btn1.onclick = function(){ //간단하게 만든 우편번호 검색
		let w = window.open('zip.jsp', 'w', 'width:280px, height:280px'); //새로운 창으로 열기
	}
	
	frm.btn2.onclick = function(){ //daum api(다음 우편번호 검색)
		new daum.Postcode({
			oncomplete:function(data){
				frm.zip.value = data.zonecode;
				frm.address1.value = data.address;
			}
		}).open();
	}
</script>

</body>
</html>