//step1
$(function(){
	$('#letter-a a').click(function(){
		$('#dictionary').hide().load('a.html',function(){
			$(this).fadeIn();
		});
		
		return false;
	})
});

//step2
/*$(function(){
	$('#letter-b a').click(function(){
		//전역함수 - 함수만 사용할때 '팩토리.'
		//datasms 서버에서 넘어온 값
		$.getJSON('b.json',function(data){
			//empty() 는 자손노드를 제거
			$('#dictionary').empty();
			//인덱스와 객체를 받을값('[]')
			$.each(data, function(index, entry){
				var html = '<div class="entry">';
				html += '<h3 class="term">' + entry.term + '</h3>';
				html += '<div class="part">' + entry.part + '</div>';
				html += '<div class="definition">' + entry.definition + '</div>';
				html += '</div>';
				
				$('#dictionary').append(html);
			});
		});
		
		return false;
	})
});*/

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

//step2-1
/*$(function() {
	$('#letter-b a').submit(function() {
		$.ajax({
			url : 'b.json',
			type : 'post',
			dataType : 'text',
			data : $(this).serialize(),
			success : successHandler
		});

		return false;

		function successHandler() {
			$('#dictionary').empty();
			$('#dictionary').html(entry);
			$('#dictionary').append(html);

		}

	})
});*/

//step3
$(function(){
	$('#letter-c a').click(function(){
		//자바스크립트 코드 이용
		$.getScript('c.js');	
		return false;
	})
});

//step4
$(function(){
	$('#letter-d a').click(function(){
		$.get('d.xml', function(data){
			$('#dictionary').empty();
			
			//data는 자바스크립트 객체이므로 jQuery 객체로 변환 -> data는 entries
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


//step5
$(function(){
	$('#letter-e a').click(function(){
		$.get('server3.jsp', {'term': $(this).text()}, function(data){
			$('#dictionary').html(data);
		});		
		
		return false;
	})
});


//step6
$(function(){
	$('#letter-f form').submit(function(){
		$.ajax({
			url : 'server3.jsp',
			type: 'post',
			dataType : 'text',
			data : $(this).serialize(),
			success : successHandler				
		});
	
		return false;
	});
	
	function successHandler(data){
		$('#dictionary').empty();
		$('#dictionary').html(data);
	}
})
