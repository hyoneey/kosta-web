$(function(){
	$('.sub_visual sub_visual_05').ready(function(){
		$.getJSON('inslide.json',function(data){
			$('.card_slider').empty();
			//인덱스와 객체를 받을값('[]')
			$.each(data, function(index, entry){
			var html = '<li style="float: left; list-style: none; position: relative; width: 231.5px; margin-right: 58px;">'
				html += '<a href="'+entry.image +'">';
				html += '<dl><dt>';
				html += ' <span class="card_news_bg" style="background-image:url('+entry.image +');"></span>';
				html += '<dd>'+'</dd>';
				html += '</dt><strong>'+ entry.title+'<br>'+entry.code +'</strong></dl>';
				html +='</a></li>'		


				$('.card_slider').append(html);
			});
		});
		
		return false;
	})
});