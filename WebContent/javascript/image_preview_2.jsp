<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image_preview_2</title>
<style>
	#btnFile{
		display:none; /* 버튼 안 보이게 숨김 */
		
	}
</style>
</head>
<body>

<h3>이미지 미리보기(2)</h3>

<img id='target1' width='200px' height='250px' />
<img id='target2' width='200px' height='250px' />
<img id='target3' width='200px' height='250px' />
<input type='file' id='btnFile' />

<script>
	let t1 = document.getElementById('target1'); //img
	let t2 = document.getElementById('target2'); //img
	let t3 = document.getElementById('target3'); //img
	let btnFile = document.getElementById('btnFile'); //file
	
	t1.onclick = imagePreview;
	t2.onclick = imagePreview;
	t3.onclick = imagePreview;
	
	function imagePreview(event){ //img를 누르면 btnFile가 클릭되게 만들어 img를 누르면 파일선택하는 창이 뜨도록 함.
		btnFile.click();
		btnFile.onchange = function(){
			let url = btnFile.files[0]; //파일 경로
			let reader = new FileReader();
			reader.readAsDataURL(url); //ulr패턴으로 들어온 파일을 읽어라!
			reader.onload = function(ev){
				let target = event.srcElement;
				let img = new Image();
				img.src = ev.target.result;
				target.src = img.src;
			}
		}
	}
</script>

</body>
</html>