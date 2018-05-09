$(document).ready(function(){

	$.ajax({
		
		type : "POST" , 
		async : true , 
		url:"/common/proc/statisticsProc.do" , 
		timeout : 30000 , 
		cache : false , 
		data:{
			"pageUrl" : $(location).attr('href')
		}
	});
	
});