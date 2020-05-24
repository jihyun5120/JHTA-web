/**
 * server.js (wed server test)
 * date : 2020.02.26
 */


let express = require('../begin/node_modules/express'); //모듈 추출
let app = express();
app.use(function(req, resp){ //웹 서버 생성
	resp.send('<h1>안농~~~~~~~~~~~~</h1>');
});

app.listen(9874, function(){ //9874 포트번호로 웹 서버 실행
	console.log('server running at http://127.0.0.1:9874');
});
