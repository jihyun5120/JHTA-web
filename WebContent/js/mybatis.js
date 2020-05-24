/**
 * http://usejsdoc.org/
 */

let getId = function(id) {return document.getElementById(id);}
let url = "./index_mybatis.jsp?inc=./mybatis/";

let btnFunc = function() {
	//select.jsp 입력버튼
	if (getId("btnInsert") != null) {
		getId("btnInsert").onclick = function() {
			frm.action = "insert.myba";
			frm.submit();
		}
	}
	
	//insert.jsp 저장버튼
	if (getId("btnRegister") != null) {
		getId("btnRegister").onclick = function() {
			frm.action = "insertR.myba";
			frm.submit();s
		}
	}
	
	//select.jsp 검색버튼
	if (getId("btnFind") != null) {
		getId("btnFind").onclick = function() {
			frm.nowPage.value = 1;
			frm.enctype = "";
			frm.action = "select.myba";
			frm.submit();
		}
	}
	
	//insert.jsp 저장버튼
	if (getId("btnRegister") != null) {
		getId("btnRegister").onclick = function() {
			frm.action = "insertR.myba";
			frm.submit();
		}
	}
	
	//insert.jsp 취소버튼
	if (getId("btnList") != null) {
		getId("btnList").onclick = function() {
			frm.enctype = "";
			frm.action = "select.myba";
			frm.submit();
		}
	}
	
	//insert.jsp 파일첨부버튼
	if (getId("btnAtt") != null) {
		let btn = getId("btnAtt");
		btn.onchange = function() {
			let attList = getId("attList");
			let str = "<ul>";
			let files = btn.files;
			for (f of files) {
				str += "<li>" + f.name +"(" + parseInt(f.size/1000) + " KB)</li>";
			}
			str += "</ul>";
			attList.innerHTML = str;
		}
	}
	
	//view.jsp 수정버튼
	if (getId("btnModify") != null) {
		getId("btnModify").onclick = function() {
			frm.action = "modify.myba";
			frm.submit();
		}
	}
	
	//modify.jsp 저장버튼
	if (getId("btnUpdate") != null) {
		getId("btnUpdate").onclick = function() {
			let pwd = prompt("비밀번호를 입력하세요.");
			if (pwd != null && pwd != "") {
				frm.pwd.value = pwd;
				frm.action = "modifyR.myba";
				frm.submit();
			}
		}
	}
	
	//view.jsp 삭제버튼
	if (getId("btnDelete") != null) {
		getId("btnDelete").onclick = function() {
			let password = prompt("비밀번호를 입력하세요.");
			if (password != null && password != "") {
				frm.pwd.value = password;
				frm.action = "deleteR.myba";
				frm.submit();
			}
		}
	}
	
	//view.jsp 댓글버튼
	if (getId("btnRepl") != null) {
		getId("btnRepl").onclick = function() {
			frm.action = "repl.myba";
			frm.submit();
		}
	}
	
	//repl.jsp 댓글저장
	if (getId("btnReplR") != null) {
		getId("btnReplR").onclick = function() {
			frm.action = "replR.myba";
			frm.submit();
		}
	}
}

//select.jsp 상세보기
let view = function(serial, event) {
	frm.serial.value = serial;
	if (event.keyCode == 116) {
		frm.v.value = 'x';
	}
	frm.action = "view.myba";
	frm.submit();
}

//select.jsp 페이징
let go = function(nowPage) {
	frm.nowPage.value = nowPage;
	frm.action = "select.myba";
	frm.submit();
}

//modify.jsp 체크박스
let delCheck = function(box) {
	let tag = box.parentElement.childNodes[1]; //체크박스부모(div)의 첫번째 자식체크박스.
	if (box.checked) {
		tag.style.textDecoration = "line-through";
		tag.style.color = "#f00";
	} else {
		tag.style.textDecoration = "none";
		tag.style.color = "";
	}
}