/**
 * member.js
 */
let btnFunc = function(){
	if('#btnRegister' != null){
		$('#btnRegister').click(function(){
			$('#frm').attr('action','insert_result.jsp').submit();				
		});
	}
	
	if('#btnList' != null){
		$('#btnList').click(function(){
			$('#frm').attr('action','select.jsp').submit();
		});
	}
	
	if('#btnInsert' != null){
		$('#btnInsert').click(function(){
			$('#frm').attr('action','insert.jsp').submit();
		});
	}
	
	if('#btnDelete' != null){
		$('#btnDelete').click(function(){
			let yn = confirm("삭제하시겠습니까?");
			if(yn){
				$('#frm').attr('action', 'delete_result.jsp').submit();
			}
		});
	}
	
	if('#btnModify' != null){
		$('#btnModify').click(function(){
			$('#frm').attr('action', 'modify.jsp').submit();
		});
	}
	
	if('#btnUpdate' != null){
		$('#btnUpdate').click(function(){
			let yn = confirm("수정하시겠습니까?");
			if(yn){
				$('#frm').attr('action', 'modify_result.jsp').submit();
			}
		});
	}
}
let view = function(mId){
	frm.mId.value = mId;
	frm.method = 'post';
	$('#frm').attr('action', 'view.jsp').submit();
}	