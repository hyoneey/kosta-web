$(function(){
	//var $변수명 : $는 jquery객체 표시
	var $speech = $('div.speech');
	var defaultSize = $speech.css('fontSize'); //12px
	
	//switcher 의 자손 button 집합 
	$('#switcher button').click(function(){
		var num = parseInt($speech.css('fontSize')); //12 : parseInt로 형변환
		
		
		switch (this.id) {
		case "switcher-large":
			num *= 1.2;
			break;
		
		case "switcher-small":
			num /= 1.2;
			break;
		
		default:
			num = parseInt(defaultSize);
			break;
		}
		
		//animation
		$speech.animate({fontSize :  num+'px'}, 'fast');	
	});
});

$(function(){
	$('div.label').click(function(){
		var pWidth = $('div.speech p').outerWidth(); //패딩포함, outerWidth(true) :마진까지 포함
		var divWidth = $('#switcher').outerWidth();
		var num = parseInt(pWidth) - parseInt(divWidth);
		
		$('#switcher')
			.fadeTo('fast',0.5)
			.animate({marginLeft: num}, 'slow')
			.fadeTo('fast',1.0)
			.slideUp('slow' , function(){
				$(this).css('background','red');
			})
			.slideDown('slow')
	});
});

$(function(){
	//2번재 p태그를 숨기세요.
	//slideToggle('slow')
	//read more <==> read less =>text()함수이용 인자를 넣으면 변경
	
	$('div .speech p').eq(1).hide('slow');
	
	$('a.more').click(function(){
		$('.speech p:nth-child(2)')
		.slideToggle('slow');
		
		var $link = $(this);
		if($link.text() == 'read more'){
			$link.text('read less');
		}else{
			$link.text('read more');
		}
	});
	
	

});





