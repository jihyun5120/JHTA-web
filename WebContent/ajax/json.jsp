<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Connection conn = DBConn.getConn();
	String sql = "select * from employees";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
		
	/* 이렇게 출력되게 해야함.
		[{"id":"100", "fn":"Luis", "mid":"200"},
	    {"id":"100", "fn":"Luis", "mid":"200"},
	    {"id":"100", "fn":"Luis", "mid":"200"}] */
	
	StringBuilder sb = new StringBuilder();
	sb.append("[");
	while(rs.next()){
		String str = String.format("{'id':'%s', 'fn':'%s', 'mid':'%s'},",
					rs.getInt("employee_id"), rs.getString("first_name"), rs.getInt("manager_id"));
		sb.append(str);
	}
	String data = sb.toString();
	data = data.replaceAll("\'", "\""); //'를 "로 바꾸기
	data = data.substring(0, data.length()-1); //0인덱스부터 맨마지막인덱스-1한 곳까지 잘라내라
	data += "]";
	out.print(data);
%>