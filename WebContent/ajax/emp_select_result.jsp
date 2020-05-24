<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String findStr = request.getParameter("findStr"); //"findStr"파라메터값을 가져와라!
	
	Connection conn = DBConn.getConn();
	String sql = "select E.employee_id 사번, E.first_name 성명, to_char(E.salary, '999,999') 급여, E.department_id 부서코드, nvl(D.department_name, ' ') 부서명"
			   + " from employees E left outer join departments D"
			   + " on E.department_id = D.department_id"
			   + " where employee_id like ? or lower(first_name) like lower(?)";
	PreparedStatement ps = conn.prepareStatement(sql);
  	ps.setString(1, "%" + findStr + "%");
  	ps.setString(2, "%" + findStr + "%"); 
	ResultSet rs = ps.executeQuery();
	
	StringBuilder sb = new StringBuilder();
	sb.append("[");
	while(rs.next()){
		String str = String.format("{'eid':'%s', 'fn':'%s', 's':'%s', 'did':'%s', 'dn':'%s'},",
						rs.getInt("사번"), rs.getString("성명"), rs.getString("급여"),
						rs.getInt("부서코드"), rs.getString("부서명"));
		sb.append(str);
	}
	String data = sb.toString();
	data = data.replaceAll("\'", "\"");
	if(data.length()>1){
		data = data.substring(0, data.length()-1);
	}
	data += "]";
	out.print(data);
%>