<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declare</title>

<style>
	p>div:nth-child(2n-1){ color:red; }
</style>

<script> /* html태그사용불가 */
	function gugu(){
		let dan = 5;
		let i = 0 ;
		let r = 0;
		let p = document.getElementById('result');
		p.innerHTML = ' ';
		for(i=1; i<10; i++){
			r = '<div>' + dan + '*' + i + '=' + (dan*i) + '</div>';
			/* document.write(r);
			document.write('<br/>'); */
			p.innerHTML = p.innerHTML + r;	
		}
}
</script>

</head>
<body>
	<input type='button' value='OK' onclick='alert("OK")' />
	<input type='button' value='OK' onclick='javascript:a=10, b=20, c=a+b; alert(c)' /> <!-- 이렇게는 잘 사용하지X -->
	<input type='button' value='구구단' onclick='gugu()' />
	<p id='result'></p>
<script>
	document.write('최지현'); // 브라우저 바탕에 출력 
	console.log('hi....', '최지현'); //콘솔에 출력 
</script>

</body>
</html>