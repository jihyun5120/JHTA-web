<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_filter_2</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h3>filter</h3>
<p id='info'>
	option을 선택한 후 5초가 지나면 선택된 항목이 alert창으로 표시됨.
</p>
<form id='frm'>
	<select>
		<option>한식</option>
		<option>중식</option>
		<option>양식</option>
		<option>일식</option>
		<option>간식</option>
	</select>
</form>
<script>
	$(function(){
		setTimeout(function(){
			
			//변수 선언
			let v = $('select>option:selected').val();
			
			//출력
			alert(v);
		}, 5000);
	});
</script>

</body>
</html>