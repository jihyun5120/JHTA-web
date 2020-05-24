<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_slide</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	*{
		magin:0px;
		padding:0px;
	}
	#canvas{
		overflow:hidden;
		position:relative;
		width:600px;
		height:400px;
	}
	.slider{
		width:3000px;
		position:relative;
	}
	.image{
		float:left;
		width:600px;
		height:400px;
	}
	.text_panel{
		position:absolute;
		top:200px;
		left:50px; 
	}
	.text{
		position:absolute;
		width:250px;
		height:150px;
	}
	.control{
		position:absolute;
		top:380px;
		left:270px;
		height:13px;
		overflow:hidden;
	}
	.cButton{
		width:12px;
		height:46px;
		position:relative;
		float:left;
		cursor:pointer;
		background:url('../images/button.png');
		background-size:contain;
	}
	.cButton:hover{top:-16px;}
	.cButton:active{top:-31px;}
</style>
</head>
<body>

<h3>Test Header</h3>
<div id='canvas'>
	<div class='slider'>
		<img class='image' src='../images/밤하늘.jpg' />
		<img class='image' src='../images/강아지.PNG'/>
		<img class='image' src='../images/밤.gif'/>
		<img class='image' src='../images/바다.gif'/>
		<img class='image' src='../images/copy.png'/>
	</div>
	<div class='text_panel'>
		<div class='text'>
			<h1>Happy</h1>
			<p>The place where your imagination becomes reality.</p>
		</div>
		<div class='text'>
			<h1>Happy</h1>
			<p>The place where your imagination becomes reality.</p>
		</div>
		<div class='text' style='color:white'>
			<h1>Happy</h1>
			<p>The place where your imagination becomes reality.</p>
		</div>
		<div class='text'>
			<h1>Happy</h1>
			<p>The place where your imagination becomes reality.</p>
		</div>
		<div class='text'>
			<h1>Happy</h1>
			<p>The place where your imagination becomes reality.</p>
		</div>
	</div>
	<div class='control'>
		<div class='cButton'></div>
		<div class='cButton'></div>
		<div class='cButton'></div>
		<div class='cButton'></div>
		<div class='cButton'></div>
	</div>
</div>
<h3>Test Header</h3>
<script>
	//슬라이더를 움직여주는 함수
	function moveSlider(index){
		//슬라이더 이동
		var willMoveLeft = -(index*600);
		$('.slider').animate({
			'left':willMoveLeft}, 'slow');
		//cButton에 active 클래스를 부여 및 제거	
		$('.cButton[data-index=' + index + ']').addClass('active');
		$('.cButton[data-index!=' + index + ']').removeClass('active');
		//글자를 이동
		$('.text[data-index=' + index + ']').show().animate({
			left:0
		}, 'slow');
		$('.text[data-index!=' + index + ']').hide('slow', function(){
			$(this).css('left', -300);
		});
	}
	
	//초기 텍스트 위치 지정 및 data-index 할당
	$('.text').css('left', -300).each(function(index){
		$(this).attr('data-index', index);
	});
	
	//컨트롤 버튼의 클릭 리스너 지정 및 data-index 할당
	$('.cButton').each(function(index){
		$(this).attr('data-index', index);
	}).click(function(){
		var index = $(this).attr('data-index');
		moveSlider(index);
	});
	
	//초기 슬라이더 위치 지정
	var randomNumber = Math.round(Math.random()*4);
	moveSlider(randomNumber);
</script>

</body>
</html>