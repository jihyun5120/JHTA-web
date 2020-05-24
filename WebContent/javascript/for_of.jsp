<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for_of</title>
<style>
	#info{
		border:2px solid #FFB2D9;
		padding:10px;
		box-sizing:border-box;
		border-left-width:30px;
		font-family:12롯데마트행복Medium;
	}
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
<h3>for_of</h3>
<p id='info'>
	배열의 정수를 임의의 개수를 지정한 후 'for of'를 사용하여 최대값과 최소값을 검색하여 div에 출력하시오.
</p>

<div id='result'></div>

<script>
	let s = [1, 4, 54, 55, 223, 23];
	let div = document.getElementById('result');
	let max = s[0];
	let min = s[0];
	for(let v of s){
		if(max<v){
			max = v;
		}
		if(min>v){
			min = v;
		}
	}
	
	div.innerHTML = '<li>최대값 : ' + max + '\n' + '<li>최소값 : ' + min; 
</script>

</body>
</html>