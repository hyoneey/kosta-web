$(function(){
	var $container = $('.slideshow');//슬라이더쇼 전체컨테이너
	var $slideGroup = $('.slideshow-slides')//슬라이더 그룹
	var $slides = $slideGroup.find('.slide');//각각의 슬라이더 4개
	var $nav = $container.find('.slideshow-nav');//네비게이션(prev,next)
	var $indicator = $container.find('.slideshow-indicator');//인디게이터
	
	var currentIndex = 0;
	var slideCount = $slides.length;
	var indicatorHTML = '';
	var timer;
	
	$slides.each(function(i){
		$(this).css({
			left : 100 * i + '%'
		});
		
		indicatorHTML += '<a href="#">' + (i+1) + '</a>';
	});
	
	$indicator.html(indicatorHTML);
	
	//슬라이더 이동함수
	function goToSlide(index){
		$slideGroup.animate({
			left : -100 * index + '%'
		}, 500);
		currentIndex = index;
		updateNav();
	}	
	
	//인디게이터 이벤트
	$indicator.on('click', 'a', function(event){
		event.preventDefault();
		
		goToSlide($(this).index());
		
	});
		
	
	//네비게이션 이벤트
	$nav.find('a').click(function(event){
		event.preventDefault();
		if($(this).hasClass('prev')){
			goToSlide(currentIndex - 1);
		}else{
			goToSlide(currentIndex + 1);
		}
		
		updateNav();
	});
	
	//네비게이션 업데이트 함수
	function updateNav(){
		var $navPrev = $nav.find('.prev');
		var $navNext = $nav.find('.next');
		
		if(currentIndex == 0){
			$navPrev.addClass('disabled');
		}else{
			$navPrev.removeClass('disabled');
		}
		
		if(currentIndex == slideCount - 1){
			$navNext.addClass('disabled');
		}else{
			$navNext.removeClass('disabled');
		}
		
		//해당인디게이터에게 'active' 클래스 주입
		$indicator.find('a').removeClass('active')
						.eq(currentIndex).addClass('active');
		
	}
	
	//마우스 관련 이벤트
	$container.on({
		mouseenter : stopTimer,
		mouseleave : startTimer
	})
	
	//타이머 시작 함수
	function startTimer(){
		timer = setInterval(function() {
			var nextIndex = (currentIndex +1) % slideCount;
			goToSlide(nextIndex)
		}, 2000);
	}
	
	//타이머 정지 함수
	function stopTimer(){
		clearInterval(timer);
	}
	
	
	goToSlide(currentIndex);
	startTimer()
	
});











