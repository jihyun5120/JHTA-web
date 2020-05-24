<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forTokens</title>
</head>
<body>

<h3>forTokens</h3>
<%
	String str = "akdjf,sf,ds,fe,f,gwergq,3r324,sfds343,2234";
	pageContext.setAttribute("str", str);
%>
<c:forTokens items='${str}' delims=',' var='v'>
	<li>${v}</li>
</c:forTokens>
<hr/>

<c:forTokens items='${str}' delims=',' var='v' begin='2' end='6' step='2'>
	<li>${v}</li>
</c:forTokens>
<hr/>

<c:forTokens items='${str}' delims=',' var='v' varStatus='st'>
	<li>${v} | ${st.current} | ${st.index} | ${st.count}</li>
</c:forTokens>

</body>
</html>