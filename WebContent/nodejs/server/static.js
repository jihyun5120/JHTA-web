/**
 * static.js
 * date : 2020.02.26
 * public폴더안에 있는 파일들을 static형으로 로드
 */

let express = require('../begin/node_modules/express');
let app = express();

//express.static()메소드의 매개변수에는 제공할 파일이 들어있는 폴더이름 작성.
app.use(express.static('public'));//주석처리하면 resp.send가 실행되어 창에 보임
app.use(function(req, resp){ //서버를 실행하면 안에 내용들이 뜸.
	console.log('Hello Static!!!');
	resp.send('<h3>Hello Static!!!</h3>'); //index.html이 실행되어 창에 안보임.
});

app.listen(9991, function(){
	console.log('http://127.0.0.1:9991');
})