<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_context</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	div{
		border:3px solid black;
		border-radius:10px;
		magin:5px;
		padding:3px;
		box-sizing:border-box;
	}
</style>
</head>
<body>

<div>
	<h1>Header 1</h1>
	<p>Paragraph</p>
</div>
<div>
	<h1>Header 2</h1>
	<p>Paragraph</p>
</div>
<div>
	<h1>Header 3</h1>
	<p>Paragraph</p>
</div>

<script>
	$('div').click(function(){
		let header = $('h1', this).text();
		let paragraph = $('p', this).text();
		
		alert(header + '\n' + paragraph);
	})
</script>

</body>
</html>