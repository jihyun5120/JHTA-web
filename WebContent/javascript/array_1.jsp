<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_1</title>
</head>
<body>

<h3>자바스크립트를 배열</h3>
<p id='info'>
	<ul>
		<li>배열의 길이는 가변적이다.</li>
		<li>생성 방법 1 : let a = new Array()</li>
		<li>생성 방법 2 : let a = new Array(1, 2, 3)</li>
		<li>생성 방법 3 : let a = []</li>
		<li>생성 방법 4 : let a = {1, 2, 3}</li>
	</ul>
	<li>다차원 배열은 1차원 배열의 요소를 다시 1차원 배열로 선언</li>
	<dd>let a = new Array();<br/>
		a[0] = new Array();</dd>
</p>
<script>
	//기본형
	let a = [1, 2, 3, 4, 5];
	console.log(a[0]); //1
	console.log(a); //[1, 2, 3, 4, 5]
	
	//map형
	let b = {"id":"hong", "name":"홍길동", "age":"40"};
	console.log('id', b.id); //hong
	console.log('성명 : ', b.name); //홍길동
	console.log('나이 : ', b.age); //40
	
	//기본형의 2차원 배열
	let c = [ [1, 2, 3,], [4, 5, 6] ];
	console.log('1행 : ', c[0]); //[1, 2, 3]
	console.log('2행 : ', c[1]); //[4, 5, 6]
	console.log('1행1열 : ', c[0][0]); //1
	
	//배열안에 map구조
	let d = [ 1, 2, 3, {"name":"park", "score":"60"}, 4, 5, 6 ];
	console.log('d[0] : ', d[0]); //1
	console.log('d[4] : ', d[4]); //4
	console.log('d[3].name : ', d[3].name); //park
	console.log('d[3].score : ', d[3].score); //60
	
	//map 안에 배열
	let e = {"id":"hong", "score":[50, 80, 60, 30]};
	console.log('id : ', e.id); //hong
	console.log('score : ', e.score); //[50, 80, 60, 30]
	console.log('score[0] : ', e.score[0]); //50
</script>

</body>
</html>