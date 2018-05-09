$(function() { 
	$('.clear-after>li').addClass('horizontal');
	$('#selected-plays>li li').addClass('sub-level'); //=='li:not(.horizontal)'
	
	$('a[href$=pdf]').addClass('pdflink');
	$('a[href^=mailto]').addClass('mailto');
	
	$('a[href*=henry]:not(.mailto)').addClass('henrylink');
	
	//$('tr:odd').addClass('alt'); //짝수: 0부터 시작해서
	//$('tr:nth-child(odd)').addClass('alt'); //홀수
	$('tr').filter(':odd').addClass('alt'); //짝수
//	$('td:contains(Henry)').nextAll().andSelf().addClass('highlight'); //.andSelf()
//	$('td:contains(Henry)').parent().find('td').addClass('highlight');
	$('td:contains(Henry)').parent().find('td:eq(0)').addClass('highlight') //td:first
					.end().find('td:eq(1)').addClass('highlight'); //end(): tr로 감
	$('td:contains(희극)').each(function() {td.html();})
});