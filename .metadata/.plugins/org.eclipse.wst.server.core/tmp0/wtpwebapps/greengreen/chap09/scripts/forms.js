$(function() {
	$('.quantity input').keypress(function(event) {
		if(event.which && (event.which<48 || event.which>57)) { //event.which 숫자값
			event.preventDefault(); //이벤트 취소
		}
		
	}).change(function() {
		var totalCost=0;
		var totalQuantity=0;
		
		$('table tbody tr').each(function() {
			var price=parseFloat($(this).find('.price').text().replace(/[^\d.]/, ''));
			price=isNaN(price)?0:price;
			
			var quantity=parseInt($(this).find('.quantity input').val()); //val(): input값 받아오는 함수
			quantity=isNaN(quantity)?0:quantity;
			
			var cost=quantity*price;
			$(this).find('.cost').text('$'+cost.toFixed(2));
			
			totalCost+=cost;
			totalQuantity+=quantity;
		});
		$('.subtotal .cost').text('$'+totalCost.toFixed(2));
		$('.shipping .quantity').text(totalQuantity);
	})
});