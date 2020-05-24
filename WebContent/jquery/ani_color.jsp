<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_color</title>
<script src='../lib/jquery-3.4.1.js'>//얘를 제일 첫번째로</script>
<script
  src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"
  integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
  crossorigin="anonymous">//ui관련은 두번째</script>
<style>
	.reverse{
		color:#ffffff;
		background-color:#000000;
	}
</style>
</head>
<body>

<h3>문단에 마우스를 올리면 바탕색 변경</h3>
<div>
	<h1>문단 1</h1>
	<p>내용 1</p>
</div>
<div>
	<h1>문단 2</h1>
	<p>내용 2</p>
</div>
<div>
	<h1>문단 3</h1>
	<p>내용 3</p>
</div>

<script>
	$('div').hover(function(){ //div에 마우스를 올리면 addClass, 떼면 removeClass
		$(this).addClass('reverse', 1000);
	}, function(){
		$(this).removeClass('reverse', 1000);
		
	});
</script>

</body>
</html>