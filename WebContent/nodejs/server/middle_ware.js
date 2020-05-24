/**
 * middle_ware.js
 * date : 2020.02.26
 */

let express = require('../begin/node_modules/express');
let app = express();

app.use(function(req, resp, next){
	console.log('first');
	next(); //다음 콜백함수를 의미
});
app.use(function(req, resp, next){
	console.log('sencond');
	next();
});
app.use(function(req, resp, next){
	resp.send('<h1>Hello Middleware!</h1>'); //웹창에 띄워줌.
});
app.listen(9991, function(){
	console.log('안농안농!!!!url:127.0.0.1:9991');
});