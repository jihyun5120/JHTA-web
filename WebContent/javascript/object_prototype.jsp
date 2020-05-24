<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object_prototype</title>
<style>
	#title{
		background-color:#888;
		color:#fff;
		padding:10px;
		box-sizing:border-box;
	}
	#result{
		border:10px groove #B2CCFF;
		border-radius:10px;
		padding:30px;
		margin:10px;
		box-sizing:border-box;
		border-shadow:3px 3px 4px #aaa;
		font-size: 20px;
	}
	#result span{ display:inline-block; }
	#result .items:hover{
		background-color:#ddd;
		cursor:pointer;
	}
	.code{ width:80px; }
	.codeName{ width:130px; }
	.ea{ width:80px; }
	.price{width:100px;}
	#result div:last-child{ border-bottom:4px solid #aaf }
	
</style>
</head>
<body>

<h3>prototype을 사용한 메소드 선언</h3>
<div id='result'>
	<div id='title'>
		<span class='code'>코드</span> 
		<span class='codeName'>코드명</span> 
		<span class='ea'>수량</span> 
		<span class='price'>가격</span>
	</div>
</div>
<script>
	function Product(code, codeName, ea, price){
		this.code = code;
		this.codeName = codeName;
		this.ea = ea;
		this.price = price;
	}
	//Product로 만들어진 객체들이 사용하는 공유메소드(prototype)
	Product.prototype.setCode = function(code){this.code = code};
	Product.prototype.setCodeName = function(codeName){this.codeName = codeName};
	Product.prototype.setEa = function(ea){this.ea = ea};
	Product.prototype.setPrice = function(price){this.price = price};
	
	Product.prototype.toJSON1 = function(){ //backtic
		let str = `{"code":"\${this.code}", "codeName":"\${this.codeName}", "ea":"\${this.ea}", "price":"\${this.price}"}`;
		return str;
	}
	Product.prototype.toJSON2 = function(){ //map
		let str = {"code":this.code, "codeName":this.codeName, "ea":this.ea, "price":this.price};
		return str;
	}
	Product.prototype.toHTML = function(){
		let str = "<div class='items'>" 
				+ " <span class='code'>" + this.code + '</span>' 
				+ " <span class='codeName'>" + this.codeName + '</span>' 
				+ " <span class='ea'>" + this.ea + '</span>' 
				+ " <span class='price'>" + this.price + '</span>';
		return str;
	}
	
	//Product 객체를 생성하여 배열에 추가한 후 입력값을 div에 표시하시오.
	let div = document.getElementById('result');
	let array = [];
	let p1 = new Product('a001', '곱창', '1', '1000');
	let p2 = new Product('a002', '회', '2', '10000');
	
	array.push(p1);
	array.push(p2);
	
	for(a of array){
		div.innerHTML += a.toJSON1() + '<br/>';
		div.innerHTML += a.toJSON2().code + ' &nbsp;' + a.toJSON2().codeName + ' &nbsp;' + a.toJSON2().ea + ' &nbsp;' + a.toJSON2().price;
		div.innerHTML += a.toHTML() + '<br/>'; 
	}
</script>

</body>
</html>