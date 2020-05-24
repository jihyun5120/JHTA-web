<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_sort</title>
</head>
<body>

<h3>배열 정렬</h3>
<script>
	let array1 = [123, 42, 34, 43, 234, 1, 43, 5, 3, 46]; 
	let array2 = ['a', '32', '가', 'sj2j', 'sfsd', '다나'];
	
	console.log('정렬 전 : ', array1); //'[123, 42, 34, 43, 234, 1, 43, 5, 3, 46]' 리턴
	console.log('정렬 전 : ', array2); //'["a", "32", "가", "sj2j", "sfsd", "다나"]' 리턴
	
	array1.sort(); //sort()는 문자형태로 정렬함
	array2.sort();
	
	console.log('정렬 후 : ' + array1); //'1,123,234,3,34,42,43,43,46,5' 리턴
	console.log('정렬 후 : ' + array2); //'32,a,sfsd,sj2j,가,다나' 리턴
	
	array1.sort(
		function numAsc(left, right){
			return left-right;
		}
	);
	console.log('array1 숫자정렬 후 : ', array1); //'[1, 3, 5, 34, 42, 43, 43, 46, 123, 234]' 리턴
	array1.reverse();
	console.log('array1 숫자정렬 후 reverse : ', array1); //'[234, 123, 46, 43, 43, 42, 34, 5, 3, 1]' 리턴
	
	console.log('join : ', array1.join(' -> ')); //'234 -> 123 -> 46 -> 43 -> 43 -> 42 -> 34 -> 5 -> 3 -> 1' 리턴 (join : 배열 출력할때 , 대신 ----> 으로 해달라!)
	
	//Object형 데이터를 배열에 저장한 후 원하는 키로 정렬
	function Date(id, score){
		this.id = id;
		this.score - score;
	}
	
	let array3 = [];
	array3.push(new Date('1', 60));
	array3.push(new Date('7', 30));
	array3.push(new Date('8', 50));
	array3.push(new Date('4', 88));
	array3.push(new Date('9', 62));
	array3.push(new Date('5', 64));
	array3.push(new Date('6', 29));
	array3.push(new Date('2', 10));
	array3.push(new Date('3', 99));
	
	//id순으로 오름차 정렬
	function IdSort(obj1, obj2){
		let r = (obj1.id>obj2.id)? 1 : -1; //or return id1-id2;
		return r;
	}
	array3.sort(IdSort);
	console.log('---------object sort--------')
	for(d of array3){
		console.log(d.id + ' : ' + d.score);
	}
	
	function scoreSort(obj1, obj2){
		return Number(obj1.score) - Number(obj2.score);
	}
	array3.sort(scoreSort);
	console.log('--------------');
	for(d of array3){
		console.log(d.id + ' : ' + d.score);
	}
	
	//배열 요소 삭제
	let array4 = [343, 45, 454, 2, 234, 5, 4, 2, 4, 24, 25, 2, 5];
	console.log('삭제 전 : ', array4); //343, 45, 454, 2, 234, 5, 4, 2, 4, 24, 25, 2, 5
	for(i=0; i<array4.length; i++){
		if(array4[i]>100){ //100보다 큰 숫자 삭제
			array4.splice(i, 1);			
		}
	}
	console.log('삭제 후 : ', array4); //45, 2, 5, 4, 2, 4, 24, 25, 2, 5
</script>

</body>
</html>