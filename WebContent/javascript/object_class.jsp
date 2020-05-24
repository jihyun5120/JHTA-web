<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>object_class</title>
</head>
<body>

<h3>class를 사용한 객체 생성</h3>
<script>

	class Member{
		constructor(id, name, phone){ //생성자 생성은 constructor로
			this.id = id;
			this.name = name;
			this.phone = phone;
		}
		setId(id){this.id = id;}
		setName(name){this.name = name;}
		setPhone(phone){this.phone = phone;}
		
		getId(){return this.id;}
		getName(){return this.name;}
		getPhone(){return this.phone;}
		
		toString(){
			let str = this.id + ' : ' + this.name + ' : ' + this.phone;
			return str;
		}
		toJSON(){
			let str = {"id":this.id, "name":this.name, "phone":this.phone};
			return str;
		}
		toHTML(){
			let str = `<div>
							<span>\${this.id}</span>
							<span>\${this.name}</span>
							<span>\&{this.phone}</span>
						</div>`;
			return str;
		}
	}
	
	//객체를 생성하여 배열에 저장 후 console에 출력
	let array = [];
	array.push(new Member('a000', '최', '010-0000-0000'));
	array.push(new Member('a001', '이', '010-1111-1111'));
	array.push(new Member('a002', '서', '010-2222-2222'));
	array.push(new Member('a003', '김', '010-3333-3333'));
	array.push(new Member('a004', '장', '010-4444-4444'));
	
	console.log('-----------toString()-----------');
	for(a of array){
		console.log(a.toString());
	}
	console.log('------------toJSON()------------');
	for(a of array){
		console.log(a.toJSON());
	}
	console.log('------------toHTML()------------');
	for(a of array){
		console.log(a.toHTML());
	}
</script>

</body>
</html>