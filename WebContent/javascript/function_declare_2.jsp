<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>function_declare_2</title>

<style>
	#result{
		border:4px double #3DB7CC;
		margin:10px;
		padding:10px;
		box-sizing:border-box;
		font-family:나눔바른고딕;
	}
</style>

</head>
<body>

<h3>function_declare_2</h3>
<form name='frm'>
	<label><input type='checkbox' name='food' checked value='곱창' />곱창</label>
	<label><input type='checkbox' name='food' value='돼지껍데기' />돼지껍데기</label>
	<label><input type='checkbox' name='food' value='회' />회</label>
	<label><input type='checkbox' name='food' value='새우장' />새우장</label>
	<label><input type='checkbox' name='food' value='랍스타' />랍스타</label>
	<p/>
	<input type='button' name='btn1' value='익명형' />
	<input type='button' name='btn2' value='call back' />
	<input type='button' name='btn3' value='함수적' />
	<input type='button' name='btn4' value='선언적' />
	<input type='button' name='btn5' value='화살표' />
</form>

<div id='result'></div>

<script> 
	let food = [];
	let str = '';
	let div = document.getElementById('result');
	
	//공통 호출 함수
	function Gen(){
		food.length = 0; //배열의 초기화
		for(v of frm.food){ //v에는 checkbox자체가 대입
			if(v.checked){
				food.push(v.value); //체크되어있는 checkbox의 value를 food배열에 넣음.
			}
		}
		return food;
	}
	
	//callback 호출
	function callback(){
		str = '[callback 함수]' + '<br/>';
		div.innerHTML = str + '먹고싶은 음식 : ' + Gen();
	}
	
	
	//1. 즉시실행 함수
	( function(){
		str = '[즉시 실행함수]' + '<br/>';
		div.innerHTML = str + '먹고싶은 음식 : ' + Gen();
	} () );
	
	//2. 익명형 함수
	frm.btn1.onclick = function(){
		str = '[익명형 함수]' + '<br/>';
		div.innerHTML = str + '먹고싶은 음식 : ' + Gen();
	}
	
	//3. call back 함수
	frm.btn2.onclick = callback;
	
	//4. 함수식
	let func = function(){
		food.length = 0; //배열의 초기화
		for(v of frm.food){ //v에는 checkbox자체가 대입
			if(v.checked){
				food.push(v.value); //체크되어있는 checkbox의 value를 food배열에 넣음.
			}
		}
		str = '[함수식]' + '<br/>';
		div.innerHTML = str + '먹고싶은 음식 : ' + Gen();
	}
	frm.btn3.onclick = func;
	
	//5. 선언적 함수 (비추!)
	//호출되는 function Gen{}의 유형이 선언적 함수
	frm.btn4.onclick = function(){
		str = '[선억적 함수]' + '<br/>';
		div.innerHTML = str + '먹고싶은 음식 : ' + Gen();
	}
	
	//6. 화살표 함수
	//원래 구조 :  ()=>{}
	let arrow = ()=>{
		str = '[화살표 함수]' + '<br/>';
		div.innerHTML = str + '먹고싶은 음식 : ' + Gen();
	}
	frm.btn5.onclick = arrow;
</script>

</body>
</html>