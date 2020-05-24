/**
 * member.js
 * date : 2020.02.26
 */

let mm = require('./module_member.js');

let m1 = new mm.Data('a', '홍길동', '010-1111-1111', '서울');
let m2 = new mm.Data('b', '올라프', '010-2222-2222', '경기');
let m3 = new mm.Data('c', '공실이', '010-3333-3333', '부산');
let m4 = new mm.Data('d', '보거스', '010-4444-4444', '거제도');

mm.input(m1);
mm.input(m2);
mm.input(m3);
mm.input(m4);

console.log(mm.select('b'));
console.log(mm.output());