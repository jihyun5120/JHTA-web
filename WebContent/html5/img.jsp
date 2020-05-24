<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지</title>
</head>
<body>
<h3>이미지 경로를 절대|상대 경로지정</h3>
<img src='../images/we.PNG'><br/>
<img src='/1907-web/images/we.PNG'><br/>

<h3>이미지 표시 사이즈 변경</h3>
<img src='../images/we.PNG' width='100px'><br/>
<img src='../images/we.PNG' width='30%'><br/>
<img src='../images/we.PNG' width='150px' height='50px'><br/>

<h3>문자와 이미지 배치</h3>
<p>
	<img src='../images/we.PNG' align='left'>
	align='left'속성은 이미지가 문자의 왼쪽에 배치된다는 의미임.
</p><br/><br/><br/><br/>
<p>
	<img src='../images/we.PNG' align='right'><br/>
	align='right'속성은 이미지가 문자의 오른쪽에 배치된다는 의미임.
</p><br/><br/><br/><br/>
<p>
	<img src='../images/we.PNG' align='left' hspace='50px'>
	align='left'속성은 이미지가 문자의 왼쪽에 배치된다는 의미임.
</p><br/><br/><br/><br/>
<h3>use map</h3>
	<img src='../images/마이크2.jpg' usemap='#usemap_image'>
	<map name='usemap_image'>
		<area shape='rect' coords= '0,0,120,105' title='폰트 연습파일' href='font.jsp'/>
		<area shape='rect' coords= '1,110,120,225' title='문단 연습파일' href='paragraph.jsp'/>
		<area shape='rect' coords= '1,230,120,345' title='앵커 연습파일' href='anchor.jsp'/>
	</map>
</body>
</html>