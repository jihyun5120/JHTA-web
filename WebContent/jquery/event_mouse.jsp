<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_mouse</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
<canvas id='canvas' style='border:3px solid black' width='700' height='400' ></canvas>
<script> 
	let canvas = document.getElementById('canvas');
	let context = canvas.getContext('2d');
	context.strokeStyle = 'rgb(255,0,0)';
	let flag = false; //mousedown일 때 true, mouseup일 때 false
	$(canvas).on({
		mousemove:function(event){
			//위치를 얻어냄
			if(flag){				
				let position = $(this).offset();
				let x = event.pageX - position.left;
				let y = event.pageY - position.top;
				
				//선 그리기
				context.lineTo(x, y);
				context.stroke();
			}
		},
		mousedown:function(event){
			//위치를 얻어냄			
			let position = $(this).offset();
			let x = event.pageX - position.left;
			let y = event.pageY - position.top;
				
			//선 그리기
			context.beginPath();
			context.moveTo(x, y);
			flag = true;
		}, 
		mouseup:function(event){
			let position = $(this).offset();
			let x = event.pageX - position.left;
			let y = event.pageY - position.top;
			
			//선 그리기
			context.beginPath();
			context.moveTo(x, y);
			flag = false;
		}
	});
</script>

</body>
</html>