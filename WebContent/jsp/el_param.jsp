<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el_param</title>
</head>
<body>

<h3>el param</h3>
<form name='frm' method='post'>
	<label>Id</label>
	<input type='text' name='id' value='${param.id}'/> 	
	<!-- ${param.id}와 request.getParameter("id") 같음. 단, 처음 값이 없을 때  ${param.id}는 공백으로, request는 null로 뜸.-->
	<br/>
	<label>Password</label>
	<input type='text' name='pwd' value='${param.pwd}'/> 
	<br/>
	<label>Hobby</label>
	<label><input type='checkbox' name='hobby' value='축구' />축구</label>
	<label><input type='checkbox' name='hobby' value='야구' />야구</label>
	<label><input type='checkbox' name='hobby' value='배구' />배구</label>
	<label><input type='checkbox' name='hobby' value='농구' />농구</label>
	<p/>
	<input type='submit' value='Run' /> 
</form>
<p/>
<script>
	//frm.hobby[0].checked = ${paramValues.hobby[0] == '축구'?true:false}; //[0]번째 값이 축구이면 true, 아니면 false.
</script>

</body>
</html>