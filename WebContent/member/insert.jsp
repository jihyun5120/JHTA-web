<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보입력</title>
<style>
	h3{
		border:5px groove #A19CFF;
		width:180px;
		height:50px;
		padding:10px 5px 10px 5px;
		box-sizing:border-box;
		text-align:center;
		border-radius:20px;
		font-family:godoMaum;
		letter-spacing:5px;
		margin-left:30px;
	}
	input{
		margin-top:10px;
		display: inline-block;
	}
	select{
		margin-top:5px;
		display: inline-block;
	}
	
	#result{
		border:5px double ;
		width:500px;
		height:700px;
		margin-left:10px;
		padding:10px;
		box-sizing:border-box;
		border-radius:10px;
		font-family:카페24 동동;
	}
</style>
</head>
<body>
<div id='m_insert' class='m_insert'> //같은 이름으로 id는 1개만, class는 여러개가능, &nbsp;는 2타이상 띄어쓰기 인식하게 하는 것, label로 감싸서 라디오버튼뿐만아니라 글자를 눌러도 선택되게//
	<h3>회원정보입력</h3>
	<form name='m_frm' action='abc.jsp'>
		<div id='result'>
			<label>아이디</label> 
			<input type='text' name='mId' size='12' value='hong' maxlength='10' />
			<br/>
			<label>암&nbsp;&nbsp;&nbsp;호</label>
			<input type='password' name='pwd' size='12' maxlength='20' />
			<br/>
			<label>회원명</label>
			<input type='search' name='mName' size='15' />
			<br/>
			<label>생년월일</label>
			<input type='date' name='birth' />
			<label>[주민번호 뒷자리 한자]</label>
			<input type='text' name='jumin' size='1' maxlength='1' />
			<br/>
			<label>성&nbsp;&nbsp;&nbsp;별</label>
			<label><input type='radio' name='gender' value='m'>남자</label>
			<label><input type='radio' name='gender' value='f'>여자</label>
			<br/>
			<label>취&nbsp;&nbsp;&nbsp;미</label>
			<label><input type='checkbox' name='hobby' value='축구'>축구</label>
			<label><input type='checkbox' name='hobby' value='야구'>야구</label>
			<label><input type='checkbox' name='hobby' value='배구'>배구</label>
			<label><input type='checkbox' name='hobby' value='농구'>농구</label>
			<br/>
			<label>좋아하는 색상</label>
			<input type='color' name='fColor' />
			<br/>
			<label>주량</label>
			<input type='range' min='0' max='20000' step='1000' value='10000' />
			<br/>
			<label>증명사진</label>
			<input type='file' name='photo' />
			<br/>
			<img id='img' width='130px' height='150px' src='http://placehold.it/130X150'/>
			<br/>
			<label>간단한 자기 소개</label>
			<br/>
			<textarea rows="10" cols="60" name='info'></textarea>
			<br/>
			<label>학년</label>
			<select name='grade' size='1'>
				<option value='1'>1학년</option>
				<option value='2'>2학년</option>
				<option value='3'>3학년</option>
				<option value='4'>4학년</option>
				<option value='5'>5학년</option>
			</select>
			<br/>
			<label>지원과정</label>
			<select name='course'>
				<optgroup label="Web">
					<option value='html5'>html5</option>
					<option value='css'>css</option>
					<option value='javascript'>javascript</option>
				</optgroup>
				<optgroup label="Framework">
					<option value='ajax'>ajax</option>
					<option value='mybatis'>mybatis</option>
					<option value='node.js'>node.js</option>
					<option value='spring'>spring</option>
				</optgroup>
			</select>
			<p/>
		</div>
		<input type='reset' value='초기화' />
		<input type='button' value='버튼' />
		<input type='submit' value='전송'/>
	</form>
</div>
<script>
	m_frm.photo.onchange = function(event){
		let url = event.srcElement.files[0];
		let reader = new FileReader();
		reader.readAsDataURL(url);
		reader.onload = function(ev){
			let img = new Image();						
			let target = document.getElementById('img');
			img.src = ev.target.result;
			target.src = img.src;
		}
	}
</script>
</body>
</html>
