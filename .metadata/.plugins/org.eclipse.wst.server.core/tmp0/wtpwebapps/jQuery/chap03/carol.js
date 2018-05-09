//step1
/*$(function(){
	$('#switcher-large').on('click', function(){
		$('body').addClass('large');
	});
});*/


//step2
//removeClass('클래스명')
/*$(function(){
	$('#switcher-large').on('click', function(){
		$('body').removeClass('narrow').addClass('large');
	});
	$('#switcher-narrow').on('click', function(){
		$('body').removeClass('large').addClass('narrow');
	});
	$('#switcher-default').on('click', function(){
		$('body').removeClass('large').addClass('narrow');
	});
});*/

//step3
//선택된 버튼만 굵어지게 하기.
/*$(function(){
	$('#switcher-large').on('click', function(){
		$('body').removeClass('narrow').addClass('large');
		$('.button').removeClass('selected');
		$(this).addClass('selected');
	});
	$('#switcher-narrow').on('click', function(){
		$('body').removeClass('large').addClass('narrow');
		$('.button').removeClass('selected');
		$(this).addClass('selected');
	});
	$('#switcher-default').on('click', function(){
		$('body').removeClass('large').addClass('narrow');
		$('.button').removeClass('selected');
		$(this).addClass('selected');
	});
});*/


//step4
//중복된 코드를 최소화
/*$(function(){
	$('#switcher-large').on('click', function(){
		$('body').removeClass('narrow').addClass('large');
	});
	$('#switcher-narrow').on('click', function(){
		$('body').removeClass('large').addClass('narrow');
	});
	$('#switcher-default').on('click', function(){
		$('body').removeClass('large').addClass('narrow');
	});
	
	$('#switcher .button').on('click', function(){
		$('#switcher .button').removeClass('selected');
		$(this).addClass('selected');
	});
});*/

//step5
//중복된 코드를 더 최소화
/*$(function(){
	$('#switcher .button').on('click', function(){
		$('#switcher .button').removeClass('selected');
		$(this).addClass('selected');
		$('body').removeClass();
	});
	
	$('#switcher-large').on('click', function(){
		$('body').addClass('large');
	});
	$('#switcher-narrow').on('click', function(){
		$('body').addClass('narrow');
	});
});
*/

//step6
//	$('#switcher .button') => 모두 포함 =>id 구별 실행
$(function(){
	$('#switcher .button').on('click', function(){
		$('#switcher .button').removeClass('selected');
		$(this).addClass('selected');
		$('body').removeClass();
		
		if(this.id == 'switcher-large' ){
			$('body').addClass('large');
		}else if(this.id == 'switcher-narrow'){
			$('body').addClass('narrow');
		}	
	});
});

//step7
// on() => click()
/*$(function(){
	$('#switcher .button').click( function(){
		$('#switcher .button').removeClass('selected');
		$(this).addClass('selected');
		$('body').removeClass();
		
		if(this.id == 'switcher-large' ){
			$('body').addClass('large');
		}else if(this.id == 'switcher-narrow'){
			$('body').addClass('narrow');
		}	
	});
});*/

//step8
$(function(){
	//hover()는 function 2개 (오버 되었을때, 오버안되었을때) this는 자기자신
	$('#switcher .button').hover(function(){
		$(this).addClass('hover');
	},
	function(){
		$(this).removeClass('hover');
	});
})

//step9
//switcher => h3클릭 => 버튼 3개 화면에서 사라지게 => hidden
/*$(function(){
	$('#switcher h3').click(function(){
		$('#switcher .button').addClass('hidden');
	});
	
	
	$('#switcher .button').click( function(){
		$('#switcher .button').removeClass('selected');
		$(this).addClass('selected');
		$('body').removeClass();
		
		if(this.id == 'switcher-large' ){
			$('body').addClass('large');
		}else if(this.id == 'switcher-narrow'){
			$('body').addClass('narrow');
		}	
	});
});*/


//step10
//버블링처리
/*	$(function(){
		$('#switcher').click(function(){
			$('#switcher .button').toggleClass('hidden');
		});
		
		
		$('#switcher .button').click( function(event){
			$('#switcher .button').removeClass('selected');
			$(this).addClass('selected');
			$('body').removeClass();
			
			if(this.id == 'switcher-large' ){
				$('body').addClass('large');
			}else if(this.id == 'switcher-narrow'){
				$('body').addClass('narrow');
			}	
			
			event.stopPropagation();
		});
			
});*/

//step11
//on() :통합 이벤터 발생 , off(): 이벤트해제
//narrow, large버튼을 클릭 후 버튼이 사라지는 이벤트 해제
	$(function(){
		//namespace 은 이벤트.이름
		$('#switcher').on('click.kosta',function(){
			$('#switcher .button').toggleClass('hidden');
		});
		
/*		$('#switcher').on('click.seo',function(){
			alert('다른 이벤트');
		});*/
	
	
	$('#switcher .button').click( function(event){
		$('#switcher .button').removeClass('selected');
		$(this).addClass('selected');
		$('body').removeClass();
		
		if(this.id == 'switcher-large' ){
			$('body').addClass('large');
	//		$('body').off();
		}else if(this.id == 'switcher-narrow'){
			$('body').addClass('narrow');
	//		$('body').off();
		}	
		
		event.stopPropagation();
	});
	
	$('#switcher-large, #switcher-narrow').click(function(){
		$('#switcher').off('click.kosta');
	});
	
	//페이지를 켰을 때 접어두기
	$('#switcher').trigger('click.kosta');
		
});
	
	