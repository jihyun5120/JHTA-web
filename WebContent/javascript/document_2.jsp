<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>document_2</title>
<style>
	form>select{
		width:200px;
	}
</style>
</head>
<body>

<h3>출장가고 싶은 지역 동적 선택</h3>
<form name='frm'>
	<label>국가</label>
	<select name='cty' id='cty'></select>
	<label>지역</label>
	<select name='zone' id='zone'></select>
	<label>인원수</label>
	<select name='cnt' id='cnt'></select>
</form>
<script>
	function init(){
		let arrayCty = ['미국', '일본'];
		let arrayZone = [['LA', 'New York'], ['동경', '오사카']];
		let arrayCnt = [[1, 2, 3, 4], [5, 6, 8]];
		
		let cty = document.getElementById('cty'); //국가
		let zone = document.getElementById('zone'); //지역
		let cnt = document.getElementById('cnt'); //인원수
	
	
		//국가항목에 option추가
		for(i=0; i<arrayCty.length; i++){
			var op = document.createElement('option');
			var txt = document.createTextNode(arrayCty[i]);
		
			op.appendChild(txt);
			cty.appendChild(op);
		}
		
		//국가 선택이 되면 지역변경
		cty.onchange = function(){
			let index = cty.selectedIndex;
			zone.length = 0;
			for(i=0; i<arrayZone[index].length; i++){
				var txt = arrayZone[index][i];
				zone.options[i] = new Option(txt, txt);
			}
			zone.onchange();
		}
		
		//지역 선택이 되면 인원수 변경
		zone.onchange = function(){
			let index = zone.selectedIndex
			cnt.length = 0; //option초기화(초기화를 하지 않으면 전에 선택된 배열의 값이 다른 배열에 추가되어 나오기때문)
			for(i=0; i<arrayCnt[index].length; i++){
				var txt = arrayCnt[index][i];
				cnt.options[i] = new Option(txt, txt);
			}
		}
		cty.onchange(); 
		zone.onchange();
	}
	init();
</script>
</body>
</html>