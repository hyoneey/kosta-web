//캡차 오디오 요청
function audioCaptcha() {
	$.ajax({
		url: '/common/jspPage/captChaAudio.do',
		type: 'POST',
		dataType: 'text',
		data: 'rand=' + rand + '&ans=y',
		async: false,		
		success: function(resp) {
			var uAgent = navigator.userAgent;
			var soundUrl = '/common/jspPage/captChaAudio.do?rand=' + resp + '&ans=' + resp;
			console.log(soundUrl);
			if (uAgent.indexOf('Trident') > -1 || uAgent.indexOf('MSIE') > -1) {
				winPlayer(soundUrl+'&agent=msie');
			} else if (!!document.createElement('audio').canPlayType) {
				try { new Audio(soundUrl).play(); } catch(e) { winPlayer(soundUrl); }
			} else window.open(soundUrl, '', 'width=1,height=1');
		}
	});
}

function winPlayer(objUrl) {
	$('#audiocatpch').html(' <bgsound src="' + objUrl + '">');
}

//캡차 이미지 요청 (캐쉬문제로 인해 이미지가 변경되지 않을수있으므로 요청시마다 랜덤숫자를 생성하여 요청)
function changeCaptcha() {
	rand = Math.random();
	$('#catpcha').html('<img src="/common/jspPage/captChaImg.do?rand=' + rand + '" alt="보안 문자"/>');
}

$(document).ready(function() {
	
	changeCaptcha(); //캡차 이미지 요청
	
	$('#reLoad').click(function(){ changeCaptcha(); }); //새로고침버튼에 클릭이벤트 등록
	$('#soundOn').click(function(){ audioCaptcha(); });	//음성듣기버튼에 클릭이벤트 등록

	/*
	var captchaChk = true;

	if(!$('#captChaValue').val()){
		//alert('이미지에 보이는 숫자 또는 스피커를 통해 들리는 숫자를 입력해 주세요.');
		alert('자동입력 방지 데이타를 입력해 주세요.');
		$('#captChaValue').focus();
		captchaChk = false;
	}else{
		$.ajax({
			url: '/common/jspPage/captChaProc.do',
			type: 'POST',
			dataType: 'text',
			data: 'captChaValue=' + $('#captChaValue').val(),
			async: false,		
			success: function(resp) {

				if(resp.replace(/(^\s*)|(\s*$)/gi, "") == "N"){
					alert("자동입력 방지 데이타가 일치하지 않습니다.");
					$('#reLoad').click();
					$('#captChaValue').val('');
					$('#captChaValue').focus();
					captchaChk = false;
				}
			}
		});
	}

	if(!captchaChk){
		return false;
	}					
	*/

});