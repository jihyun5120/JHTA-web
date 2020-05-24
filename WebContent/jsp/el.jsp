<%@page import="bean.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el</title>
</head>
<body>

<h3>el example</h3>
<ul>
	<li>\${10 + 5} = ${10 + 5}</li> <!-- ${10 + 5} = 15 -->
	<li>\${10 > 5} = ${10 > 5}</li> <!-- ${10 > 5} = true -->
	<!-- el을 쓰지 않고 연산하는 방법 -->
	<li><%=(10 + 5)%></li> <!-- 15 -->
	<li><%=(10 > 5)%></li> <!-- true -->
</ul>
<%
	MemberVo vo = new MemberVo();
	vo.setmId("hong");
	vo.setPwd("1234");
%>
<ul>
	<li><%=vo.getmId()%></li> <!-- hong -->
	<li><%=vo.getPwd()%></li> <!-- 1234 -->
</ul>
<%
	request.setAttribute("vo", vo);
%>
<ul>
	<li>${vo.mId}</li> <!-- hong -->
	<li>${vo.pwd}</li> <!-- 1234 -->
</ul>
</body>
</html>