<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set_thema</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	#main{
		border-radius:20px;
		padding:10px;
		box-sizing:border-box;
		font-family:
	}
	#subject{
		margin:5px;
	}
	#content{
		margin:5px;
	}
	.main_black{ border: 5px double #000000;}
	.subject_black{
		border: 2px solid #000000;
		background-color:#353535;
		color:#ffffff;
	}
	.content_black{
		border: 2px solid #000000;
		background-color:#212121;
		color:#ffffff;
	}
	.main_sky{border: 5px double #00D8FF;}
	.subject_sky{
		border: 2px solid #00D8FF;
		background-color:#5CD1E5;
		color:#D4F4FA;	
	}
	.content_sky{
		border: 2px solid #00D8FF;
		background-color:#3DB7CC;
		color:#D4F4FA;
	}
	.main_land{
		border: 5px double #FFBB00;
	}
	.subject_land{
		border: 2px solid #FFBB00;
		background-color:#AB8212;
		color:#FAECC5;
		
	}
	.content_land{
		border: 2px solid #FFBB00;
		background-color:#633A00;
		color:#FAECC5;
	}
</style>
</head>
<body>

<div id='main'>
	<div id='subject'>제목</div>
	<div id='content'>내용</div>
</div>

<button id='btn1'>흑백테마</button>
<button id='btn2'>하늘테마</button>
<button id='btn3'>땅테마</button>

<script>
	$('#btn1').click(function(){
		$('#main').attr('class', 'main_black');
		$('#subject').attr('class', 'subject_black');
		$('#subject').html('흑백');
		$('#content').attr('class', 'content_black');
		$('#content').html('흑백 테마입니다.');
	});
	$('#btn2').click(function(){
		$('#main').attr('class', 'main_sky');
		$('#subject').attr('class', 'subject_sky');
		$('#subject').html('하늘');
		$('#content').attr('class', 'content_sky');
		$('#content').html('하늘 테마입니다.');
	});
	$('#btn3').click(function(){
		$('#main').attr('class', 'main_land');
		$('#subject').attr('class', 'subject_land');
		$('#subject').text('땅');
		$('#content').attr('class', 'content_land');
		$('#content').text('땅 테마입니다.');
	});
</script>

</body>
</html>