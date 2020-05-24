<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkbox</title>

<style>
	#result{
		border:1px solid #ff0000;
		padding:20px;
		box-sizing:border-box; /* padding을 주면 box-sizing을 하는 것이 좋음 */
		width:300px;
		height:100px;
	}
</style>

</head>
<body>

<h3>checkbox</h3>
<form name='frm'>
	<h3>가고싶은 산은?</h3>
	<label><input type='checkbox' name='mnt' value='백두산'>백두산</label>
	<label><input type='checkbox' name='mnt' value='설악산'>설악산</label>
	<label><input type='checkbox' name='mnt' value='한라산'>한라산</label>
	<label><input type='checkbox' name='mnt' value='아차산'>아차산</label>
	<label><input type='checkbox' name='mnt' value='금강산'>금강산</label>
	
	<h3>살고싶은 지역은?</h3>
	<label><input type='checkbox' name='city' value='강원도'>강원도</label>
	<label><input type='checkbox' name='city' value='경기도'>경기도</label>
	<label><input type='checkbox' name='city' value='전라도'>전라도</label>
	<label><input type='checkbox' name='city' value='충청도'>충청도</label>
	<label><input type='checkbox' name='city' value='제주도'>제주도</label>
	
	<h3>여행가고 싶은 나라는?</h3>
	<label><input type='checkbox' name='cty' value='유럽'>유럽</label>
	<label><input type='checkbox' name='cty' value='미국'>미국</label>
	<label><input type='checkbox' name='cty' value='터키'>터키</label>
	<label><input type='checkbox' name='cty' value='태국'>태국</label>
	<label><input type='checkbox' name='cty' value='라오스'>라오스</label>
	
	<input type='button' name='btn' value='결정' /> 
	
</form>

<div id='result'></div>

<script>
	let str = '';
	let r = document.getElementById('result');
	let mnt = [];
	let city = [];
	let cty = [];
	frm.btn.onclick = function(){
		//산의 선택여부 체크
		let mntFlag = false;
		mnt.length = 0; //or mnt = [];
		for(i=0; i<frm.mnt.length; i++){
			if(frm.mnt[i].checked){
				mnt.push(frm.mnt[i].value);
				mntFlag = true;
			}
		}
		if(mntFlag==false){
			alert('가고싶은 산을 선택하세요.');
			return;
		}	

		//살고싶은 지역 선택 여부 체크
		mntFlag = false;
		city.length = 0;
		for(i=0; i<frm.city.length; i++){
			if(frm.city[i].checked){
				city.push(frm.city[i].value);
				mntFlag = true;
			}
		}
		if(mntFlag==false){
			alert('살고 싶은 지역을 선택하세요.');
			return;
		}
		
		//가고싶은 나라 선택 여부 체크
		mntFlag = false;
		cty.length = 0;
		for(i=0; i<frm.cty.length; i++){
			if(frm.cty[i].checked){
				cty.push(frm.cty[i].value);
				mntFlag = true;
			}
		}
		if(mntFlag==false){
			alert('가고싶은 나라를 선택하세요.');
			return;
		}
		str = '<li>산이름 : ' + mnt + '<br/>'
			+ '<li>도시명 : ' + city + '<br/>'
			+ '<li>국가명 : ' + cty + '<br/>';
		r.innerHTML = str;
	}
</script>

</body>
</html>