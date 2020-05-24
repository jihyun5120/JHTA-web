<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>string 객체</title>
</head>
<body>
<h3>String 객체</h3>
<fieldset id='info'>
	<ol>
		<li>length : 문자열의 길이</li>
		<li>charAt(index) : index위치의 문자</li>
		<li>indexOf(str) : str의 위치</li>
		<li>replace(regExp, replacement) : 문자열 변경(정규식을 이용해)</li>
		<li>split(seprtator, limit) : 문자열을 limit의 개수만큼 분해</li>
		<li>substring(start, end) : 문자열추출</li>
	</ol>
</fieldset>>
<script>
	let str = "abc 가나다 123 다나가";
	console.log(str + ' : length => ' + str.length); //15 리턴
	
	let c = str.charAt(1);
	console.log('str.charAt(1) : ', c); //b 리턴
	
	let index1 = str.indexOf('가');
	let index2 = str.lastIndexOf('가');
	console.log('str.indexOf("가") : ', index1); //'4' (리턴앞에서부터 읽어서 그 자리 인덱스값을 가져옴.)
	console.log('str.lastIndexOf("가") : ', index2); //'14' (뒤에서부터 읽어서 그 자리 인덱스값을 가져옴.)
	
	let rep1 = str.replace('가', '각'); 
	let rep2 = str.replace(/가/, '간'); //정규식사용 (가 한개만)
	let rep3 = str.replace(/가/g, '간'); // 정규식사용 (가 모두)
	console.log('rep1 : ', rep1); //'abc 각나다 123 다나가' 리턴
	console.log('rep2 : ', rep2); //'abc 간나다 123 다나가'
	console.log('rep3 : ', rep3); //'abc 간나다 123 다나간' 리턴
	
	let array = str.split(' ');
	for(index in array){
		console.log(index + ' : ' + array[index]); //0 : abc, 1 : 가나다, 2 : 123, 3 : 다나가
	}
	
	let s1 = str.substring(0, 3);
	console.log('substring(0, 3) : ', s1); //'abc' 리턴
	let s2 = str.substring(11);
	console.log('substring(11) : ', s2); //'다나가' 리턴
	
	//생년, 생월, 생일, 성별을 구별하여 console에 출력
	let str2 = "881213-1234567";
	let year = str2.substr(0,2);
	let month = str2.substr(2,2);
	let day = str2.substr(4,2);
	let s = str2.substr(7,1);
	let sex = (s%2==0)? '여자' : '남자';
	console.log('생년 : ', year); //'생년 :  88' 리턴
	console.log('생월 : ', month); //'생월 :  12' 리턴
	console.log('생일 : ', day); //'생일 :  13' 리턴
	console.log('성별 : ', sex); //'성별 :  남자' 리턴
</script>

</body>
</html>