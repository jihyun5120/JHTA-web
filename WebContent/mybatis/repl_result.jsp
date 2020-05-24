<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="mybatis">
	<p>${msg}</p>
	<form name="frm" method="post">
		<input type="button" id="btnList" value="목록"/>
		<input type="hidden" name="findStr" value="${p.findStr}"/>
		<input type="hidden" name="nowPage" value="${p.nowPage}"/>
	</form>
</div>    
<!-- result를 모두 통합할 때 사용한 코드
<div id="mybatis">
	<p>${msg}</p>
	<form name="frm" method="post">
		<input type="button" id="btnList" value="목록"/>
		<input type="hidden" name="findStr" value="${(empty p.findStr)? param.findStr : p.findStr}"/>
		<input type="hidden" name="nowPage" value="${(empty p.nowPage)? param.nowPage : p.nowPage}"/>
	</form>
</div> 
<script>
	alert("${msg}");
	go();
</script> 
-->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  