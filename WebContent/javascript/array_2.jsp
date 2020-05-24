<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_2</title>
<style>
	#info{
		border:2px outset #7777ff;
		padding:5px;
		box-sizing:border-box;
		box-shadow:3px 3px 6px #999;
		border-left-width:30px;
		font-family:배달의민족 주아;
		font-size:20px;
	}
	#result{
		border:10px double #FFB2D9;
		margin:5px;
		padding:10px;
		width:300px;
		height:300px;
		overflow:auto;
		border-radius:20px;
	}
	form>label{
		display:inline-block;
		width:50px;
	}
</style>
</head>
<body>
	
<h3>array_2</h3>
<p id='info'>
	폼을 사용하여 아이디, 성명, 국어, 영어 점수를 입력받아 총점과 평균을 계산하여 하나의 배열에 지정하시오.<br/>
	[ {'id':'park', 'name':'올라프', 'kor':90, 'eng':80, 'tot':170, 'avg':85}, {'id':'kim', 'name':'엘사', 'kor':90, 'eng':80, 'tot':170, 'avg':85} ] 
</p>
<form name='frm'>
	<label>아이디</label>
	<input type='text' name='id' size='10' /><br/>
	<label>성명</label>
	<input type='text' name='irum' size='10' /><br/>
	<label>국어</label>
	<input type='text' name='kor' size='7' /><br/>
	<label>영어</label>
	<input type='text' name='eng' size='7' /><br/>
	<p/>
	<input type='button' name='btn1' value='저장' />
	<input type='button' name='btn2' value='출력' />
</form>	
<div id='result'></div>
<script>
	let div = document.getElementById('result');
	let str ='';
	let ar = [];
	
	frm.btn1.onclick = function(){
		let id = frm.id.value;
		let irum = frm.irum.value;
		let k = frm.kor.value;
		let e = frm.eng.value;
		let t = Number(k) + Number(e);
		let a = t/2;
		let data = {'id':id, 'name':irum, 'kor':k, 'eng':e, 'tot':t, 'avg':a};
		
		ar.push(data);
	} 
	
	frm.btn2.onclick = function(){
		str = '';	
		for(v of ar){
			str += '아이디 : ' +  v.id + '<br/>성명 : ' + v.name + '<br/>국어 : ' + v.kor + '<br/>영어 : ' + v.eng
				+ '<br/>총점 : ' +  v.tot + '<br/>평균 : ' +  v.avg + '<br/><hr/>';
		}
		div.innerHTML = str;
	}
</script>

</body>
</html>