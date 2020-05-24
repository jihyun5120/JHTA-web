<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if_form</title>
</head>
<body>

<h3>if(form)</h3>
<form name='frm' method='post' action='index.jsp?inc=./jsp/index_jsp.jsp&inc2=./jsp/if_form_result.jsp'>
	<label>성명</label>
	<input type='text' name='mName' value='hong' />
	<br/>
	<label>성적</label>
	<input type='number' name='score' value='80' />
	<p/>
	<input type='submit' value='Run'  id='btnRun' /> 
</form>
<!-- <script>
	if($('#btnRun') != null){
		$('#btnRun').click(function(){
			goSubmit(document.frm, if_form_result.jsp);
		});
	}
</script> -->

</body>
</html>