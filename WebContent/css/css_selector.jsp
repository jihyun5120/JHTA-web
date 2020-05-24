<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_selector</title>
<style>
	#div1 span:first-child{ color:red; }	/* div의 첫번째 자식이 span이라면 */
	#div2 span:first-of-type{ color:red; } /* div span태그 중에 첫번째꺼 */
	#div1 span:last-child{ color:blue; } /* div의 마지막 자식이 span이라면 */
	#div2 span:last-of-type{ color:blue; } /* div span태그 중에 마지막꺼 */
	
	#div3 li:nth-child(2n){ color:red; } /* div li태그 짝수 번째에 있는 것 */
	#div3 li:nth-child(2n-1){ color:blue; } /* div li태그 홀수 번째에 있는 것 */
	
	#div4 div:nth-child(5n){ border-bottom:2px solid #747474; }
	#div4 div:nth-child(5n){ background-color:#D1B2FF; }
	
	#div5 span{
		margin-top:50px;
		padding:5px;
		border:1px solid #4374D9;
		background-color:#B2EBF4;
		float:left;
	}
	#div5 span:first-child{ border-radius:10px 0 0 10px; }
	#div5 span:last-child{ border-radius:0 10px 10px 0; }
	#div5 span:hover{ 
		background-color:#D5D5D5;
		transition:background 1s;
	 }
</style>
</head>
<body>
<div id='div1'>
	<label>lable</label>
	<span>span 1</span>
	<span>span 2</span>
	<span>span 3</span>
	<label>lable</label>
</div>
<div id='div2'>
	<label>lable</label>
	<span>span 1</span>
	<span>span 2</span>
	<span>span 3</span>
	<label>lable</label>
</div>
<div id='div3'>
	<ul>
		<li>강원도</li>
		<li>경기도</li>
		<li>충청도</li>
		<li>전라도</li>
		<li>경상도</li>
		<li>제주도</li>
	</ul>
</div>
<div id='div4'>
	<div>제목1................</div>
	<div>제목2................</div>
	<div>제목3................</div>
	<div>제목4................</div>
	<div>제목5................</div>
	<div>제목6................</div>
	<div>제목7................</div>
	<div>제목8................</div>
	<div>제목9................</div>
	<div>제목10................</div>
</div>
<div id='div5'>
	<span>강원도</span>
	<span>경기도</span>
	<span>충청도</span>
	<span>전라도</span>
	<span>경상도</span>
	<span>제주도</span>
</div>
</body>
</html>