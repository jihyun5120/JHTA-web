<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_transition</title>
<style>
	div{

		border:3px solid #7536CF;
		padding:10px;
		width:10px;
		margin:5px;
		background-color:#EAEAEA;
		color:#000;
		transform:rotate(0deg);
		overflow:hidden;
		opacity:0.7; /* 불투명도 */
		transition:transform 3s, color 3s, background 3s, opacity 3s, width 3s;
	}
	div:hover{
		background-color:#000;
		width:100px;
		color:#fff;
		transform:rotate(3deg);
		opacity:1;
		transition:transform 0.5s, color 0.5s, background  0.5s opacity 0.5s, width 0.5s;
	}
</style>
</head>
<body>
<h3>transition</h3>
	<div>html</div>
	<div>css</div>
	<div>javascript</div>
	<div>jsp</div>
	<div>java</div>
</body>
</html>