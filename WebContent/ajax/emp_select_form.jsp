<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_select_form</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	#info{
		border:2px outset #FFBB00;
		width:400px;
		padding:10px;
		box-sizing:border-box;
		box-shadow:3px 3px 6px #999;
		border-left-width:30px;
		font-size: 1em;
	}
	form{
		margin: 15px 0px 5px 170px;
	}
	#result{
		display:inline-block;
		width:380px;
		height:200px;
		border:1px solid #EAEAEA;
		overflow:auto;
	}
	.header{
		border-bottom:1px solid #000;
		padding:3px;
		box-sizing:border-box;
		background-color:#FAED7D;
		font-family:휴먼매직체;
		font-weight:bold;
		font-size:1em;
	}
	.item{
		border-bottom:1px dotted #A6A6A6;
		padding:3px;
		box-sizing:border-box;
		background-color:#FFFFE4;
		font-size:0.6em;
		font-family:Lucida Sans;
	}
	span{
		display:inline-block;
	}
	.no{width:30px;}
	.eid{width:40px;}
	.fn{width:75px;}
	.s{width:50px;}
	.did{width:60px;}
	.dn{width:90px;}
</style>
</head>
<body>

<h1>사원조회</h1>
<div id='info'>문자열을 입력받아 employees 테이블에서 사번, 성명, 급여, 부서코드, 부서명을 조회하는 프로그램을 작성하시오. (데이터 형식 : json)</div>
<form id='frm'>
	<input type='text' name='findStr' id='findStr' />
	<input type='button' value='검색' id='btnFind' />
</form>
<div id='result'></div>
<script>
	 $('#frm').submit(function(){ //form의 submit : form의 있는 값들을 넘겨주는 역할
		$('#btnFind').click();
		return false;
	});
	
	$('#btnFind').click(function(){
		let v = $('#findStr').val();
		let url = 'emp_select_result.jsp?findStr=' + v;
		
		let xhr = new XMLHttpRequest();
		let cnt = 0;
		
		xhr.open('get', url);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				let temp = xhr.responseText;
				let data = JSON.parse(temp);
				let str = '';
				str = "<div class='header'>"
					+ "<span class='no'>No</span>"
					+ "<span class='eid'>사번</span>"
					+ "<span class='fn'>성명</span>"
					+ "<span class='s'>급여</span>"
					+ "<span class='did'>부서코드</span>"
					+ "<span class='dn'>부서명</span>"
					+ "</div>";
					
				for(let i=0; i<data.length; i++){
					cnt++;
					str += "<div class='item'>"
						+  "<span class='no'>" + cnt + "</span>"
						+  "<span class='eid'>" + data[i].eid + "</span>"
						+  "<span class='fn'>" + data[i].fn + "</span>"
						+  "<span class='s'>" + data[i].s + "</span>"
						+  "<span class='did'>" + data[i].did + "</span>"
						+  "<span class='dn'>" + data[i].dn + "</span>"
						+  "</div>";
					$('#result').html(str);
				};
			};
		};
		
	});
	

	
</script>
</body>
</html>