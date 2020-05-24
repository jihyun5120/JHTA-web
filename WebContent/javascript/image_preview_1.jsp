<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image_preview</title>
</head>
<body>

<h3>이미지 미리보기(1)</h3>
<input type='file' value='사진' id='btnFile' />
<img width='200px' height='300px' id='target' />
<script>
	let btn = document.querySelector('#btnFile');
	btn.onchange = function(event){
		let ele = event.srcElement;  //srcElement : event가 발생한 요소를 가져옴.
		console.log('srcElement : ', ele); //event가 발생한 요소 리턴
		console.log('name : ', ele.value); //파일경로 리턴(보안상 완전한 경로는 보여주지X -> 이 경로로 파일은 다운받는 것은 X)
		let url = ele.files[0]; //첫번째 파일의 경로
		let reader = new FileReader();
		reader.readAsDataURL(url); //ulr패턴으로 들어온 파일을 읽어라!
		
		reader.onload = function(ev){
			let img = new Image();
			img.src = ev.target.result; //실제로 읽혀진 파일
			document.getElementById('target').src = img.src;
		}
	}
</script>

</body>
</html>