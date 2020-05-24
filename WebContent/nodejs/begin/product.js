/**
 * product.js
 * data : 2020.02.25
 * 입고자료가 발생하면 자동으로 재고량을 증가시켜 출력하는 프로그램.(localStorage.setItem(key, v), getItem(key))
 * npm install node-localstorage 터미널로 설치
 */
var LocalStorage = require('node-localstorage').LocalStorage;
localStorage = new LocalStorage('./');

let products = []; //입고정보자료
let stock = []; //재고
let Data = function(code, codeName, ea, price){
	this.code = code; //PK
	this.codeName = codeName;
	this.ea = ea;
	this.price = price;
	this.amt = this.ea * this.price;
};

let input = function(data){//입고자료를 배열에 저장한 후 코드에 해당하는 품목의 재고데이터에 누적계산
	products.push(data);
	//재고 체크
	let flag = true;
	for(let i=0; i<stock.length; i++){
		if(stock[i].code == data.code){
			stock[i].ea = Number(stock[i].ea) +  Number(data.ea);
			stock[i].amt =  Number(stock[i].amt) +  Number(data.amt);
			flag = false;
		}
	}
	if(flag){
		let sData = new Data(data.code, data.codeName, data.ea, data.price);
		stock.push(sData);
	}
}

let output = function(){ //입고, 재고자료를 모두 출력
	//입고
	console.log('-----[입고자료]-----');
	for(p of products){
		console.log('제품코드 : %s', p.code);
		console.log('제품명 : %s', p.codeName);
		console.log('수량 : %s', p.ea.toLocaleString('en'));
		console.log('단가 : %s', p.price.toLocaleString('en'));
		console.log('총액 : %s', p.amt.toLocaleString('en'));
		console.log('------------------');
	}
	//재고
	console.log('-----[재고자료]-----');
	for(s of stock){
		console.log('제품코드 : %s', s.code);
		console.log('제품명 : %s', s.codeName);
		console.log('수량 : %s', s.ea.toLocaleString('en'));
		console.log('단가 : %s', s.price.toLocaleString('en'));
		console.log('------------------');
	}
};

let save = function(){ //배열을 문자열(JSON)로 변환하여 localStorage에 저장 
	let tempP = JSON.stringify(products);
	let tempS = JSON.stringify(stock);
	
	//창을 닫아도 값들이 저장되어 있을 수 있도록
	localStorage.setItem('products', tempP);
	localStorage.setItem('stock', tempS);
};

let read = function(){//localStorage에 있는 값을 배열에 저장
	let tempP = localStorage.getItem('products');
	let tempS = localStorage.getItem('stock');
	products = JSON.parse(tempP);
	stock = JSON.parse(tempS);
};

let main = function(argv){
	let p1 = new Data('a001', '매운새우깡', 10, 700);
	let p2 = new Data('a002', '바나나킥', 10, 1000);
	let p3 = new Data('a003', '고래밥', 5, 500);
	let p4 = new Data('a001', '매운새우깡', 5, 700);
	
	input(p1);
	input(p2);
	input(p3);
	input(p4);

	
	save();
	read();
	output();
};

main();