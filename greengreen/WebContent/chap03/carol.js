//1
//$(function() {
//	$('#switcher-large').on('click', function() {
//		$('body').addClass('large');
//	});
//})

//2. removeClass('클래스명')
//$(function() {
//	$('#switcher-large').on('click', function() {
//		$('body').removeClass('narrow').addClass('large');
//	});
//	$('#switcher-narrow').on('click', function() {
//		$('body').removeClass('large').addClass('narrow');
//	});
//	$('#switcher-default').on('click', function() {
//		$('body').removeClass('large').removeClass('narrow');
//	});
//})

//3. 클릭한 버튼 만 selected 스타일 적용
//$(function() {
//	$('#switcher-large').on('click', function() {
//		$('body').removeClass('narrow').addClass('large');
//		$('.button').removeClass('selected');
//		$(this).addClass('selected');
//	});
//	$('#switcher-narrow').on('click', function() {
//		$('body').removeClass('large').addClass('narrow');
//		$('.button').removeClass('selected');
//		$(this).addClass('selected');
//	});
//	$('#switcher-default').on('click', function() {
//		$('body').removeClass('large').addClass('narrow');
//		$('.button').removeClass('selected');
//		$(this).addClass('selected');
//	});
//})

//4. 중복된 코드 최소화
//$(function() {
//	$('#switcher-large').on('click', function() {
//		$('body').removeClass('narrow').addClass('large');
//	});
//	$('#switcher-narrow').on('click', function() {
//		$('body').removeClass('large').addClass('narrow');
//	});
//	$('#switcher-default').on('click', function() {
//		$('body').removeClass('large').removeClass('narrow');
//	});	
//	$('#switcher .button').on('click', function() {
//		$('#switcher .button').removeClass('selected');
//		$(this).addClass('selected');
//	});
//})

//5. 코드 최소화 심화
//$(function() {
//	$('#switcher .button').on('click', function() {
//		$('#switcher .button').removeClass('selected');
//		$(this).addClass('selected');
//		$('body').removeClass();
//	});
//	
//	$('#switcher-large').on('click', function() {
//		$('body').addClass('large');
//	});
//	$('#switcher-narrow').on('click', function() {
//		$('body').addClass('narrow');
//	});
//})

//6. $('#switcher .button')안에 모두 포함=>id구분
//$(function() {
//	$('#switcher .button').on('click', function() {
//		$('#switcher .button').removeClass('selected');
//		$(this).addClass('selected');
//		$('body').removeClass();
//		if(this.id=='switcher-large') {
//			$('body').addClass('large');
//		} else if(this.id=='switcher-narrow') {
//			$('body').addClass('narrow');
//		}
//	});
//});

//7. on()=>click()
//$(function() {
//	$('#switcher .button').click(function() {
//		$('#switcher .button').removeClass('selected');
//		$(this).addClass('selected');
//		$('body').removeClass();
//		if(this.id=='switcher-large') {
//			$('body').addClass('large');
//		} else if(this.id=='switcher-narrow') {
//			$('body').addClass('narrow');
//		}
//	});
//});


//8
$(function() {
	$('#switcher .button').hover(function() {
		$(this).addClass('hover');
	}, function() {
		$(this).removeClass('hover');
	})
});

//9. 스위치 안 h3(스타일변환기) 클릭하면 버튼 3개 화면에서 사라짐(hidden)
//$(function() {
//	$('#switcher h3').click(function() {
//		$('#switcher .button').toggleClass('hidden');
//	});
//	$('#switcher .button').click(function() {
//		$('#switcher .button').removeClass('selected');
//		$(this).addClass('selected');
//		$('body').removeClass();
//		if(this.id=='switcher-large') {
//			$('body').addClass('large');
//		} else if(this.id=='switcher-narrow') {
//			$('body').addClass('narrow');
//		}
//	});
//});

//10. 버블링 처리
//$(function() {
//	$('#switcher').click(function(event) {
//		$('#switcher .button').toggleClass('hidden');
//	});
//	$('#switcher .button').click(function() {
//		$('#switcher .button').removeClass('selected');
//		$(this).addClass('selected');
//		$('body').removeClass();
//		
//		if(this.id=='switcher-large') {
//			$('body').addClass('large');
//		} else if(this.id=='switcher-narrow') {
//			$('body').addClass('narrow');
//		}
//		event.stopPropagation();
//	})
//});

//11. on(): 통합 이벤트 발생, off(): 이벤트 해제
//narrow, large버튼 클릭 후 버튼이 사라지는 이벤트 해제
$(function() {
	$('#switcher').on('click.kosta', function(event) {
		$('#switcher .button').toggleClass('hidden');
	});
	
//	$('#switcher').on('click.yoo', function(event) {
//		alert("다른 이벤트");
//	});
	$('#switcher .button').click(function() {
		$('#switcher .button').removeClass('selected');
		$(this).addClass('selected');
		$('body').removeClass();
		
		if(this.id=='switcher-large') {
			$('body').addClass('large');
		} else if(this.id=='switcher-narrow') {
			$('body').addClass('narrow');
		}
		event.stopPropagation();
	});
	$('#switcher-large, #switcher-narrow').click(function() {
		$('#switcher').off('click.kosta');
	})
	$('#switcher').trigger('click.kosta');
});










