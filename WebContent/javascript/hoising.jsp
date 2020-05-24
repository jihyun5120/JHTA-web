<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hoising</title>
</head>
<body>

<h3>hoising</h3>
	변수나 함수를 선언하기 전에 사용가능하도록 메모리에 미리 상주시킨다는 의미.
<script>
	//변수의 hoising
	irum = 'hong';
	var irum; //var는 hoising 되기때문에 사용전에 메모리에 올라감.
	console.log('irum : ', irum);
	
	let age = 0;
	age = 18; //let은 hoising이 되지 않기 때문에 사용 전에 반드시 선언해야 함.
	console.log('age : ', age); //'age' before initialization.
	
	
	a(); //사용되기도 전에 메모리에 올라가버림. (이렇게는 잘 사용X)
	function a(){ 
		console.log('hoising된 함수')
	}
	
	f(); //not defined.
	f = function(){
		console.log('hoising되지 않은 함수');
	}
</script>	

</body>
</html>