<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_find</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<div id='result'></div>
<script>
	let xml = '<friends>'
			+ '    	<friend>'
			+ '        <name>hong</name>'
			+ '			<language>javascript</language>'	
			+ '    	</friend>'
			+ '		<friend>'
			+ '        	<name>kim</name>'
			+ '			<language>css</language>'	
			+ '    </friend>'
			+ '		<friend>'
			+ '        	<name>park</name>'
			+ '			<language>java</language>'	
			+ '    </friend>'
			+ '</friends>';
	
	//$.parseXML()메소드를 이용하여 문자열을 XML문서 객체로 변경.
	let xmlDoc = $.parseXML(xml);
	
	let output = '';
	$(xmlDoc).find('friend').each(function(index){ //this를 사용할 거라서 item은 뺌.
		output += '<div>';
		output += '		<h1>' + $(this).find('name').text() + '</h1>';
		output += '		<p>' + $(this).find('language').text() + '</p>';
		output += '</div>';
	});
	
	$('#result').html(output); //html => innerHTML

	$('div>div').css({
		'display':'inline-block',
		'border':'5px solid #aaaaff',
		'border-radius':'10px',
		'margin':'10px',
		'padding':'20px',
		'box-sizing':'border-box',
		'box-shadow':'3px 3px 5px #aaaaaa'
	});
</script>

</body>
</html>