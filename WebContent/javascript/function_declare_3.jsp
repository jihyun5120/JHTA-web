<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>function_declare_3</title>
</head>
<body>

<h3>function_declare_3</h3>
<p id='info'>
	자바스크립트는 메소드의 중복선언을 하지 못하는 반면, 매개변수의 수를 가변적으로 사용함으로써 오버로딩을 구현한다.
</p>
<script>
	function Func(a, b, c){
		console.log('a', a);
		console.log('b', b);
		console.log('c', c);
		console.log('--------------');
	}
	Func(); //모두 undefined.
	Func(1); //Func(a)에만 1값이 들어가고 나머지 undefined.
	Func(1, 2); //Func(a, b)에 각각 1과 2값이 들어가고 Func(c)는 undefined.
	Func(1, 2, 3); //Func(a, b, c)에 각각 1과 2와 3값이 들어감. 
	Func(1, 2, 3, 4); ////Func(a, b, c)에 각각 1과 2와 3값이 들어가고 4는 자리가 없기때문에 값이 날아감.
	
	//arguments : 파라메터값을 배열로 저장하고 있는 객체 (비추!)
	function My(){
		console.log('---arguments test---');
		for(x of arguments){
			console.log(x);
		}
	}
	//매개변수가 없어도 arguments가 매개변수를 배열로 가지고 있기 때문에 매개변수로 전달된 값이 모두 출력됨.
	My('a');
	My(123, 456);
	My('a', 123, '가나다');
	
</script>

</body>
</html>