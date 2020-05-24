<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>zip</title>
<style>
	#sel{ width:230px;}
</style>
</head>
<body>

<h3>우편번호 검색</h3>
<select name='sel' size='10' id='sel'>
	<option value='11-111'>주소1</option>
	<option value='11-112'>주소2</option>
	<option value='11-113'>주소3</option>
	<option value='11-114'>주소4</option>
	<option value='11-115'>주소5</option>
	<option value='11-116'>주소6</option>
	<option value='11-117'>주소7</option>
	<option value='11-118'>주소8</option>
	<option value='11-119'>주소9</option>
	<option value='11-110'>주소10</option>
	<option value='11-121'>주소11</option>
	<option value='11-122'>주소12</option>
	<option value='11-123'>주소13</option>
	<option value='11-124'>주소14</option>
	<option value='11-125'>주소15</option>
</select>
<script> //zip.jsp
	let sel = document.getElementById('sel');
	sel.ondblclick = function(){
		let index = sel.selectedIndex;
		let zipCode = sel[index].value;
		let address = sel[index].text;
		
		window.opener.frm.zip.value = zipCode;
		window.opener.frm.addess1.value = address;
		self.close();
	}
</script>
</body>
</html>