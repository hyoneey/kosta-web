$(function(){
	$('<ol id="notes"></ol>').insertBefore('#footer');
	$('span.footnote').each(function(index){
		//this는 각각의 span을 의미
		$(this).before('<a href="#context-' + (index+1) + '">[' + (index+1) + ']</a>')
				 .appendTo('#notes')
				 .append('$nbsp; <a id="context-' + (index+1) + '">context' + (index+1) + '</a>') //$nbsp;는 한칸 띄우기
				 .wrap('<li></li>'); //li로 감싸는 함수 -> li안에 span이 들어가 있음
				 
		

		
		
				
	})
});