<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image_preview_3</title>
<style>
	#att_file{
		border:10px double #3F0099;
		padding:10px;
		box-sizing:border-box;
		width:600px;
		border-radius:5px;
	}
	#att_file>div{
		position:relative;
		display:inline-block;
		margin:10px;
	}
	#att_file .btnDel{
		position:absolute;
		right:2px;
		bottom:2px;
		width:40px;
		height:40px;
		font-size:34px;
		border:0px solid #ffffff;
		opacity:0.5;
	}
</style>
</head>
<body>

<h3>첨부 이미지 동적 삽입/삭제</h3>
<form name='frm'>
	<label>첨부이미지</label>
	<div id='att_file'></div>
</form>
<script>
	let main = document.getElementById('att_file'); //div
	let cnt = 0;
	
	makeDiv(main);
	
	function makeDiv(main){
		let div = document.createElement('div');
		/* div.setAttribute('style', 'border:1px solid #f00; width:120px; height:180;'); 
		div가 잘 생성됐나 test할 때 잠깐 사용*/ 
		
		//image tag
		let img = document.createElement('img');
		img.setAttribute('name', 'img' + cnt);
		img.setAttribute('width', '120px');
		img.setAttribute('height', '180px');
		img.src = 'http://placehold.it/120X180';
		div.appendChild(img);
		
		//삭제 버튼
		let btnDel = document.createElement('input');
		btnDel.setAttribute('type', 'button');
		btnDel.setAttribute('name', 'btnDel' + cnt);
		btnDel.setAttribute('value', 'X');
		btnDel.setAttribute('class', 'btnDel');
		btnDel.onclick = function(ev){
			let obj = ev.srcElement;
			let parent = obj.parentNode;
			let tag = parent.getElementsByTagName('input')[1];
			if(tag.getAttribute('modify') == 'yes'){//사진이 수정 되었을 때
				main.removeChild(parent);
			}
		}
		div.appendChild(btnDel);
		
		//이미지당 필요한 file tag
		let file = document.createElement('input');
		file.setAttribute('type', 'file');
		file.setAttribute('name', 'attFile' + cnt);
		file.setAttribute('style', 'display:none');
		file.setAttribute('modify', 'no');
		div.appendChild(file);
		file.onclick = function(){
			let btn = event.srcElement;
			file.onchange = function(){
				let url = btn.files[0];
				let reader = new FileReader();
				reader.readAsDataURL(url);
				reader.onload = function(ev){
					let temp = new Image();
					temp.src = ev.target.result;
					img.src = temp.src;
				}
				//마지막 file tag를 눌러서 사진을 넣었을 때만 새로운 image tag가 생기게 하기 위해
				if(file.getAttribute('modify') == 'no'){ //사진이 수정 안되었을 때
					makeDiv(main);
					file.setAttribute('modify', 'yes');
				}
			}
		}
		
		//이미지를 클릭하면
		img.onclick = function(){
			file.click();
		}
		
		main.appendChild(div);
		cnt++;
	}
</script>

</body>
</html>