<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>var_let</title>
</head>
<body>

<script>
	for(var i=1; i<=100; i++){}
	console.log('i', i); //101출력
	
	for(let i=1; i<=100; i++){}
	console.log('i', i); //not defined
	
	var v1 = 100;
	var v1 = 200; //재선언 가능
	
	let l1 = 100;
	let l1 = 200; //재선언 불가능(already been declared)
	
	function a(){
		var irum = 'hong'; //전역스코프라는 의미가 전역변수는 아님. (전역변수  :  irum = 'hong';)
	}
	
	function b(){
		alert(irum); //irum is not defined
	}
	
	a();
	b();
</script>

</body>
</html>