<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mId = request.getParameter("mId");
	MemberDao dao = new MemberDao();
	String msg = dao.delete(mId);
	out.print(msg);
%>