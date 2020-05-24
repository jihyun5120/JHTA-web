<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String findStr = request.getParameter("findStr");
	Connection conn = DBConn.getConn();
	String sql = "select E.employee_id eid, E.first_name fn, to_char(E.salary, '999,999') sal, " 
	      + " E.department_id did,  nvl(D.department_name, ' ') dname "
	           + " from employees E left outer join departments D "
	           + " on E.department_id = D.department_id "
	           + " where employee_id = ? or lower(first_name) like lower(?) "
	           + " order by first_name ";
	
	PreparedStatement ps = conn.prepareStatement(sql);
	int id = 0;
	try{
		id=Integer.parseInt(findStr);
	}catch(Exception ex){}
	
	ps.setInt(1, id);
	ps.setString(2, "%" + findStr + "%");
	ResultSet rs = ps.executeQuery();
	int no = 0;
	String pattern = "{'no'  : '%s' , 'eid'   : '%s',  "
	              + " 'fn'  : '%s' , 'sal'   : '%s',  "
	              + " 'did' : '%s' , 'dname' : '%s' },";
	StringBuilder sb = new StringBuilder();
	sb.append("[");
	String tempDid="";
	while(rs.next()){
		no++;
	 if(rs.getInt("did")==0){
	 	tempDid="";
	 }else{
	 	tempDid = rs.getInt("did")+"";
	 }
	 String str = 
	   String.format(pattern, no, rs.getInt("eid"), rs.getString("fn"),
	     rs.getString("sal"), tempDid, rs.getString("dname"));
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