<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post_result</title>
</head>
<body>

<%
	String mid = request.getParameter("mid");
	String pwd = request.getParameter("pwd");
	String hobby = request.getParameter("hobby");
	
	out.print("<li>mid : " + mid + "</li>");
	out.print("<li>pwd : " + pwd + "</li>");
	out.print("<li>hobby : " + hobby + "</li>");
	
	String[] mnt = request.getParameterValues("mnt"); //배열은 getParameterValues()로 값을 받아옴.
	for(int i=0; i<mnt.length; i++){
		out.print("<li>mnt : " + mnt[i] + "</li>");
	}
	
	String[] sel = request.getParameterValues("sel");
	for(int i=0; i<sel.length; i++){
		out.print("<li>sel : " + sel[i] + "</li>");
	}
%>

</body>
</html>