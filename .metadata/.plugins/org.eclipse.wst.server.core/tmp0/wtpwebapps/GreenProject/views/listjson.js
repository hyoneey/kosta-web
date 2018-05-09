$(function() {
	$('.subMDp-1').ready(function() {
		var param = [];
		param.search_text = '';

		listView(param);

		return false;
	})
});

function listView(param) {
	$.getJSON('b.json', function(data) {
		$('#good').empty();
		// 인덱스와 객체를 받을값('[]')
		$.each(data, function(index, entry) {
			if (param.search_text == ''
					|| entry.title.toLowerCase().indexOf(
							param.search_text.toLowerCase()) >= 0
					|| entry.code.toLowerCase().indexOf(
							param.search_text.toLowerCase()) >= 0) {
				var html = '<li>'
				html += '<a href="' + entry.image + '">';
				html += '<p class="img_wrap">';
				html += '<img src="' + entry.image + '"></p>';
				html += '<dl>';
				html += '<dt class="title">' + entry.title + '</dt>';
				html += '<dd class="cat">' + entry.cat + '</dd>';
				html += '<dd class="code">' + entry.code + '</dd>';
				html += '</dl></a></li>';

				$('#good').append(html);
			}
		});
	});
}