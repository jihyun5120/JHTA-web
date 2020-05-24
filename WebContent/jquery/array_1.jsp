<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_1</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<h3> 배열사용_1</h3>
<p id='info'>
	<li>$.each(function(index, item{...}))</li>
	<li>$(selector).each(function(index, item{...}))</li>
</p>
<script>
	$(document).ready(function(){
		let array1 = [43, 3, 35, 1, 5, 2, 4, 526, 2, 34, 646, 133];
		//array1에서 100보다 큰 수만
		$(array1).each(function(index, item){
			if(item>100){
				console.log(index + ' : ' + item);
			}
		});
	});
</script>

</body>
</html>