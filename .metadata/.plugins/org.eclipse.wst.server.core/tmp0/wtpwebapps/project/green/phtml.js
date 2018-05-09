	//datapicker 날짜양식
	function fn_dateChk(obj,event){
		
		event = event || window.event;
		
		if((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode >= 96 && event.keyCode <= 105) || event.keyCode == 8 || event.keyCode == 46 || event.keyCode == 9){
				
		}else{
			return false;
		}
		
		var datePattern = /[1-9][0-9]{3}\-(0[1-9]|1[0-2])\-(0[1-9]|1[0-9]|2[0-9]|3[0-1])$/;
		
		var str = $(obj).val();
		if(str.length == 4 && !(event.keyCode==8 || event.keyCode==46)){
			$(obj).val(str+"-");
		}
		if(str.length == 7 && !(event.keyCode==8 || event.keyCode==46)){
			$(obj).val(str+"-");
		}
		
		if($(obj).val().length > 10){
			if(!datePattern.test($(obj).val())){
				return false;
			}
		}
	}
	
	//datapicker 날짜양식
	function fn_dateChkFormat(obj,event){
		
		event = event || window.event;
		
		var datePattern = /[1-9][0-9]{3}\-(0[1-9]|1[0-2])\-(0[1-9]|1[0-9]|2[0-9]|3[0-1])$/;
		
		if($(obj).val().length > 9 && event.keyCode != 8){
			if(!datePattern.test($(obj).val())){
				alert("날짜 형식이 잘못되었습니다. \r\n예) 2000-01-01");
				$(obj).focus();
				return false;
			}
		}
	}