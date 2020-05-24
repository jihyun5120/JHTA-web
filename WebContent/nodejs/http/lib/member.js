/**
 * member.js
 */
let btnFunc = function(){
	if($('#btnFind')!=null){
		$('#btnFind').click(function(){
			$('#frm').attr('action', 'select').submit();
		});
	}
	
	if($('#btnInsert')!=null){
		$('#btnInsert').click(function(){
			$('#frm').attr('action', 'insert').submit();
		});

	}
	if($('#btnList')!=null){
		$('#btnList').click(function(){
			$('#frm').attr('action', 'select').submit();
		});
	}

	if($('#btnRegister')!=null){
		$('#btnRegister').click(function(){
			$('#frm').attr('action', 'insertR').submit();
		});
	}

	if($('#btnDelete')!=null){
		$('#btnDelete').click(function(){
			let yn = confirm('삭제하시겠습니까?');
			if(yn){
				$('#frm').attr('action', 'deleteR').submit();
			}
		});
	};

	if($('#btnModify')!=null){
		$('#btnModify').click(function(){
			$('#frm').attr('action', 'modify').submit();
		});
	}
	if($('#btnUpdate')!=null){
		$('#btnUpdate').click(function(){
			let yn = confirm('수정하시겠습니까?');
			if(yn){
				$('#frm').attr('action', 'modifyR').submit();
			}
		});
	}

}

let insert = function(){
	btnFunc();
	frm.rDate.valueAsDate = new Date(); //기본으로 오늘날짜 설정되어있도록.
}

let view = function(mId){
	frm.mId.value = mId;
	frm.method = 'post';
	$('#frm').attr('action', 'view').submit();
};
btnFunc();