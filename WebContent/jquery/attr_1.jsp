<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>attr_1</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>

<img src='../images/밤하늘.jpg' />
<img src='../images/밤하늘.jpg' />
<img src='../images/밤하늘.jpg' />
<script>
	$('img').attr('width', function(index){
		return(index + 1) * 100; //width가 100, 200, 300이 됨.
	})
</script>

</body>
</html>