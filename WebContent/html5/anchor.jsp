<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>anchor</title>
</head>
<body>
<h4>현재 페이지에 링크연결</h4>
<a href='http://www.jobtc.kr'>우리카페</a><br/>
<a href='http://www.naver.com'>네이버</a><br/>
<a href='http://192.168.0.43:8888/1907-web/html5/anchor.jsp'>이성배</a><br/>

<h4>새 페이지(탭)에 링크연결</h4>
<a href='http://www.jobtc.kr' target="_blank">우리카페</a><br/>
<a href='http://www.naver.com' target="_blank">네이버</a><br/>
<a href='http://192.168.0.43:8888/1907-web/html5/anchor.jsp' target="_blank">이성배</a><br/>

<h4>특정 브라우저(프레임)에 링크 연결</h4>
<a href='http://www.jobtc.kr' target="sub_page">우리카페</a><br/>
<a href='http://www.naver.com' target="sub_page">네이버</a><br/>
<a href='http://192.168.0.43:8888/1907-web/html5/anchor.jsp' target="sub_page">이성배</a><br/>

<h4>책갈피</h4>
<a href='#1장'>1장</a>
<a href='#2장'>2장</a>
<a href='#3장'>3장</a>
<a href='#4장'>4장</a>
<a href='#5장'>5장</a><br/>
<a href='http://192.168.0.43:8888/1907-web/html5/anchor.jsp#1장' target="sub_page">이성배(1장)</a>
<hr/>

<h4>iframe에 연결</h4>
<iframe width='500px' height='400px' name='my_frame' style='border:2px solid #0000ff'></iframe>
<a href='http://www.jobtc.kr' target="my_frame">우리카페</a><br/>
<a href='http://www.nate.com' target="my_frame">네이트</a><br/>
<a href='http://192.168.0.43:8888/1907-web/html5/anchor.jsp' target="my_frame">이성배</a><br/>
<a href='font.jsp' target='my_frame'>font test</a><br/>
<a href='paragraph.jsp' target='my_frame'>paragraph test</a><br/><hr/>

<h4>file download</h4>
<img src='../images/copy.png'><br/>
<a href='../images/copy.png'>보기</a><br/>
<a href='../images/copy.png' download='test.png'>다운로드</a><br/>

<div id='1장'>
여기는 1장입니다.
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</div>

<div id='2장'>
여기는 2장입니다.
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</div>

<div id='3장'>
여기는 3장입니다.
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</div>

<div id='4장'>
여기는 4장입니다.
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</div>

<div id='5장'>
여기는 5장입니다.
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</div>
</hr>
</body>
</html>
