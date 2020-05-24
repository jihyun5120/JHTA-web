<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>backtic</title>
</head>
<body>

<script>
	let str = 'aafdsfsfsf sfsdfsdfd'
			+ ' sfsdf sfds sdfsdf sdf';
		
	let str2 = `sfsdfsdfsd
				sfds sdf sdfsdf dsf
				sdfdsfsd sfdssdffs`;
	
	var v1 = 100;
	var v2 = 200;
	var v3 = v1 * v2;
	let str3 = `\${v1} * \${v2} = \${v3}`; //.jsp의 el과 겹치기 않기 위해 $앞에 \ 를 써줌(.html에서는 \f를 사용하지 않아도 됨.)
	
	console.log('str : ', str);
	console.log('str2 : ', str2);
	console.log('str3 : ', str3);
	
</script>

</body>
</html>