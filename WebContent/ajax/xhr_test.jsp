<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>xhr_test</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	div.frame{
		display:inline-block;
		width:300px;
		height:200px;
		border:2px solid #00f;
		overflow:auto;
	}
	tr:first-child{
		background-color:#ffff00;
	}
	.item{
		border-bottom:1px dotted #000;
		padding:3px;
		box-sizing:border-box;
		background-color:#eef;
		font-size:0.6em;
	}
	.item>span{
		display:inline-block;
	}
	.id{width:50px;}
	.dname{width:150px;}
	.mid{width:50px;}
</style>
</head>
<body>

<h3>XMLHttpRequest 객체</h3>
<input type='button' value='Ajax 실행1' id='btn1' />
<input type='button' value='Ajax 실행2' id='btn2' />

<input type='button' value='CSV' id='btn3' />
<input type='button' value='XML' id='btn4' />
<input type='button' value='JSON' id='btn5' />
<p/>
<div id='div1' class='frame'></div>
<div id='div2' class='frame'></div>
<div id='div3' class='frame'></div>

<script>
	/* jquery를 쓰지 않으면
		let btn1 = document.getElementById('btn1');
		btn1.onclick(function(){})
		*/
	let xhr = new XMLHttpRequest();
	$('#btn1').click(function(){
		xhr.open('get', 'test1.html', true);
		xhr.send();
		xhr.onreadystatechange = function(){ //상태값이 바뀔 때마다 onreadystatechange가 호출됨.
			console.log(xhr.status + ', ' + xhr.readyState);
			if(xhr.status==200 && xhr.readyState==4){ //데이터가 정상적으로 들어오면.
				$('#div1').html(xhr.responseText); //응답을 텍스트형태로 가져와라!
			}
		}
	});
	
	$('#btn2').click(function(){
		xhr.open('get', 'test2.jsp', true);
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				$('#div2').html(xhr.responseText);
			}
		}
	});
	
	$('#btn3').click(function(){
		xhr.open('get', 'csv.jsp');
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				let array = xhr.responseText.split('\n'); //엔터키를 기준으로 쪼개기
				let str = "<table border='1' width='100%'>"
						+ "<tr><th>사번</th><th>성명</th><th>급여</th></tr>";
				for(let i=0; i<array.length; i++){
					if(array[i]=='\r' || array[i]=='') continue;
					let data = array[i].split(','); //쉼표를 기준으로 쪼개기
						str += '<tr>'
							+  '<td>' + data[0] + '</td>'
							+  '<td>' + data[1] + '</td>'
							+  '<td>' + data[2] + '</td>'
							+  '</tr>';
				}
				str += '</table>';
				$('#div1').html(str);
			}
		}
	});
	
	$('#btn4').click(function(){
		xhr.open('get','xml.jsp');
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				let temp = xhr.responseXML;
				let deps = $(temp).find('department');
				let str = '';
				$(deps).each(function(){
					str += "<div class='item'>"
						+  "	<span class='id'>" + $(this).find('id').text() + "</span>"
						+  "	<span class='dname'>" + $(this).find('dname').text() + "</span>"
						+  "	<span class='mid'>" + $(this).find('mid').text() + "</span>"
						+  "</div>";
				});
				$('#div2').html(str);
			};
		};
	});
	
	$('#btn5').click(function(){
		xhr.open('get', 'json.jsp');
		xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				let temp = xhr.responseText;
				let array = JSON.parse(temp);
				let str = '';
				str = "<div class='header'>"
					+ "<span class='id'>사번</span>"
					+ "<span class='fn'>성명</span>"
					+ "<span class='mid'>매니져</span>"
					+ "</div>";
					
				for(let i=0; i<array.length; i++){
					str += "<div class='item'>"
						+  "	<span class='id'>" + array[i].id + "</span>"
						+  "	<span class='fn'>" + array[i].fn + "</span>"
						+  "	<span class='mid'>" + array[i].mid + "</span>"
						+  "</div>";
					$('#div3').html(str);
				}
			};
		};
	});
</script>

</body>
</html>