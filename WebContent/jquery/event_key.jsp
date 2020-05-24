<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_key</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<div>
		<p>집에 가고 싶은 이유를 작성하시오.</p>
		<h1>150</h1>
		<textarea rows="5" cols="70"></textarea>
	</div>
<script>
	$('textarea').keyup(function(){ //키보드를 뗄 때 발생
		//남은 글자 수 구하기
		let inputLength = $(this).val().length; //this는 textarea.
		let remain = 150 - inputLength;
		
		//문서 객체에 입력
		$('h1').html(remain);
		
		//문서 객체의 색상을 변경
		if(remain >= 0){
			$('h1').css('color', 'black');
		}else{
			$('h1').css('color', 'red');
		}
	});
</script>

</body>
</html>