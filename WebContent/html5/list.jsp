<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
<p>
	<ul>
		<li>OL : 번호가 붙어있는 목록태그</li>
		<li>UL : 기호가 붙어있는 목록태그</li>
		<li>DL : 번호나 기호가 없는 목록태그</li>
	</ul>
</p>

<div>
	<h3>OL(Ordered List)</h3>
	<ol start='10'>
	<li>봄</li>
	<li>여름</li>
	<li>가을</li>
	<li>겨울</li>
	</ol>
	
	<o1 type='A' start='5'>
	<li>백두산</li>
	<li>한라산</li>
	<li>금강산</li>
	<li>치악산</li>
	<li>설악산</li>
	</o1>
</div>
<hr/>
<div>
	<h3>UL(Unordered List)</h3>
	<ul type='circle'>
		<li>1조</li>
		<li>2조</li>
		<li>3조</li>
		<li>4조</li>
	</ul>
</div>
<hr/>
<div>
	<h3>DL(Definition List)</h3>
	<dl>
		<dt>파리</dt>
			<dd>- 프랑스의 수도 이름</dd>
			<dd>- 여름의 불청객</dd>
	</dl>
</div>

</body>
</html>