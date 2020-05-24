<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="bean.MemberVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach</title>
</head>
<body>

<h3>forEach</h3>
<h4>forEach를 사용한 구구단(단순 for문)</h4>
<c:set var='dan' value='5'/>
<c:forEach var='i' begin='1' end='9' step='1'>
	${dan} * ${i} = ${dan * i}<br/>
</c:forEach>

<h4>1~100까지의 홀수만 출력</h4>
<c:forEach var='i' begin='1' end='100' step='2'>
	${i}
</c:forEach>

<h4>1~100까지의 수중 3 또는 5의 배수를 출력</h4>	
	<c:forEach var='i' begin='1' end='100' step='1'>
		<c:if test='${i%3==0 or i%5==0}'>
			${i}
		</c:if>
	</c:forEach>
	
<h4>Java Collection을 사용한 forEach(향상된 for문)</h4>
<%
	List<String> list = new ArrayList<String>();
	list.add("김씨");
	list.add("이씨");
	list.add("홍씨");
	list.add("최씨");
	list.add("박씨");
	list.add("남씨");
	
	request.setAttribute("list", list);
%>

<c:forEach var='item' items='${list}'>
	${item}
</c:forEach>

<h4>단순for문 + 향상된for문</h4>
<c:forEach var='item' items='${list}' begin='0' end='5' step='2'>
	${item}
</c:forEach>

<h4>forEach의 상태값</h4>
<c:forEach var='item' items='${list}' varStatus='st'>
	<li>current : ${st.current}</li>
	<li>index : ${st.index}</li>
	<li>count : ${st.count}</li>
	<hr/>
</c:forEach>

<h4>MemberVo타입의 데이터를  List에 저장한 후 출력</h4>
<%	
	MemberVo vo = new MemberVo();
	List<MemberVo> vList = new ArrayList<MemberVo>();
	vo.setmId("a12345");
	vo.setPwd("1234");
	vo.setmName("원필연바보");
	vo.setrDate(new Date());
	vo.setGrade(7);
	vList.add(vo);
	vList.add(new MemberVo("b12345", "12345", "이성배바보", new Date(), 10));
	
	request.setAttribute("vList", vList);
%>
<c:forEach var='m' items='${vList}'>
	<fmt:formatDate var='temp' pattern='yyyy-MM-dd' value='${m.rDate}'/>		
	<li>아이디 : ${m.mId} 비밀번호 : ${m.pwd} 성명 : ${m.mName} 등록일 : ${temp} 학번 : ${m.grade}</li>
	<br/>
</c:forEach>

</body>
</html>