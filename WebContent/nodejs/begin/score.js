/**
 * score.js
 */
let array = [];
let Data = function(name, kor, eng){ //VO
	this.name = name;
	this.kor = kor;
	this.eng = eng;
	this.tot = this.kor + this.eng;
	this.avg = this.tot/2;
}
let input = function(data){ //function(Data data)
	let temp = JSON.stringify(data);
	array.push(temp);
}

let output = function(){
	for(d of array){
		let temp = JSON.parse(d);
		console.log('name : %s', temp.name);
		console.log('kor : %d', temp.kor);
		console.log('eng : %d', temp.eng);
		console.log('tot : %d', temp.tot);
		console.log('avg : %f', temp.avg);
		console.log('--------------------------');
	}
}

let main = function(args){ //public static void main(String[] args)	
	let d1 = new Data('hong', 60, 90);
	let d2 = new Data('kim', 70, 80);
	let d3 = new Data('lee', 90, 30);

	input(d1);
	input(d2);
	input(d3);
	output();
}