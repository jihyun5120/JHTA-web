<%@page import="bean.MemberDao"%>
<%@page import="bean.MemberVo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	String mId = request.getParameter("mId");
	String mName = request.getParameter("mName");
	Date rDate = sdf.parse(request.getParameter("rDate"));
	int grade = Integer.parseInt(request.getParameter("grade"));
	
	out.print(mId);
	
	MemberVo vo = new MemberVo();
	vo.setmId(mId);
	vo.setmName(mName);
	vo.setrDate(rDate);
	vo.setGrade(grade);
	
	MemberDao dao = new MemberDao();
	String msg = dao.insert(vo);
	out.print(msg);	
%>