$(function(){
	$('.quantity input').keypress(function(event){
		//event.which sms 각 키보드의 고유번호를 알수 있다.
		//아스키코드 입력값이 영어불가-> 숫자만 입력
		if(event.which && (event.which <48 || event.which > 57)){
			event.preventDefault();
		}
		
	}).change(function(){
		var totalCost = 0;
		var totalQuantity = 0;
		
		$('table tbody tr').each(function(){
			//price : $26.99
			//find함수는 자식을 찾을 때 씀
			//정규표현식을 이용해 '$'표시 제거 : replace -> 숫자나 '.'으로 시작하지 않는거 제거후 형변환 parseFloat
			//isNaN() 함수는 어떤 값이 예약값인지 여부를 나타내는 부울값 반환ㅡ 숫자인지아닌지?
			//보통 parseInt와 parseFloat 메서드의 반환 값 테스트에 사용합니다.
			var price = parseFloat($(this).find('.price').text().replace(/^[^\d.]/,''));
			price = isNaN(price) ? 0 : price;
			
			//form에 있는 input 함수의 값을 뽑아올 때 : val함수 / input값입력할때 val(데이터)
			var quantity = parseInt($(this).find('.quantity input').val());
			quantity = isNaN(quantity) ? 0: quantity;
			
			var cost = quantity * price;
			//toFixed는 소수점 2째 자리까지 해주고, 문자열로 '$'추가해줘서 표시
			$(this).find('.cost').text('$'+cost.toFixed(2));
			
			totalCost +=cost;
			totalQuantity += quantity;
				
		});
		
		$('.subtotal .cost').text('$'+totalCost.toFixed(2));
		$('.shipping .quantity').text(totalQuantity);
	})
});



