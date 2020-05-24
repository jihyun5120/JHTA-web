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
