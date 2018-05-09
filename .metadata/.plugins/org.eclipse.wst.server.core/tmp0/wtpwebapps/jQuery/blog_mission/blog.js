$(function(){
	$.getJSON('blog.js', function(data){
		//테이블 생성
		$('#comment').append('<tr><td>제목</td><td>작성자</td>td>내용</td></tr>');
		
		//ajax로 가져와서 넣기 -> ajax는 항상 each로 온다고 생각 (각각가져옴)
		//json은 키만 가지고 할 수 있따.
		$.each(data, function(index, Blog){
			$('#comment').append('<tr><td>'+ Blog.title +
					'</td><td>' + Blog.writer +'</td><td>' +Blog.contents+ '</td></tr>');
			"<br>"
		});
	})
})

$(function(){
	$('form').submit(function(){
		$.ajax({
			url : 'server.jsp',
			type: 'post',
			dataType : 'text',
			data : $(this).serialize(),
			success : successHandler				
		});
	
		return false;
	});
	
	function successHandler(data){
		$('#comment').empty();
		$('#comment').html(data);
	}
})