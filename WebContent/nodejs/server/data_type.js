/**
 * data_type.js
 * date : 2020.02.26
 */

let express = require('../begin/node_modules/express');
let app = express();
let items = [ {'name':'우유', 'price':2000}, {'name':'홍차', 'price':3000}, {'name':'커피', 'price':1000} ];
app.use(express.static('public'));

//html
app.use('/html', function(req, resp){
	let output = '<!doctype html><html><head>'
			   + '<title> HTML type </title>'
			   + '</head><body>';
	for(d of items){
		output += '<div>'
				+ '<span>' + d.name + '</span>'
				+ '<span>' + d.price + '</span>'
				+ '</div>'
	}
	output += '</body></html>';
	
	resp.send(output);
});

//json
app.use('/json', function(req, resp){
	resp.send(items);
});

//xml
app.use('/xml', function(req, resp){
	let output = '<?xml version="1.0" encoding="utf-8"?><products>';
	for(d of items){
		output += '<product>'
				+ '<name>' + d.name + '</name>'
				+ '<price>' + d.price + '</price>'
				+ '</product>';
	}
	output += '</products>';
	resp.type('text/xml'); //xml타입으로 안정적으로 실행될 수 있게 해줌. (응답정보유형)
	resp.send(output);
});

//http://127.0.0.1:9991/parameter?findStr=홍차
app.use('/parameter', function(req, resp){
	let findStr = req.param('findStr');
	for(d of items){
		if(d.name == findStr){
			resp.send('단가 : ' + d.price);
		}
	}
});

app.listen(9991, function(){
	console.log('http://127.0.0.1:9991/ [ html | json | xml ]');
})