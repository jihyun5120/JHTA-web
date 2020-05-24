/**
 * web_server.js
 * data : 2020.02.27
 * 웹서버 구축
 */

let http = require('http');

let db = require('../../begin/node_modules/oracledb');
let dbConf = require('./lib/dbConfig');
db.autoCommit = true;

let express = require('../../begin/node_modules/express');
let bodyParser = require('../../begin/node_modules/body-parser');

const hostName = 'localhost';
const port = 4000;

var config = {
		user:dbConf.user,
		password:dbConf.password,
		connectString:dbConf.connectString
};

var app = express();
app.engine('html', require('../../begin/node_modules/ejs').renderFile);
app.use(express.static(__dirname + '/css')); //css파일을 정적형으로 변경(안정적으로 읽을 수 있도록).
app.use(express.static(__dirname + '/lib'));
app.use(bodyParser.urlencoded({extended:true})); //한글이 들어왔을 때 정상적으로 처리되도록.

//웹서버 생성
var server = http.createServer(app); //express와 body-parser가 서버의 역할을 담당.
var conn; //db connection object

function connect(){
	db.getConnection(config, function(err, connection){
		if(err){
			console.log('connection fail..' + err);
		}else{
			console.log('connection..' + connection);
			conn = connection;
		}
	});
};
connect();

app.post('/insert', function(req, resp){
	resp.render(__dirname + '/insert_form.ejs');
});
app.post('/insertR', function(req, resp){
	let msg = "회원정보가 정상적으로 추가되었습니다.";
	let param = [req.body.mId, req.body.mName, req.body.rDate, req.body.grade];
	let sql = "insert into member1(mId, mName, rDate, grade) values(:mId, :mName, :rDate, :grade)";
	conn.execute(sql, param, function(err, data){
		if(err){
			msg = err;
		}else{
			resp.render(__dirname + '/insert_result.ejs', {'msg':msg});
		}
	});
});
app.post('/modify', function(req, resp){
	let param = [req.body.mId];
	let findStr = req.body.findStr;
	let sql = "select mId, mName, to_char(rDate,'rrrr-mm-dd') rDate, grade from member1 where mId=:mId";
	conn.execute(sql, param, function(err, data){
		if(err){
			console.log(err);
			return;
		}else{
			resp.render(__dirname + '/modify_form.ejs', {'data':data, 'findStr':findStr});
		}
	});
});
app.post('/modifyR', function(req, resp){
	let msg = '회원정보가 정상적으로 수정되었습니다.';
	let param = [req.body.mName, req.body.rDate, req.body.grade, req.body.mId];
	let findStr = req.body.findStr;
	let sql = "update member1 set mName=:mName, rDate=:rDate, grade=:grade where mId=:mId";
	conn.execute(sql, param, function(err, data){
		if(err){
			console.log(err);
		}else{
			resp.render(__dirname + '/modify_result.ejs', {'msg':msg, 'findStr':findStr});
		}
	});
});
app.post('/deleteR', function(req, resp){
	let param = [req.body.mId]; //parameter는 무조건 배열.
	let msg = "자료가 정상적으로 삭제되었습니다.";
	let sql = "delete from member1 where mId=:mId";
	conn.execute(sql, param, function(err, data){
	if(err){
		msg = err;
	}else{
		resp.render(__dirname + '/delete_result.ejs', {'msg':msg, 'findStr':req.body.findStr});
	}
	});
});
app.post('/view', function(req, resp){
	let mId = req.body.mId;
	let sql = "select mId, mName, to_char(rDate, 'rrrr-mm-dd') rDate, grade from member1 where mId=:mId";
	conn.execute(sql, [mId], function(err, data){
		resp.render(__dirname + '/view.ejs', {'data':data, 'findStr':req.body.findStr})
	});
});

//페이지 정보가 없이 단순히 domain정보만 들어온 경우
app.all('/', function(req, resp){ //맨 상단에 쓰면 트러블이 발생할 수 있어서 하단에 사용.
	select(req, resp);
}); 

app.all('/select', function(req, resp){
	select(req, resp);
});

function select(req, resp){
	let findStr = '';
	if(req.method=='POST'){ //form태그가 있으면
		findStr = req.body.findStr; //파라메터값이 넘어옴, *.jsp에서 request.getParameter("findStr"); 와 같은 기능.
	}
	let sql = "select mId, mName, to_char(rDate, 'rrrr-mm-dd') rDate, grade from member1"
			+ " where mId like :id or mName like :id order by mName asc"; //like에서 ? 대신 :변수명 을 사용함.
	conn.execute(sql, ["%" + findStr + "%"], function(err, data){ //data에는 select된 결과물이 들어감.
		if(err){
			console.log(err);
		}else{
			console.log(data);
			resp.render(__dirname + '/select.ejs', {'data':data, 'findStr':findStr}); //render는 표시된 페이지를 던짐.
		}
	});
};

server.listen(port, hostName);
console.log('http://%s:%d 로 접속하세요.', hostName, port);	

function disCon(connection){
	connection.close(function(err){
		if(err){
			console.log(err.message);			
		}
	});
};