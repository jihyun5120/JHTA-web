<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if_2</title>
<style>
	#info{
		border:2px outset #7777ff;
		padding:10px;
		box-sizing:border-box;
		box-shadow:3px 3px 6px #999;
		border-left-width:30px;
	}
	form{
		margin-left:30px;
	}
	#result{
		width:245px;
		height:150px;
	}
</style>
</head>
<body>
<h3>if(2)</h3>
<p id='info'>
	정수 하나를 입력받아 90이상이면 '전액장학생' 70이상이면 '반액장학생' 70미만이면 '전액납부'가 있는 라디오버튼의 상태값을  변경하시오.
</p>
<form name='frm'>
	<input type='search' name='su' value='90' />
	<input type='button' name='btn' value='RUN' />
	<hr/>
	<lable><input type='radio' name='chk' value='전액장학생' />전액장학생</label>
	<lable><input type='radio' name='chk' value='반액장학생' />반액장학생</label>
	<lable><input type='radio' name='chk' value='전액납부생' />전액납부생</label>
</form> 
<script>
	frm.btn.onclick=function(){
		let su = Number(frm.su.value);
		if(su>=90){
			frm.chk[0].checked=true;
		}else if(su>=70){
			frm.chk[1].checked=true;
		}else{
			frm.chk[2].checked=true;
		}
	}
</script>
</body>
</html>