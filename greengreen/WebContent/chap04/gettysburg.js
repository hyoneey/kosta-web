$(function() {
	var $speech=$('div.speech'); //$변수이름 -> jQuery 객체임을 표현
	var defaultSize=$speech.css('fontSize');
	
	$('#switcher button').click(function() {
		var num=parseInt($speech.css('fontSize')); //12px->12
		
		switch (this.id) {
		case "switcher-large":
			num*=1.2;
			break;
		case "switcher-small":
			num/=1.2;
			break;
		default:
			num=parseInt(defaultSize);
			break;
		}
		$speech.animate({fontSize: num+'px'}, 'fast'); //animation
	}); 
});

$(function() {
	$('div.label').click(function(){
		var pWidth=$('div.speech p').outerWidth(); //여백(padding)까지 포함, outerWidth(true): 마진까지 포함
		var divWidth=$('#switcher').outerWidth();
		var num=parseInt(pWidth)-parseInt(divWidth);
		
		$('#switcher')
		.fadeTo('fast', 0.5)
		.animate({marginLeft: num}, 'slow')
		.fadeTo('fast', 1.0)
		.slideUp('slow', function() {
			$(this).css('background', 'red')
		})
		.slideDown('slow');
	});
});

$(function() {
	$('.speech p:nth-child(2)')
	.slideToggle('slow');
	
	var cnt=0;
	$('a.more').click(function() {
		cnt++;
		$('.speech p:nth-child(2)').slideToggle('slow'); //p:eq(1)
		
		var $link=$(this);
		if($link.text()=='read more') {
			$link.text('read less');
		} else {
			$link.text('read more');
		}
/*-------------------------------------------		
		if(cnt%2==0) {
			$('.more').text("read more")
		}else 
			$('.more').text("read less")
			--------------------------------*/
	})
});




















