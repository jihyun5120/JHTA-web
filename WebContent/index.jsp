<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>1907-web</title>
<link rel='stylesheet' type='text/css' href='./css/index.css' />
<script scr='./lib/jquery-3.4.1.js'></script>
</head>
<body>
<%
	String inc = "./jsp_member/index_jsp_member.jsp"; //기본 sub_menu
	if(request.getParameter("inc") != null){
		inc = request.getParameter("inc");
	}//동적삽입

	String inc2 = "./jsp_member/select.jsp"; //기본 main_content
	if(request.getParameter("inc2") != null){
		inc2 = request.getParameter("inc2");
	}
%>

<div id='main'>
	<!-- top.jsp -->
	<%@include file="top.jsp"%><!-- 정적삽입(변수를 사용 할 수 X) : 컴파일 전에 코드를 읽음.-->
	
	<div id='center'>
		<div id='sub_menu'>
			<jsp:include page="<%=inc%>" />
		</div>
		<div id='main_content'>
			<jsp:include page="<%=inc2%>" />
		</div>
		<aside id='aside'>Aside<br/><br/><br/><br/><br/><br/></aside>
	</div>
	
	<!-- bottom.jsp -->
	<%@include file='bottom.jsp'%>
</div>
<!-- <script>
	var path;
	var inc;
	
	function goUrl(p, i, inc2){
		localStorage.setItem('path', p);
		localStorage.setItem('inc', i);
		path = p;
		inc = i;
		let url = 'index.jsp?inc=' + path + inc + '&inc2=' + path + inc2;
		location.href = url;
	}
	
	function goSub(inc2){
		path = localStorage.getItem('path');
		inc2 = localStorage.getItem('inc');
		let url = 'index.jsp?inc=' + path + inc + '&inc2=' + path + inc2;
		location.href = url;
	}
	
	function goSubmit(frm, inc2){
		path = localStorage.getItem('path');
		inc = localStorage.getItem('inc');
		let url = 'index.jsp?inc=' + path + inc + '&inc2=' + path + inc2;
		frm.action = url;
		frm.submit();
	}
</script> -->
</body>
</html>