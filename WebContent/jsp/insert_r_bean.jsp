<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id='vo' class='bean.MemberVo2' scope='page'></jsp:useBean> <!-- MemberVo vo = new MemberVo(); -->
<jsp:setProperty property='*' name='vo' /> <!-- 모든 setter를 사용 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert_r_bean</title>
</head>
<body>

<h3>bean으로 요청 처리</h3>
<%	
	MemberDao dao = new MemberDao();
	String msg = dao.insert2(vo);
%>
<%=msg%>
</body>
</html>