<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_complete</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	#sel { width: 166px;}
	.sel { display: none;} /*select 상자를 숨겨놨다가 값이 있으면 뜨도록.*/
</style>
</head>
<body>

<h3>사원정보 조회(자동완성 기능)</h3>
<form name='frm' id='frm'>
	<input type='text' name='findStr' id='findStr' value='k' tabIndex='10' />
	<input type='button' name='btn' id='btn' value='검색' />
	<br/>
	<select name='sel' id='sel'class='sel' size='20' tabindex='11'></select>
</form>
<script>
	$('#btn').click(function(){
		$('#findStr').keyup();
	})
	
	$('#findStr').keyup(function(){
		let param = $('#frm').serialize();
		$.getJSON('emp_select_result.jsp', param, function(json){
			frm.sel.length = 0;
			if(json.length>0){
				$('#sel').removeClass(); //값이 있으면  sel이 나오도록
			}else{
				$('#sel').addClass('sel'); //값이 없으면 sel을 숨기도록
			}
			for(i=0; i<json.length; i++){
				let d = json[i];
				let op = new Option(d.eid + " ( " + d.fn + " ) ", d.fn);
				frm.sel.options[i] = op;
			}
			frm.sel.selectedIndex=0;
		})
	});
	$('#sel').dblclick(function(){ //sel상자가 더블클릭되면.
		let temp = $(this).val();
		$('#findStr').val(temp);
	});
</script>

</body>
</html>