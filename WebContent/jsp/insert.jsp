<%@page import="com.mongodb.DBObject"%>
<%@page import="java.util.List"%>
<%@page import="mongo.MongoMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<script src='./lib/jquery-3.4.1.js'></script>
</head>
<body>
<div id='main'>
	<h3>회원가입</h3>
	<form name='frm' id='frm' method='post'>
		<label>아이디</label><br/>
		<input type='text' name='mId' />
		<br/>
		<label>성명</label><br/>
		<input type='text' name='mName' />
		<br/>
		<label>등록일</label><br/>
		<input type='date' name='rDate' />
		<br/>
		<label>학년</label><br/>
		<select name='grade'>
			<option value='1'>1학년</option>
			<option value='2'>2학년</option>
			<option value='3'>3학년</option>
			<option value='4'>4학년</option>
			<option value='5'>5학년</option>
			<option value='6'>6학년</option>
			<option value='7'>7학년</option>
			<option value='8'>8학년</option>
			<option value='9'>9학년</option>
			<option value='10'>10학년</option>
		</select>
		<br/>
		<label></label>
		<input type='button' value='등록(jsp)' id='btnJsp' />
		<input type='button' value='등록(dao)' id='btnDao' />
		<input type='button' value='등록(bean)' id='btnBean' />
		<input type='button' value='등록(servlet-xml)' id='btnServletXML' />
		<input type='button' value='등록(servlet-anno)' id='btnServletAnno' />
		<input type='button' value='등록(jstl)' id='btnJstl' />
	</form>
</div>
<script>
	frm.rDate.valueAsDate = new Date(); //오늘 날짜 기본설정.
	
	$('#btnJsp').click(function(){
		$('#frm').attr('action', 'insert_r_jsp.jsp').submit();
	});
	
	$('#btnDao').click(function(){
		$('#frm').attr('action', 'insert_r_dao.jsp').submit();
	});
	
	$('#btnBean').click(function(){
		$('#frm').attr('action', 'insert_r_bean.jsp').submit();
	});
	
	$('#btnServletXML').click(function(){
		$('#frm').attr('action', 'insert_r_servlet_xml.nhn').submit();
	});
	
	$('#btnServletAnno').click(function(){
		$('#frm').attr('action', 'insert_r_servlet_anno.anno').submit();
	});
	
	$('#btnJstl').click(function(){
		$('#frm').attr('action', 'insert_r_jstl.do').submit();
	});
	
</script>
</body>
</html>