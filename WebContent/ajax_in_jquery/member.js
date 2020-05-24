/**
 * 회원관리
 * date : 2020.02.21
 */
let xhr = new XMLHttpRequest();
let find = '';

let init = function(){
	$('#form').load('member_select_form.jsp', function(){//검색 폼표시
		//검색 버튼이 클릭된 경우 목록을 가져와 표시
		$('#btnFind').click(function(){
			find = $('#findStr').val();
			select();
		});
	});
};

//검색어 정보 유지
let select = function(){
	$('#findStr').val(find); //다른 창으로 넘어갔다 와도 검색창에 검색어가 남아있음.
	$('#result').removeClass('result_ok');
	$.getJSON('member_select_result.jsp?findStr='+find, function(data){
		let str = '';
		for(d of data){
			str += "<div class='item'> <a onclick=\"view('" + d.mId + "')\">"
			+ "<span class='mId'>" + d.mId +"</span>"
			+ "<span class='mName'>" + d.mName +"</span>"
			+ "<span class='rDate'>" + d.rDate +"</span>"
			+ "<span class='grade'>" + d.grade +"</span>"
			+ "</a></div>";
		}
		$('#result').html(str);
	});
		
	//엔터키를 눌렀을 때  submit 기능 중지하고 검색 버튼에 클릭 이벤트 발생
	$('#frm').submit(function(){
		$('#btnFind').click();
		return false;
	});
		
	// 회원추가 버튼이 클릭된 경우
	$('#btnInsert').click(function(){
		$('#form').load('member_insert_form.jsp');
			$('#result').html('');
	});
};

//회원가입 폼 
let insert = function(){
	frm.rDate.valueAsDate = new Date();
	//등록 버튼이 클릭된 경우
	$('#btnSave').click(function(){
		let param = $('#frm').serialize();
		$.post('member_insert_result.jsp', param, function(msg){
			$('#result').html(msg); //실행결과 성패를 result에 띄워줌.
			//회원정보 등록한 뒤 초기화
			$('#mId').val('');
			$('#mName').val('');
			$('#grade').selectedIndex=0;
			$('#mId').focus();
			$('#result').addClass('result_ok');
		});
	});
	
	//목록버튼이 클릭된 경우
	$('#btnList').click(function(){
		init();
	});
};

//목록화면에서 항목을 클릭한 경우 상세보기로 이동
let view = function(mId){
	$('#form').load('member_view_form.jsp',function(){
		$('#result').html('');
	
		$.getJSON('member_view_result.jsp', "mId="+mId, function(json){
			frm.mId.value = json.mId; //$('#mId').val(json.mId)
			frm.mName.value = json.mName;
			frm.rDate.value = json.rDate;
			frm.grade.value = json.grade;
		});
	
	
		$('#btnList').click(function(){
			init();
		});
		
		$('#btnModify').click(function(){
			modify(mId);
		});
		
		$('#btnDelete').click(function(){
			let yn = confirm("정말 삭제하시겠습니까?");
			if(yn){
				deleteF(mId);
				init();
			}else{
				$('#result').html("삭제가 취소되었습니다.");
			}
		});
	});
};

//회원정보 수정화면에서 수정 버튼이 클릭된 경우
let update = function(){
	let param = $('#frm').serialize();
	$.post('member_modify_result.jsp', param, function(data){
		$('#result').html(data);
		$('#result').addClass('result_ok');		
	});
};

//삭제버튼이 클릭된 경우
let deleteF = function(mId){
	let param = "mId=" + mId;
	$.post('member_delete_result.jsp', param, function(data){
		$('#result').html(data); 
	});
};

//상세보기 화면에서 수정 버튼이 클릭된 경우
let modify = function(mId){
	let param = "mId="+mId;
	$.post('member_modify_form.jsp', param, function(data){
		$('#form').html(data);
		$('#result').html('');
	
		$.getJSON('member_view_result.jsp', param, function(json){
			frm.mId.value = json.mId;
			frm.mName.value = json.mName;
			frm.rDate.value = json.rDate;
			frm.grade[json.grade-1].selected = true;
		});
		
		$('#btnUpdate').click(function(){
			$('#result').html("정보가 수정되었습니다.");
			update();
		});
		
		$('#btnList').click(function(){
			init();
		});
	});
};	