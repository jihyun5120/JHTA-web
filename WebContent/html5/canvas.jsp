<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>canvas</title>
<style>
.can {
	border:2px solid #0000ff;
}
</style>
</head>
<body>
<h4>RECT</h4>
	<canvas id='can1' class='can' width='300px' height='150px'></canvas>
	<script>
		let canvas = document.getElementById('can1');
		let ctx = canvas.getContext('2d');
		ctx.strokeStyle = 'rgb(255,0,0)'; //선의 색을 빨강으로 지정.
		ctx.strokeRect(50,50,70,70);
		
		ctx.fillStyle = 'rgb(255,255,0)';
		ctx.fillRect(150,50,70,70);
	</script>
<h4>RECT(반투명한 사각형)</h4>
	<canvas id='can2' class='can' width='300px' height='150px'></canvas>
	<script>
		canvas = document.getElementById('can2');
		ctx = canvas.getContext('2d');
		ctx.fillStyle = 'rgba(255,0,0,0.5)';
		ctx.fillRect(50,20,70,70);
		
		ctx.fillStyle = 'rgba(0,0,255,0.5)'
		ctx.fillRect(85,55,70,70);
		</script>
<h4>가로 막대그래프</h4>
	<canvas id='can3' class='can' width='300px' height='150px'></canvas>
	<script>
		canvas = document.getElementById('can3');
		ctx = canvas.getContext('2d');
		ctx.fillStyle = 'rgba(0,255,0,0.9)';
		ctx.fillRect(10,20,170,30);
		ctx.font='20px 궁서체';
		ctx.strokeText('150', 75, 42);
		
		ctx.fillStyle = 'rgba(255,0,0,0.9)';
		ctx.fillRect(10,60,270,30);
		ctx.font='20px 궁서체';
		ctx.strokeText('260', 130, 82);
		
		ctx.fillStyle = 'rgba(0,0,255,0.9)';
		ctx.fillRect(10,100,70,30);
		ctx.font='20px 궁서체';
		ctx.strokeText('60', 30, 122);
	</script>
<h4>삼각형</h4>
	<canvas id='can4' class='can' width='300px' height='150px'></canvas>
	<script>
		canvas = document.getElementById('can4');
		ctx = canvas.getContext('2d');
		ctx.strokeStyle='rgb(255,0,0)';
		ctx.beginPath();
			ctx.moveTo(150, 30);
			ctx.lineTo(100, 100);
			ctx.lineTo(200, 100);
			ctx.closePath();
		ctx.stroke();
	</script>
<h4>원(원호) 그리기</h4>
	<canvas id='can5' class='can' whidth='300px' height='450px'></canvas>
	<script>
		canvas = document.getElementById('can5');
		ctx = canvas.getContext('2d');
		ctx.beginPath();
		ctx.arc(75,75,60,0, Math.PI*1, true);
		ctx.closePath();
		ctx.stroke();
		
		ctx.beginPath();
		ctx.arc(225,75,60,0, Math.PI*2, true);
		ctx.stroke();
		ctx.closePath();
		
		//type2
		ctx.beginPath();
		ctx.moveTo(75, 270);
		ctx.arc(75,230,60,0,Math.PI*1, true);
		ctx.closePath();
		ctx.stroke();
		
		ctx.beginPath();
		ctx.moveTo(225, 210);
		ctx.arc(225,230,60,0,Math.PI*1, true);
		ctx.closePath();
		ctx.stroke();
		
		//type3
		ctx.beginPath();
		ctx.arc(75,370,50,Math.PI*1.5,Math.PI*0.5, true);
		ctx.closePath();
		ctx.stroke();
		
		ctx.beginPath();
		ctx.arc(225,370,50,Math.PI*0.5,Math.PI*1.5, true);
		ctx.closePath();
		ctx.stroke();
	</script>
</body>
</html>