<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax_in_jquery</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h3>ajax in jquery</h3>
<input type='button' value='get' id='btnGet' />
<input type='button' value='post' id='btnPost' />
<input type='button' value='JSON' id='btnJSON' />
<input type='button' value='load' id='btnLoad' />
<input type='button' value='ajax' id='btnAjax' />
<form name='frm' id='frm'>
	<input type='text' name='findStr' id='findStr' value='j' />
	<input type='text' name='ea' value='1500' />
	<input type='text' name='price' value='500' />
</form>
<h3>Result</h3>
<div id='result'></div>
<script>
	$('#btnGet').click(function(){
		let findStr = $('#findStr').val();
		$.get('emp_select_result.jsp?findStr=' + findStr, function(data){
			$('#result').text(data);
		});
	});
	
	$('#btnPost').click(function(){
		let param = $('#frm').serialize();
		$.post('emp_select_result.jsp', param, function(data){
			$('#result').text(data);
		});
	});
	
	$('#btnLoad').click(function(){
		$('#result').load("member_insert_form.jsp");
	});
	
	$('#btnJSON').click(function(){
		let param = $('#frm').serialize();
		$.getJSON('emp_select_result.jsp', param, function(json){
			let str = '';
			for(d of json){
				str += '<li>아이디 : ' + d.eid + '</li>' + '<li>이름 : ' + d.fn + '</li><hr/>';
			}
			$('#result').html(str);
		});
	});
	$('#btnAjax').click(function(){
		$.ajax({
			url:'emp_select_result.jsp',
			type:'get',
			data:'findStr=' + $('#findStr').val(), //param을 넣어도 됨.
			dataType:'text',
			success:function(data){
				$('#result').text(data);
			}
		});
		
	});
	/* json타입으로도 가능.
	$('#btnAjax').click(function(){
		let param = $('#frm').serialize();
		let str = '';
		$.ajax({
			url:'emp_select_result.jsp',
			type:'get',
			data:param,
			dataType:'json',
			success:function(json){
				for(d of json){
					str += '<li>아이디 : ' + d.eid + '</li>' + '<li>이름 : ' + d.fn + '</li><hr/>';
				}
				$('#result').html(str);
			}
		});
	}); */
</script>

</body>
</html>