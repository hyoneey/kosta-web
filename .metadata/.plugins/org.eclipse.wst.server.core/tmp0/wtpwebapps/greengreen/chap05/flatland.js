$(function(){
	$('<ol id="notes"></ol>').insertBefore('#footer');
	$('span.footnote').each(function(index) {
		$(this).before('<a href="#context-'+(index+1)+'">['+(index+1)+']</a>')
			.appendTo('#notes')
			.append('&nbsp; <a id="context-'+(index+1)+'">context'+(index+1)+'</a>')
			.wrap('<li></li>');
	})
});