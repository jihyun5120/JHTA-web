/**
 * data_process.js
 */
let express = require('../begin/node_modules/express');
let bodyParser = require('../begin/node_modules/body-parser');

let app = express();
app.use(express.static('public'));
app.use(bodyParser.urlencoded({extended:false}));

let items = [ {'name':'우유', 'price':2000}, {'name':'홍차', 'price':3000}, {'name':'커피', 'price':1000} ];

//전체조회
app.post('/all', function(req, resp){
	let str = '<div id="title"><span class="a">품목</span><span class="b">단가</span></div>';
	
	for(d of items){
		str += '<div><span class="a">' + d.name + '</span><span class="b">' + d.price + '</span></div>';
	}
	let css = "<style>#title{background:black; color:white;}</style>";
	resp.send(css + str);
});
	
//품목조회
app.get('/search', function(req, resp){
	let find = req.param('name');
	let msg = '검색결과<br/>';
	for(d of items){
		if(d.name == find){
			msg += '<li>품목 : ' + d.name + '</li><li>단가 : ' + d.price + '</li>';
		}
	}
	resp.send(msg);
});

//입력
app.post('/insert', function(req, resp){
	let n = req.body.name;
	let p = req.body.price;
	let d = {'name':n, 'price':p};
	items.push(d);
	resp.send(n + '자료가 추가되었습니다.');
});

//수정
app.post('/modify', function(req, resp){
	let n = req.body.name;
	let p = req.body.price;
	for(d of items){
		if(d.name == n){
			d.price = p;
			resp.send(n + '의 단가가 ' + p + '로 수정되었습니다.')
		}else{
			resp.send({error:'존재하지 않는 데이터입니다.'});
		}
	}
});

//삭제
app.post('/del', function(req, resp){
	let n = req.body.name;
	for(i=0; i<items.length; i++){
		if(itemd[i].name == n){
			items.splice(i,1);
			resp.send(n + '자료가 삭제되었습니다.');
		}else{
			resp.send({error:'존재하지 않는 데이터입니다.'});
		}
	}
})

app.listen(9993, function(){
	console.log('http://127.0.0.1:9993')
})