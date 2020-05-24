/**
 * 회원관리
 * date : 2020.02.21
 */
let xhr = new XMLHttpRequest();
let find = ''; //화면이 바뀌어도 검색어를 유지하기 위한 변수

let init = function(){
	xhr.open('get', 'member_select_form.jsp');
	xhr.send();
	xhr.onreadystatechange = function(){
		if(xhr.status==200 && xhr.readyState==4){
			$('#form').html(xhr.responseText);  //검색 폼 표시
			
			//검색 버튼이 클릭된 경우 목록을 가져와 표시
			$('#btnFind').click(function(){
				find = $('#findStr').val();
				select();
			});
		}
	}
}

//검색어 정보 유지
let select = function(){
	$('#findStr').val(find); //다른 창으로 넘어갔다 와도 검색창에 검색어가 남아있음.
	xhr.open('get', 'member_select_result.jsp?findStr=' + find);
	xhr.send();
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				let data = JSON.parse(xhr.responseText);
				let str = '';
					for(d of data){
						str += "<div class='item' <a onclick=\"view('" + d.mId + "')\">"
							+ "<span class='mId'>" + d.mId +"</span>"
							+ "<span class='mName'>" + d.mName +"</span>"
							+ "<span class='rDate'>" + d.rDate +"</span>"
							+ "<span class='grade'>" + d.grade +"</span>"
							+ "</a></div>";
					}
					$('#result').removeClass('result_ok');
					$('#result').html(str);
			}
		};
		
		//엔터키를 눌렀을 때  submit 기능 중지하고 검색 버튼에 클릭 이벤트 발생
		$('#frm').submit(function(){
			$('#btnFind').click();
			return false;
		});
		
		// 회원추가 버튼이 클릭된 경우
		$('#btnInsert').click(function(){
			xhr.open('get', 'member_insert_form.jsp');
			xhr.send();
			xhr.onreadystatechange = function(){
				if(xhr.status==200 && xhr.readyState==4){
					$('#form').html(xhr.responseText);
					$('#result').html('');
					
				}
			};
		});
		
};

//회원가입 폼 
let insert = function(){
	frm.rDate.valueAsDate = new Date();
	//등록 버튼이 클릭된 경우
	$('#btnSave').click(function(){
		let param = $('#frm').serialize();
		xhr.open('post', 'member_insert_result.jsp');
		xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded;charset=utf-8');
		xhr.send(param);
		xhr.onreadystatechange = function(){
			if(xhr.status==200 && xhr.readyState==4){
				$('#result').html(xhr.responseText);
				$('#mId').val('');
				$('#mName').val('');
				$('#grade').selectedIndex=0;
				$('#mId').focus();
				$('#result').addClass('result_ok');
			}
		};
	});
	
	//목록버튼이 클릭된 경우
	$('#btnList').click(function(){
		init();
	});
};

//목록화면에서 항목을 클릭한 경우 상세보기로 이동
let view = function(mId){
	xhr.open('get', 'member_view_form.jsp');
	xhr.send();
	xhr.onreadystatechange = function(){
		if(xhr.status==200 && xhr.readyState==4){
			$('#form').html(xhr.responseText);
			$('#result').html("");
			xhr.open('post', 'member_view_result.jsp');
			xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded;charset=utf-8');
			xhr.send("mId=" + mId);
			xhr.onreadystatechange = function(){
				if(xhr.status==200 && xhr.readyState==4){
					let json = JSON.parse(xhr.responseText);
					frm.mId.value = json.mId;
					frm.mName.value = json.mName;
					frm.rDate.value = json.rDate;
					frm.grade.value = json.grade;
				}
			};
			
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
		}
	};
};

//회원정보 수정화면에서 수정 버튼이 클릭된 경우
let update = function(){
	let param = $('#frm').serialize();
	xhr.open('post', 'member_modify_result.jsp');
	xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded;charset=utf-8');
	xhr.send(param);
	xhr.onreadystatechange = function(){
		if(xhr.status==200 && xhr.readyState==4){
			$('#result').html(xhr.responseText);
			$('#result').addClass('result_ok');
		}
	};
};

//삭제버튼이 클릭된 경우
let deleteF = function(mId){
	let param = "mId=" + mId;
	xhr.open('post', 'member_delete_result.jsp');
	xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded;charset=utf-8');
	xhr.send(param);
	xhr.onreadystatechange=function(){ 
		if(xhr.status==200 && xhr.readyState==4){
			$('#result').html(xhr.responseText); 
		} 
	} 
}

//상세보기 화면에서 수정 버튼이 클릭된 경우
let modify = function(mId){
	let param ="mId = " + mId;
	xhr.open('post', 'member_modify_form.jsp');
	xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded;charset=utf-8');
	xhr.send(param);
	xhr.onreadystatechange = function(){
		if(xhr.status==200 && xhr.readyState==4){
			$('#form').html(xhr.responseText);
			$('#result').html('');
			
			xhr.open('post', 'member_view_result.jsp');
			xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded;charset=utf-8');
			xhr.send("mId=" + mId);
			xhr.onreadystatechange = function(){
				if(xhr.status==200 && xhr.readyState==4){
					let json = JSON.parse(xhr.responseText);
					frm.mId.value = json.mId;
					frm.mName.value = json.mName;
					frm.rDate.value = json.rDate;
					frm.grade[json.grade-1].selected = true;
				}
			}
			
			$('#btnUpdate').click(function(){
				$('#result').html("정보가 수정되었습니다.");
				update();
			});
			
			$('#btnList').click(function(){
				init();
			});
		}
	}
}	