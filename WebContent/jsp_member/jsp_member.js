/**
 * jsp_member.js
 */

let btnFunc = function(){
	
	if('#btnPhoto' != null){
		$('#btnPhoto').change(function(e){
			let ele = e.target; //javascript : event.srcElement.
			let url = ele.files[0]; //선택된 파일의 경로.
			
			let reader = new FileReader();
			reader.readAsDataURL(url); //url패턴으로 들어온 파일을 읽어라!
			
			reader.onload = function(ev){
				let img = new Image();
				img.src = ev.target.result;
				$('#photo').attr('src', img.src);
			}
		});
	}
	
	if('#btnRegister' != null){
		$('#btnRegister').click(function(){
			$('#frm').attr('action','insertR.mm').submit();	//보안이유로 매핑해서 넘김.			
		});
	}
	
	if('#btnList' != null){
		$('#btnList').click(function(){
			$('#frm').removeAttr('enctype'); //request.getParameter() 하기 위해서.
			$('#frm').attr('action','select.mm').submit();
		});
	}
	
	if('#btnFind' != null){
		$('#btnFind').click(function(){
			$('#frm').attr('action', 'select.mm').submit();
		});
	}
	
	if('#btnInsert' != null){
		$('#btnInsert').click(function(){
			$('#frm').attr('action','insert.mm').submit(); 
		});
	}
	
	if('#btnDelete' != null){
		$('#btnDelete').click(function(){
			let pass = prompt("암호를 입력해주세요.");
			$('#flag').val('1');
			if(pass != null){
				$('#pwd').val(pass);				
				let yn = confirm("삭제하시겠습니까?");
				if(yn){
					$('#frm').attr('action', 'deleteR.mm').submit();
				}
			}
		});
	}
	
	if('#btnPdel' !== null){
		$('#btnPdel').click(function(){
			$('#flag').val('2');
			$('#frm').removeAttr('enctype');
			$('#frm').attr('action', 'deleteR.mm').submit();
		});
	}
	
	if('#btnModify' != null){
		$('#btnModify').click(function(){
			$('#frm').attr('action', 'modify.mm').submit();
		});
	}
	
	if('#btnUpdate' != null){
		$('#btnUpdate').click(function(){
			let yn = confirm("수정하시겠습니까?");
			if(yn){
				$('#frm').attr('action', 'modifyR.mm').submit();
			}
		});
	}
}

let insert = function(){
	
	btnFunc();
}

let view = function(mId){
	frm.mId.value = mId;
	frm.method = 'post';
	$('#mId').val(mId);
	$('#frm').attr('action', 'view.mm').submit();
};	

let goPage = function(nowPage){
	$('#nowPage').val(nowPage); //val : value값.
	$('#frm').attr('action', 'select.mm').submit();
}

let nPhoto = function(){
	$('#photo').attr('src', './images/profile.PNG');
}