<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_font</title>
<style>
	#font_size>#px{
		font-size:30px;
	}
	#font_size>#em{
		font-size:1.5em;
	}
	#font_size>#per{
		font-size:300%;
	}
	#line_height{
		border:2px solid #0000ff;
		padding:10px;
		box-sizing:border-box;
		width:300px;
		line-height:1.5em; /* 줄간격 */
		letter-spacing:20px; /* 글자간 */
	}
	#text_overflow>div{
		border:1px solid #0000ff;
		width:200px;
		margin-top:10px;
		white-space:nowrap;
	}
	#text_overflow>#div1{
		text-overflow:ellipsis; /* 넘치는 글자 ... 으로 표시 */
		overflow:hidden;
	}
	#text_overflow>#div2{
		text-overflow:clip; /* 넘치는 글자 날려버리기 */
		overflow:hidden;
	}
	#text_overflow>#div3{
		overflow:auto; /* 스크롤바 만들어주기 (잘 사용하지X)*/
	}
	#text_overflow>#div5{
		white-space:normal; /* 넘치는 글자가 줄바꿈이 됨 */
	}
	#text_shadow{
		font-size:3em;
		font-weight:bold;
		text-shadow:3px 3px 3px #4C4C4C;
	}
</style>
</head>
<body>
<h3>font</h3>
<div id='font_size'>
	<div>기본크기 123 가나다</div>
	<div id='px'>PX 123 가나다</div>
	<div id='em'>EM 123 가나다</div>
	<div id='per'>% 123 가나다</div>
</div>

<div id='line_height'>
	줄간격 테스트 123 abc 줄간격 테스트 123 abc
	줄간격 테스트 123 abc 줄간격 테스트 123 abc
	줄간격 테스트 123 abc 줄간격 테스트 123 abc
</div>

<div id='text_overflow'>
	<div id='div1'>매우 매우 긴 문장열이 들어 있는 제목 입니다.</div>
	<div id='div2'>매우 매우 긴 문장열이 들어 있는 제목 입니다.</div>
	<div id='div3'>매우 매우 긴 문장열이 들어 있는 제목 입니다.</div>
	<div id='div4'>매우 매우 긴 문장열이 들어 있는 제목 입니다.</div>
	<div id='div5'>매우 매우 긴 문장열이 들어 있는 제목 입니다.</div>
</div>

<div id='text_shadow'>
	1907기 화이팅~
</div>

</body>
</html>