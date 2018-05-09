
	  		$(document).ready(function(){
	  			$("div#faqBoard").hide();
	  			$("div#noticeBoard2").hide();
	  			$("#frmSearch2").hide();
	  			$(".subMDp-1-1").addClass("subMenuOn");
	  			$("#menuBar").children().click(function(){
	  				$("li").removeClass("subMenuOn");
	  				$(this).addClass("subMenuOn");
	  			});
	  			
	  			$("#recall_1").click(function(){
	  				$("#title_g").empty();
	  				$("#title_g").text("국내 리콜");
	  				$("div#noticeBoard2").hide();
	  				$("div#noticeBoard").show();
	  			})
	  			
	  			$("#recall_2").click(function(){
	  				$("#title_g").empty();
	  				$("#title_g").text("해외리콜");
	  				$("div#noticeBoard").hide();
	  				$("div#noticeBoard2").show();
	  				
	  			});
	  			//서브메뉴
	  			$("#recall_1-1").click(function(){
	  				$("#title_g").empty();
	  				$("#title_g").text("세제류");	  	
	  				$("div#noticeBoard").show();
	  			});
	  			
	  			$("#recall_1-2").click(function(){
	  				$("#title_g").empty();
	  				$("#title_g").text("코팅·접착제류");	  	
	  				$("div#noticeBoard").show();
	  			});
	  			
	  			$("#recall_1-3").click(function(){
	  				$("#title_g").empty();
	  				$("#title_g").text("방향제류");	  	
	  				$("div#noticeBoard").show();
	  			});
	  			$("#recall_1-4").click(function(){
	  				$("#title_g").empty();
	  				$("#title_g").text("염료,염색류");	  	
	  				$("div#noticeBoard").show();
	  			});
	  			$("#recall_1-5").click(function(){
	  				$("#title_g").empty();
	  				$("#title_g").text("살생물제류");	  	
	  				$("div#noticeBoard").show();
	  			});
	  			$("#recall_1-6").click(function(){
	  				$("#title_g").empty();
	  				$("#title_g").text("기타류");	  	
	  				$("div#noticeBoard").show();
	  			});
	  			$("#recall_1-7").click(function(){
	  				$("#title_g").empty();
	  				$("#title_g").text("농약류");	  	
	  				$("div#noticeBoard").show();
	  			});
	  			
	  			$(".fileajax").click(function(){
	  				$(this).children("div").toggle();
	  			});
	  			
	  			
	  			$('.subMDp-1-1>a').click(function(){
	  		    		var submenu = $('.subMDp-2');
	  		 	         
	  		            if( submenu.is(":visible") ){
	  		                submenu.slideUp();
	  		            }else{
	  		                submenu.slideDown();
	  		            }
	  		        }).mouseover(function(){
	  		        	$('.subMDp-2').slideDown();
	  		        });
	  			
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
	  			
});
	  		
	  		
	  		

