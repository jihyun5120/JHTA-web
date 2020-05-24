<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set</title>
</head>
<body>

<fieldset><legend>기본 set</legend>
	<c:set var='kor' value='90' /><!-- 2가지 방법 다 가능. -->
	<c:set var='eng'>88</c:set>
	<c:set var='tot' value='${kor + eng}' />
	<c:set var='avg'>${tot/2}</c:set>
	<ul>
		<li>kor : ${kor}</li>
		<li>eng : ${eng}</li>
		<li>tot : ${tot}</li>
		<li>avg : ${avg}</li>
	</ul>
</fieldset>

<fieldset><legend>html</legend>
	<%
		String html = "<font color='yellow' size='6'>홍길동</font>";
		pageContext.setAttribute("abc", html);
		//scope가 생략되면 page>request>session>application 순으로 변수를 찾음.
	%>
	${abc}
	<c:remove var='abc' />
	remove:${abc}
</fieldset>
<%
//<c:set var='vo' value='bean.MemberVo' />와 같음. 
//vo.setMid('hong gil dong')과 같음.
//vo.setPwd('1234')와 같음.
%>

<fieldset><legend>java bean</legend>
	<jsp:useBean id="vo" class="bean.MemberVo" scope="page"></jsp:useBean>
	<c:set target="${vo}" property="mId" value="hong gil dong"/>
	<c:set target="${vo}" property="pwd" value="1234"/> 
	mid : ${vo.mId } <br/>
	pwd : ${vo.pwd }
</fieldset>
</body>
</html>