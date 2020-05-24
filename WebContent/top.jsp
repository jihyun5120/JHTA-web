<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top</title>
<link rel='stylesheet' type='text/css' href='./css/index.css' />
<script src='./lib/jquery-3.4.1.js'></script>
</head>
<body>
	<div id='login'>
	<%if(session.getAttribute("mId") == null){%> <!-- 처음에 로그인 하기 전에는 로그인버튼만 보이도록. -->
		<input type='button' value='로그인' id='btnLogin' />
	<%
	  }else{
	%>
		<output>[<%=session.getAttribute("mId")%>씨 안뇽!]</output>
		<input type='button' value='로그아웃' id='btnLogout' /> <!-- 로그아웃 한 뒤에는 로그아웃버튼만 보이도록. -->
	<%}%>
	</div>
	<header id='header'></header>
	<nav id='nav'>
		<ul>
			<li><a href='index.jsp?inc=./jsp/index_jsp.jsp&inc2=./jsp/insert.jsp'>JSP</a></li>
			<li><a href='index.jsp?inc=./jsp_member/index_jsp_member.jsp&inc2=./jsp_member/insert.jsp'>JSP_MEMBER</a></li>
			<li><a href='index.jsp?inc=./html5/index_html.jsp&inc2=./html5/canvas.jsp'>HTML</a></li>
			<li><a href='index.jsp?inc=./css/index_css.jsp&inc2=./css/css_font.jsp'>CSS</a></li>
			<li><a href='index.jsp?inc=./javascript/index_javascript.jsp&inc2=./javascript/array_1.jsp'>JAVASCRIPT</a></li>
			<li><a href='index.jsp?inc=./ajax/index_ajax.jsp&inc2=./ajax/post.jsp'>AJAX</a></li>
			<li><a href='index.jsp?inc=./ajax_in_jquery/index_ajax_in_jquery.jsp&inc2=./ajax_in_jquery/emp_complete.jsp'>AJAX_IN_JQUERY</a></li>
			<li><a href='index.jsp?inc=./jquery/index_jquery.jsp&inc2=./jquery/addClass.jsp'>JQUERY</a></li>
			<li><a href='index.jsp?inc=./nodejs/index_nodejs.jsp&inc2=./nodejs/server/public/item.html'>NODEJS</a></li>
			<li><a href='index.jsp?inc=./mongo_member/index_mongo_member.jsp&inc2=./mongo_member/insert.jsp'>MOMGO_MEMBER</a></li>
			<!-- <li><a href='#' onclick="goUrl('./mongo_member/', 'index_mongo_member.jsp', 'insert.jsp')">mongo_member</a></li> -->
		</ul>
	</nav>
	<script>
		if($('#btnLogin') != null){
			$('#btnLogin').click(function(){
				location.href = './member/login.jsp';
			});
		}
		if($('#btnLogout') != null){
			$('#btnLogout').click(function(){
				location.href = './member/logout.jsp';
			});
		}
	</script>
</body>
</html>