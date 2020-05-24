<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_group</title>
<style>
	div#abc, div.abc{/*div태그에서 id와 class가 abc인 것만 해당*/
		color:#ff0000; 
	}
	span[abc]{ /*span태그에서 abc글자가 포함된 것만 해당*/
		color:#ff00ff;
	}
	div#child>span{/*id가 child인 div태그 안 span태그에만 해당(1단계 하위만)*/
		color:#ff0000;
	}
	div#desc span{/*id가 desc인 div태그의 span태그 모두 해당*/
		color:#0000ff;
	}
	div#plus>span+span{/*id가 plus인 div태그 안 span태그뒤에 span태그에 해당*/
		color:#ff00ff;
	}
</style>
</head>
<body>
<h3>태그명#아이디</h3>
	<div id='abc'>id=abc</div>
	<div id='def'>id=def</div>
	
<h3>태그명.클래스명</h3>
	<div class='abc'>class=abc</div>
	<div class='def'>class=def</div>
	
<h3>태그명[속성]</h3>
	<span abc='1'>abc=1</span>
	<span def='1'>def=1</span>
	
<h3>태그명>태그명(자손)</h3>
	<div id='child'>
		<span>1</span>
		<span>2</span>
		<p>
			<span>3</span>
			<span>4</span>
		</p>
	</div>
	
<h3>태그명 태그명(후손)</h3>
	<div id='desc'>
		<span>1</span>
		<span>2</span>
		<p>
			<span>3</span>
			<span>4</span>
		</p>
	</div>
	
<h3>태그명+태그명</h3>
	<div id='plus'>
		<span>1</span>
		<span>2</span>
		<p>
			<span>3</span>
			<span>4</span>
		</p>
	</div>
	
</body>
</html>