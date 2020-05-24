<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>effect_dialog</title>
<link rel='stylesheet' type='text/css' href='colorbox.css' />
<script src='../lib/jquery-3.4.1.js'></script>
<script src='../lib/jquery.colorbox-min.js'></script>
<style>
	#colorbox{position:relative;}
</style>
</head>
<body>
<h1>jquery colorbox</h1>
<a id='colorbox' href='#dialog'>Dialog with Colorbox</a>
<div id='dialogs' style='display:none;'>
	<div id='dialog'>
		<h1>Auto OPEN Colorbox</h1>
		<p>What is Lorem Ipsum?
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
		Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
		when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
		It has survived not only five centuries, but also the leap into electronic typesetting, 
		remaining essentially unchanged. It was popularised in the 1960s with the release 
		of Letraset sheets containing Lorem Ipsum passages, and more recently 
		with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
	</div>
</div>
<script>
	$('a').colorbox({
		'inline':true, 'width':550
	});
</script>

</body>
</html>