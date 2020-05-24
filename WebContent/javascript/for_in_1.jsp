<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for_in</title>
</head>
<body>

<h3>for_in</h3>
<p id='info'>향상된 for문</p>
<input type='button' value='for_in' id='btnIn' />
<input type='button' value='for_of' id='btnOf' />

<script>
	let p = document.getElementById('info');
	let btnIn = document.getElementById('btnIn');
	let btnOf = document.getElementById('btnOf');
	
	btnIn.onclick = function(){
		console.log('for in---------------');
		let cnt = 0;
		let array = ['a', 'b', 'c', 'd', 'e'];
		for(x in array){
			cnt++;
			console.log(cnt + ':' + x, array[x]); //인덱스번째로 출력
		}
	}
	btnOf.onclick = function(){
		console.log('for of---------------');
		let cnt = 0;
		let array = ['a', 'b', 'c', 'd', 'e'];
		for(x of array){
			cnt++;
			console.log(cnt + ':' + x); //인덱스번호가 없어 다이렉트로 출력
		}
	}
</script>

</body>
</html>