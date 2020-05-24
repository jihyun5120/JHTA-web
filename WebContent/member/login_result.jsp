<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login_result</title>
</head>
<body>
<jsp:useBean id='vo' class='bean.MemberVo' />
<jsp:setProperty property='*' name='vo' />
<%
	MemberDao dao = new MemberDao();
	boolean b = dao.login(vo);
	out.print("<script>");
	if(b){
		session.setAttribute("mId", vo.getmId());
		out.print("location.href = '../index.jsp'");
	}else{
		out.print("alert('아이디/암호를 확인해주세요');");
		out.print("location.href = './login.jsp'");
	}
	out.print("</script>");
%>
</body>
</html>