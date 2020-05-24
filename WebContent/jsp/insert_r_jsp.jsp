<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert_r_jsp</title>
</head>
<body>

<h3>순수 jsp로 요청 처리</h3>
<%
	request.setCharacterEncoding("utf-8");
	String msg = "";	

	String mId = request.getParameter("mId");
	String mName = request.getParameter("mName");
	String rDate = request.getParameter("rDate");
	String grade = request.getParameter("grade");
	
	Connection conn = DBConn.getConn();
	String sql = "insert into member1(mId, mName, rDate, grade) values(?, ?, ?, ?)";
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, mId);
	ps.setString(2, mName);
	ps.setString(3, rDate);
	ps.setInt(4, Integer.parseInt(grade));
	
	int cnt = ps.executeUpdate();
	if(cnt>0){
		msg = "회원정보가 정상적으로 등록되었습니다.";
	}else{
		msg = "회원정보 저장 중 오류가 발생했습니다.";
	}
%>
<ul>
	<li>mId = <%=mId%></li>
	<li>mName = <%=mName%></li>
	<li>rDate = <%=rDate%></li>
	<li>grade = <%=grade%></li>
</ul>

</body>
</html>