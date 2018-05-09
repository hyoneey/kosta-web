
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
	  			
	  			/* 잠시 추가 */
	  			
	  			$(function () {
	  				$("#m_submit").on("click" ,function(e) {
	  					$("#searchCondition2").val($("#m_search").val());
	  					$("#frmSearch").submit();
	  				});
	  			});
	  			
	  			function fn_search_form(){
	  				$("#searchCondition2").val($("#m_search").val());
	  			}
	  			
	  			function fnSearchAll() {

	  				var today= new Date();
	  				var selday = new Date($("#frmSearch input[name='searchCondition3To']").val());
	  				
	  				var frDate = $("#frmSearch input[name='searchCondition3Fr']").val().replace(/-/g,"");
	  				var toDate = $("#frmSearch input[name='searchCondition3To']").val().replace(/-/g,"");
	  				
	  				/*
	  				if(frDate == "" && toDate != ""){
	  					alert("시작일을 선택해주세요.");
	  					return false;
	  				} else if (frDate != "" && toDate == ""){
	  					alert("종료일을 선택해주세요.");
	  					return false;
	  				}
	  				*/
	  				
	  				if(toDate!=""){
	  					if(selday<today){
	  						alert("종료일은 현재날짜 이후만 검색할수 있습니다.");
	  						$("#frmSearch input[name='searchCondition3To']").focus();
	  						return;
	  					}
	  				}
	  				
	  				if(toDate != "" && frDate != ""){
	  					if(toDate < frDate){
	  						alert("종료일이 시작일보다 이전입니다.");
	  						$("#frmSearch input[name='searchCondition3Fr']").focus();
	  						return;
	  					}
	  				}
	  				
	  				if(selday)
	  				
	  				var siteMenuIdx  = "";
	  				var conditionVal = $("#searchCondition1").val();
	  				
	  				if(conditionVal === "") {					// 전체
	  					siteMenuIdx = "60";
	  				} else if(conditionVal === "0101") {		// 공산품
	  					siteMenuIdx = "621";
	  				} else if(conditionVal === "0201" || conditionVal === "0202") {		// 식품 및 건강기능식품
	  					siteMenuIdx = "622"; 
	  				} else if(conditionVal === "0203") {		// 축산물
	  					siteMenuIdx = "623";
	  				} else if(conditionVal === "0204") {		// 의약품
	  					siteMenuIdx = "624";
	  				} else if(conditionVal === "0205") {		// 의약외품
	  					siteMenuIdx = "625";
	  				} else if(conditionVal === "0207") {		// 의료기기
	  					siteMenuIdx = "626";
	  				} else if(conditionVal === "0206") {		// 화장품
	  					siteMenuIdx = "627";
	  				} else if(conditionVal === "0401") {		// 생활화학제품
	  					siteMenuIdx = "628";
	  				} else if(conditionVal === "0301") {		// 자동차
	  					siteMenuIdx = "629";
	  				} else if(conditionVal === "0403") {		// 먹는물
	  					siteMenuIdx = "630";
	  				}
	  					
	  				var url = "recall2" + siteMenuIdx + "selectRecallInfoInternalList.do";

	  				document.getElementById("frmSearch").action  = url;
	  				document.getElementById("frmSearch").submit();	
	  			}
	  			
	  			function fnDetail(recallSn) {
	  				$('#recallSn').val(recallSn);
	  				document.getElementById("frmSearch").action  = "/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalDetail.do";
	  				document.getElementById("frmSearch").submit();	
	  			}
	  			
	  			$(function () {
	  				
	  				if(location.href.indexOf("/recallInfo/60/") > -1) {
	  					$("#snb_area a[data-seed=consumer_02040000000000000000]").siblings("ul").show();
	  				}
	  			});
	  			
/*	  		//datapicker 날짜양식
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
	  			}*/
	  			
	  			

	  			
});

