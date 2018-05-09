/**
 * 
 */
$(function(){
	$(window).on('load', function(){
		$.ajax({
			url : 'server.jsp',
			type : 'post',
			dataType : 'json',
			data : $(this).serialize(),
			success : successHandler
		});
	});
	
	function successHandler(data){
		$('div').empty();
		$.each(data, function(index, opinion){
			//entry에 배열의 첫번째.. 두번쨰..쭉  데이터가 들어온다
			var html = '<div class="opinion">';
			html += '<p class="title">title:' + opinion.title + '</h3>';
			html += '<p class = "writer">wirter:' + opinion.writer + '</p>';
			html += 'content<br><p class = "contents">' + opinion.contents + '</p>';
			html += '</div>';
			 
		$('#list').append(html);
		});
	}
});


$(function(){
		$('form').submit(function() {
			$.ajax({
				url : 'server.jsp',
				type : 'post',
				dataType : 'json',
				data : $(this).serialize(),
				success : successHandler
			});
			return false;
		});
		
		function successHandler(data){
			$('div').empty();
			$.each(data, function(index, opinion){
				//entry에 배열의 첫번째.. 두번쨰..쭉  데이터가 들어온다
				var html = '<div class="opinion">';
				html += '<p class="title">title:' + opinion.title + '</h3>';
				html += '<p class = "writer">wirter:' + opinion.writer + '</p>';
				html += 'content<br><p class = "contents">' + opinion.contents + '</p>';
				html += '</div>';
				
			$('#list').append(html);
			});
		}
});