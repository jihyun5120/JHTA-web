/**
 * http://usejsdoc.org/
 */
function naver(){
	//네이버아디디로로그인 초기화
	var naverLogin = new naver.LoginWithNaverId({
		clientId: "Fkf2eW7uHl8nfxnEmk0_", /*개발자센터에 등록한 ClientID*/
		callbackUrl: "http://localhost:8888/1907-web/ee/login/naver_login.jsp", /*개발자센터에 등록한 callback Url*/
		isPopup: true, /* 팝업을 통한 연동처리 여부 */
		loginButton: {color: "green", type: 3, height: 60} /* 로그인 버튼의 타입을 지정 */
	});
	//설정정보를 초기화하고 연동을 준비
	naverLogin.init();
}