/**
 * module_member.js
 * date : 2020.02.26
 */

let member = [];
exports.Data = function(id, name, phone, address){
	this.id = id;
	this.name = name;
	this.phone = phone;
	this.address = address;
};

exports.input = function(data){
	let temp = JSON.stringify(data)
	member.push(temp);
};

exports.output = function(){
	let str = '----[회원정보조회]----\n';
	for(m of member){
		let data = JSON.parse(m); 
		str += 'id : ' + data.id + '\n'
			+  'name : ' + data.name + '\n'
			+  'phone : ' + data.phone + '\n'
			+  'address : ' + data.address; + '\n'
	}
	return str;
};

exports.select = function(id){
	let str = '--[id : ' + id + ' 검색결과]--\n';
	for(m of member){
		let data = JSON.parse(m); 
		if(data.id == id){
			str += 'id : ' + data.id + '\n'
				+  'name : ' + data.name + '\n'
				+  'phone : ' + data.phone + '\n'
				+  'address : ' + data.address; + '\n'
		}
	}
	return str;
};