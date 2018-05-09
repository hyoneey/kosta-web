//1
$(function() {
	$('#letter-a a').click(function() {
		$('#dictionary').hide().load('a.html', function() {
			$(this).fadeIn();
		});
		return false;
	})
});

//2
/*$(function() {
	$('#letter-b a').click(function() {
		$.getJSON('b.json', function(data){ //$.getJSON: 전역함수
			$('#dictionary').empty();
			$.each(data, function(index, entry){ //객체의 숫자만큼 entry에 생김
				var html='<div class="entry">';
				html+='<h3 class="term">'+ entry.term +'</h3>';
				html+='<div class="part">'+ entry.part +'</div>';
				html+='<div class="definition">'+ entry.definition +'</div>';
				html+='</div>';
				
				$('#dictionary').append(html);
			});
		}) 
		return false;
	})
});*/

//3
$(function() {
	$('#letter-c a').click(function() {
		$.getScript('c.js');
		return false;
	})
});

//4
$(function() {
	$('#letter-d a').click(function() {
		$.get('d.xml', function(data) { //data는 자바스크립트 객체
			$('dictionary').empty();
			$(data).find('entry').each(function() { //$(data)는 문서전체(entries)
				var $entry=$(this); //this는 entry태그 한개
				
				var html='<div class="entry">';
				html+='<h3 class="term">'+ $entry.attr('term') +'</h3>';
				html+='<div class="part">'+ $entry.attr('part') +'</div>';
				html+='<div class="definition">'+ $entry.find('definition').text() +'</div>';
				html+='</div>';
				
				$('#dictionary').append(html);
			});
		});
		return false;
	})
});

//5
$(function() {
	$('#letter-e a').click(function() {
		$.get('server3.jsp', {'term': $(this).text()}, function(data) {
			$('#dictionary').html(data);
		});
		return false;
	})
});

//6
$(function() {
	$('#letter-f form').submit(function() {
		$.ajax({ //ajax는 중괄호로
			url:'server3.jsp',
			type: 'post',
			dataType: 'text',
			data: $(this).serialize(),
			success: successHandler
		}); 
		return false;
	});
	function successHandler(data) {
		$('dictionary').empty();
		$('#dictionary').html(data);
	}
});

$(function() {
	$('#letter-b a').click(function() {
		$.ajax({
			url: 'b.json',
			type: 'get',
			dataType: 'JSON',
			success: jsonHand
		});
		return false;
	});
	function jsonHand(data) {
		$('#dictionary').empty();
		$.each(data, function(index, entry){ //객체의 숫자만큼 entry에 생김
			var html='<div class="entry">';
			html+='<h3 class="term">'+ entry.term +'</h3>';
			html+='<div class="part">'+ entry.part +'</div>';
			html+='<div class="definition">'+ entry.definition +'</div>';
			html+='</div>';
			
			$('#dictionary').append(html);
		});
	}
});












