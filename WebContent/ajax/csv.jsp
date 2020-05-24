<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bean.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //이거 내부 영역은 자바영역 (다른 데이터타입으로 바꿀 때는 위 아래 필요없는 것들을 이렇게 지워줌)
	Connection conn = DBConn.getConn();
	String sql = "select * from employees";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		String str = String.format("%s,%s,%s\n", 
									rs.getString("employee_id"),
									rs.getString("first_name"),
									rs.getString("salary"));
		out.print(str);
	}
%>