<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_menu</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	#main{
		text-align:center;
		border:4px solid #003399;
		padding:5px;
		box-sizing:border-box;
		width:500px;
		height:100px;
		background-color:#1F50B5;
		border-radius:15px;
		color:#ffffff;
		font-family:휴먼옛체;
		position:relative;
	}
	.a{
		float:left;
	}
	.menu{
		display:inline-block;
		padding:5px;
		box-sizing:border-box;
		margin-top:5px;
	}
	.subM{
		display:none;
		cursor:pointer;
		background-color:yellow;
		font-weight:bold;
		list-style:none;
		border-radius:10px;
		background-color:#5586EB;
		position:absolute; /* 속성을 가지고 있지 않은 부모를 기준(relative)으로 움직임. 위치가 없어서 위치를 잡아줘야 함 */
   		width:70px;
   		top:53px;
	}
</style>
</head>
<body>

<h3>메인 메뉴를 클릭하면 하위메뉴가 애니메이션 효과와 함께 보여지거나 사라지게 작업</h3>
<div id='main'><span>메뉴</span><br/>
	<div class='a'>
		<div class='menu'>안녕안녕1
			<div class='subM'>
				<li>1</li>
				<li>2</li>
				<li>3</li>
			</div>
		</div>
	</div>
	<div class='a'>
		<div class='menu'>안녕안녕2
			<div class='subM'>
				<li>1</li>
				<li>2</li>
				<li>3</li>
			</div>	
		</div>
	</div>
	<div class='a'>
		<div class='menu'>안녕안녕3
			<div class='subM'>
				<li>1</li>
				<li>2</li>
				<li>3</li>
			</div>
		</div>
	</div>
	<div class='a'>
		<div class='menu'>안녕안녕4
			<div class='subM'>
				<li>1</li>
				<li>2</li>
				<li>3</li>
			</div>
		</div>
	</div>
	<div class='a'>
		<div class='menu'>안녕안녕5
			<div class='subM'>
				<li>1</li>
				<li>2</li>
				<li>3</li>
			</div>
		</div>
	</div>
</div>
<script>
	$('.a').hover(function(){
		$(this).find('.subM').slideToggle(500);
	}, function(){
		$(this).find('.subM').slideToggle(500);
	});
</script>
</body>
</html>