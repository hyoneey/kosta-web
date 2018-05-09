







<!doctype html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="ko"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="ko"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="ko"><![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="ko"><![endif]-->
<!--[if (gte IE 10)|!(IE)]><!--><html lang="ko"><!--<![endif]--> 
	<head>
		<meta charset="utf-8">
		<meta name="robots" content="noindex">
		
		<meta id="viewport" name="viewport" content="initial-scale=1.0, width=device-width, minimum-scale=1.0">
		
	    <!--[if IE]>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<![endif]-->
		<title> 행복드림 | 상품안전정보 | 국내리콜 | 의약품</title>

		<!-- css -->
		<link href="/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
		<link href="/css/catpcha.css" rel="stylesheet" type="text/css"/>
		<link href="/css/animate.css" rel="stylesheet" type="text/css"/>
		<link href="/css/picker.default.css" rel="stylesheet" type="text/css"/>
		<link href="/css/picker.default.date.css" rel="stylesheet" type="text/css"/>
		<link href="/css/user.smartPop.css" rel="stylesheet" type="text/css"/>
		<!-- css -->
		
		<!-- js -->
	    <!--[if lte IE 9]>
		<script src="/js/html5.js"></script>
		<![endif]-->
	    		
		<!-- js -->
		<script src="/js/lib/jquery-1.9.1.min.js"></script>
		<script src="/js/lib/jquery-migrate-1.2.1.min.js"></script>
		<script src="/js/lib/jquery-ui.min.js"></script>
		<script src="/js/lib/jquery.blockUI.js"></script>
		<script src="/js/lib/jquery.number.min.js"></script>
		<script src="/js/lib/jquery.bxslider.min.js"></script>
		<script src="/js/lib/picker.js"></script>
		<script src="/js/lib/picker.date.js"></script>
		<script src="/js/lib/legacy.js"></script>
		<script src="/js/lib/slick.min.js"></script>
		
		<script src="/js/jquery.slides.min.js"></script>
		<script src="/js/owl.carousel.min.js"></script>
		<script src="/js/jquery.mousewheel.min.js"></script>
		<script src="/js/statistics.js"></script>
		<script src="/js/captcha.js"></script>
		<script src="/js/canvas.js"></script>
		<script src="/js/jquery.PrintArea.js_4.js"></script>
		<script src="/js/jquery.printElement.js"></script>
		<script src="/js/date.format.js"></script>
		<script src="/js/seed.user.app.js"></script>
		<script src="/js/smartPop.js"></script>
		<!-- js -->
		
		
	
	<link href="/site/consumer/jsp/navigation/css/navigation.css" rel="stylesheet" type="text/css"/>
		
	

	
	<link href="/site/consumer/jsp/satisfaction/css/satisfaction.css" rel="stylesheet" type="text/css"/>
	
	
	


<script>
/* <![CDATA[ */
$(document).ready(function(){

	
	jf_menuOn('T', 'consumer', '02040400000000000000', '3');
	
	
	jf_menuAuth('N,N,N,N,Y', 'sub');
	
});

$(window).on('resize load', function(){
	jf_activeMenu('sub', '', '1290');
});
/* ]]> */
</script>
	
	<script>
	
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
			
		var url = "/user/ftc/consumer/recallInfo/" + siteMenuIdx + "/selectRecallInfoInternalList.do";

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
	
	</script>

	
    <link rel="shortcut icon" href="/site/consumer/images/common/bul/logo.ico" type="image/x-icon">
    <link rel="icon" href="/site/consumer/images/common/bul/logo.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/site/consumer/css/datepicker.min.css">
    <link rel="stylesheet" type="text/css" href="/site/consumer/css/remodal.css">
    <link rel="stylesheet" type="text/css" href="/site/consumer/css/remodal-default-theme.css">
    <link rel="stylesheet" type="text/css" href="/site/consumer/css/common.css">
    <link rel="stylesheet" type="text/css" href="/site/consumer/css/layout.css">
    <link rel="stylesheet" type="text/css" href="/site/consumer/css/sub.css">
    <link rel="stylesheet" type="text/css" href="/site/consumer/css/content_01.css">
    <link rel="stylesheet" type="text/css" href="/site/consumer/css/content_02.css">
    <link rel="stylesheet" type="text/css" href="/site/consumer/css/select_map.css">
  	<link rel="stylesheet" type="text/css" href="/site/consumer/css/webAcc.css">
    <script src="/site/consumer/js/webfont.js"></script>
    <script src="/site/consumer/js/clamp.min.js"></script>
    <script src="/site/consumer/js/jquery.word-break-keep-all.min.js"></script>
    <script src="/site/consumer/js/datepicker.min.js"></script>
    <script src="/site/consumer/js/remodal.js"></script>
    <script src="/site/consumer/js/consumer_common.js"></script>
    <script src="/site/consumer/js/consumer_sub.js"></script>
    <script src="/site/consumer/js/content_01.js"></script>
    <script src="/site/consumer/js/content_02.js"></script>
    <!--[if lt ie 9]><script src="/site/consumer/js/respond.js"></script><![endif]-->

	<script>
	/* <![CDATA[ */
	$(document).ready(function(){
		
		$("#pageUrl").val($(location).attr('href'));

		$('#siteSatisfaction_624Frm').submit(function(){
	
			if($('input:radio[name="siteSatisfactionStatus"]:checked').length == 0){
				alert("만족도 평가 상태 필수 입력 사항입니다.");	
				return false;
			}
			
			if($("#siteSatisfactionContents").val().trim() == "" && "" == ""){
				alert("만족도 평가 내용 필수 입력 사항입니다.");	
				$("#satisfactionContents").focus();
				return false;
			}
			
			$.blockUI({ message : '<h1><img src="/img/common/_images/blockbusy.gif" />&nbsp;&nbsp;잠시만 기다려주세요.</h1>' });
		});		
	});
	</script>

	</head>
	
	<body onload=""  > 
	
    	
	
	




        <!--[if lt IE 8]><div class="browserupgrade"><p>현재 사용하시는 <strong>인터넷 브라우저</strong> 버전이 오래 되었습니다. <strong>인터넷 브라우저</strong>를 업그레이드를 하시면 저희 사이트 뿐만이 아니라 다른 사이트에서도 보다 좋은 환경을 제공받을 수 있습니다. 아래의 링크에서 원하시는 <strong>인터넷 브라우저</strong>의 최신 버전으로 업그레이드를 할 수 있습니다.</p><a href="http://campaign.naver.com/goodbye_ie10/" target="_blank" title="새창으로 네이버에서 안내하는 인터넷 브라우저 업그레이드 사이트 바로가기"><strong>인터넷 브라우저</strong> 업그레이드 바로가기 !</a><button type="button" class="btn_browserupgrade_close">닫기</button></div><![endif]-->
        <!-- S : #skip -->
        <div id="skip">
            <a href="#consumer_gnb"><span>주메뉴 바로가기</span></a>
            <a href="#now_position"><span>컨텐츠 바로가기</span></a>
        </div>
        <!-- E : #skip -->
        <!-- S : #wrap -->
        <div id="wrap">
            <header>
                <!-- S : .util_menu_area -->
                <div class="util_menu_area">
                    <div class="center_wrapper">
                        <p class="social_menu_list">
                            <a href="/user/ftc/consumer/rssInfoMainCntnts/631/selectCntntsForRSS.do">행복드림 RSS</a>
                            <a href="https://ko-kr.facebook.com/kftcnews/" target="_blank" title="새창으로 공정거래위원회 FACEBOOK 바로가기">공정거래위원회 FACEBOOK</a>
                        </p>
                        <p class="util_menu_list">
                          	
                            
                            
                            
                            <a href="/user/consumer/160/ftc/login.do">로그인</a>
                            <a href="/user/ftc/consumer/mber/163/regist.do">회원가입</a>
                            
                            
                          	<a href="#foreign" class="foreignPopup">FOREIGN</a>
                          	<a href="http://support.consumer.go.kr:9000" class="remote_ass" target="_blank" title="새창으로 원격지원 바로가기"><span>원격지원</span></a>
                        </p>
                    </div>
                </div>
                <!-- E : .util_menu_area -->
                <!-- S : .logo_search_allmenu_area -->
                <div class="logo_search_allmenu_area">
                    <div class="center_wrapper">
                        <h1 id="logo"><a href="/consumer/index.do">행복드림</a></h1>
                      	<a href="#totalSearch" class="btn_total_search"><span class="mag"></span>검색</a>
                        <a href="#sitemapModal"  class="btn_sitemap">전체메뉴</a>
                        <button type="button" class="btn_gnb_view">메뉴보기</button>
                    </div>
                </div>
                <!-- E : .logo_search_allmenu_area -->
                <!-- S : .nav_area -->
                <div class="nav_area">
                    <nav id="consumer_gnb">
                        




	<ul class='gnbDp-1'>
		<li class='gnbDp-1-1'><a href='/consumer/subIndex/46.do' title='서비스안내 ' data-url='/consumer/subIndex/46.do'  data-seed='consumer_01000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >서비스안내</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-1'><a href='/consumer/subIndex/46.do' title='열린소비자포털이란?' data-url='/consumer/subIndex/46.do'  data-seed='consumer_01010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >열린소비자포털이란?</a>
			</li>
			<li class='gnbDp-2-2'><a href='/consumer/subIndex/47.do' title='이용안내' data-url='/consumer/subIndex/47.do'  data-seed='consumer_01020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >이용안내</a>
			</li>
			<li class='gnbDp-2-3'><a href='/consumer/subIndex/51.do' title='상담피해구제 안내 ' data-url='/consumer/subIndex/51.do'  data-seed='consumer_01030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담피해구제 안내</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-1'><a href='/consumer/subIndex/51.do' title='소비자 상담 기관' data-url='/consumer/subIndex/51.do'  data-seed='consumer_01030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자 상담 기관</a>
				</li>
				<li class='gnbDp-3-2'><a href='/consumer/subIndex/52.do' title='피해구제절차' data-url='/consumer/subIndex/52.do'  data-seed='consumer_01030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해구제절차</a>
				</li>
				<li class='gnbDp-3-3'><a href='/consumer/subIndex/53.do' title='분쟁조정안내' data-url='/consumer/subIndex/53.do'  data-seed='consumer_01030300000000000000' data-auth='N,Y,Y,Y,Y,Y' >분쟁조정안내</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-4'><a href='/consumer/subIndex/54.do' title='제도안내 ' data-url='/consumer/subIndex/54.do'  data-seed='consumer_01040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >제도안내</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-4'><a href='/consumer/subIndex/54.do' title='상담 및 피해구제 신청' data-url='/consumer/subIndex/54.do'  data-seed='consumer_01040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담 및 피해구제 신청</a>
				</li>
				<li class='gnbDp-3-5'><a href='/consumer/subIndex/55.do' title='안전정보 제공' data-url='/consumer/subIndex/55.do'  data-seed='consumer_01040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보 제공</a>
				</li>
				<li class='gnbDp-3-6'><a href='/consumer/subIndex/733.do' title='소비자중심경영(CCM) 인증' data-url='/consumer/subIndex/733.do'  data-seed='consumer_01040400000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자중심경영(CCM) 인증</a>
				</li>
				<li class='gnbDp-3-7'><a href='/consumer/subIndex/56.do' title='행복드림표지제' data-url='/consumer/subIndex/56.do'  data-seed='consumer_01040300000000000000' data-auth='N,Y,Y,Y,Y,Y' >행복드림표지제</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-5'><a href='/user/ftc/consumer/insttguidance/50/selectInsttGuidanceList.do' title='참여기관안내 ' data-url='/user/ftc/consumer/insttguidance/50/selectInsttGuidanceList.do'  data-seed='consumer_01050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >참여기관안내</a>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-2'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='상품안전정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품안전정보</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-6'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='상품정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02080000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-8'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='물품정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02080500000000000000' data-auth='N,Y,Y,Y,Y,Y' >물품정보</a>
				</li>
				<li class='gnbDp-3-9'><a href='/user/ftc/consumer/goodsinfo/620/selectGoodsInfoList.do?tabType=02' title='금융상품정보 ' data-url='/user/ftc/consumer/goodsinfo/620/selectGoodsInfoList.do?tabType=02'  data-seed='consumer_02080600000000000000' data-auth='N,Y,Y,Y,Y,Y' >금융상품정보</a>
				</li>
				<li class='gnbDp-3-10'><a href='/user/ftc/consumer/goodsinfo/706/selectGoodsInfoList.do?tabType=03' title='의료기관정보 ' data-url='/user/ftc/consumer/goodsinfo/706/selectGoodsInfoList.do?tabType=03'  data-seed='consumer_02080300000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기관정보</a>
				</li>
				<li class='gnbDp-3-11'><a href='/user/ftc/consumer/goodsinfo/707/selectGoodsInfoList.do?tabType=04' title='여행사 보험가입정보 ' data-url='/user/ftc/consumer/goodsinfo/707/selectGoodsInfoList.do?tabType=04'  data-seed='consumer_02080400000000000000' data-auth='N,Y,Y,Y,Y,Y' >여행사 보험가입정보</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-7'><a href='/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do' title='상품이력제 조회 ' data-url='/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do'  data-seed='consumer_02020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품이력제 조회</a>
			</li>
			<li class='gnbDp-2-8'><a href='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do' title='안전정보 ' data-url='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do'  data-seed='consumer_02030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-12'><a href='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do' title='위해정보 처리 속보 ' data-url='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do'  data-seed='consumer_02030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >위해정보 처리 속보</a>
				</li>
				<li class='gnbDp-3-13'><a href='/user/bbs/consumer/261/731/bbsDataList.do' title='안전정보 ' data-url='/user/bbs/consumer/261/731/bbsDataList.do'  data-seed='consumer_02030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-9'><a href='/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do' title='국내리콜 ' data-url='/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do'  data-seed='consumer_02040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >국내리콜</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-14'><a href='/user/ftc/consumer/recallInfo/621/selectRecallInfoInternalList.do?searchCondition1=0101' title='공산품 ' data-url='/user/ftc/consumer/recallInfo/621/selectRecallInfoInternalList.do?searchCondition1=0101'  data-seed='consumer_02040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >공산품</a>
				</li>
				<li class='gnbDp-3-15'><a href='/user/ftc/consumer/recallInfo/622/selectRecallInfoInternalList.do?searchCondition1=0201' title='식품 ' data-url='/user/ftc/consumer/recallInfo/622/selectRecallInfoInternalList.do?searchCondition1=0201'  data-seed='consumer_02040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >식품</a>
				</li>
				<li class='gnbDp-3-16'><a href='/user/ftc/consumer/recallInfo/623/selectRecallInfoInternalList.do?searchCondition1=0203' title='축산물 ' data-url='/user/ftc/consumer/recallInfo/623/selectRecallInfoInternalList.do?searchCondition1=0203'  data-seed='consumer_02040300000000000000' data-auth='N,Y,Y,Y,Y,Y' >축산물</a>
				</li>
				<li class='gnbDp-3-17'><a href='/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?searchCondition1=0204' title='의약품 ' data-url='/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?searchCondition1=0204'  data-seed='consumer_02040400000000000000' data-auth='N,Y,Y,Y,Y,Y' >의약품</a>
				</li>
				<li class='gnbDp-3-18'><a href='/user/ftc/consumer/recallInfo/625/selectRecallInfoInternalList.do?searchCondition1=0205' title='의약외품 ' data-url='/user/ftc/consumer/recallInfo/625/selectRecallInfoInternalList.do?searchCondition1=0205'  data-seed='consumer_02040500000000000000' data-auth='N,Y,Y,Y,Y,Y' >의약외품</a>
				</li>
				<li class='gnbDp-3-19'><a href='/user/ftc/consumer/recallInfo/626/selectRecallInfoInternalList.do?searchCondition1=0207' title='의료기기 ' data-url='/user/ftc/consumer/recallInfo/626/selectRecallInfoInternalList.do?searchCondition1=0207'  data-seed='consumer_02040600000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기기</a>
				</li>
				<li class='gnbDp-3-20'><a href='/user/ftc/consumer/recallInfo/627/selectRecallInfoInternalList.do?searchCondition1=0206' title='화장품 ' data-url='/user/ftc/consumer/recallInfo/627/selectRecallInfoInternalList.do?searchCondition1=0206'  data-seed='consumer_02040700000000000000' data-auth='N,Y,Y,Y,Y,Y' >화장품</a>
				</li>
				<li class='gnbDp-3-21'><a href='/user/ftc/consumer/recallInfo/628/selectRecallInfoInternalList.do?searchCondition1=0401' title='생활화학제품 ' data-url='/user/ftc/consumer/recallInfo/628/selectRecallInfoInternalList.do?searchCondition1=0401'  data-seed='consumer_02040800000000000000' data-auth='N,Y,Y,Y,Y,Y' >생활화학제품</a>
				</li>
				<li class='gnbDp-3-22'><a href='/user/ftc/consumer/recallInfo/629/selectRecallInfoInternalList.do?searchCondition1=0301' title='자동차 ' data-url='/user/ftc/consumer/recallInfo/629/selectRecallInfoInternalList.do?searchCondition1=0301'  data-seed='consumer_02040900000000000000' data-auth='N,Y,Y,Y,Y,Y' >자동차</a>
				</li>
				<li class='gnbDp-3-23'><a href='/user/ftc/consumer/recallInfo/630/selectRecallInfoInternalList.do?searchCondition1=0403' title='먹는물 ' data-url='/user/ftc/consumer/recallInfo/630/selectRecallInfoInternalList.do?searchCondition1=0403'  data-seed='consumer_02041000000000000000' data-auth='N,Y,Y,Y,Y,Y' >먹는물</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-10'><a href='/user/ftc/consumer/recallInfo/69/selectRecallInfoForeignList.do' title='해외리콜 ' data-url='/user/ftc/consumer/recallInfo/69/selectRecallInfoForeignList.do'  data-seed='consumer_02050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >해외리콜</a>
			</li>
			<li class='gnbDp-2-11'><a href='/user/ftc/consumer/crtfc/70/selectCrtfcInfoList.do?crtfcCdS=' title='인증정보 ' data-url='/user/ftc/consumer/crtfc/70/selectCrtfcInfoList.do?crtfcCdS='  data-seed='consumer_02060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >인증정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-24'><a href='/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do?crtfcCdS=01' title='환경마크인증 ' data-url='/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do?crtfcCdS=01'  data-seed='consumer_02060100000000000000' data-auth='N,Y,Y,Y,Y,Y' >환경마크인증</a>
				</li>
				<li class='gnbDp-3-25'><a href='/user/ftc/consumer/crtfc/72/selectCrtfcInfoList.do?crtfcCdS=02' title='환경성적표지인증 ' data-url='/user/ftc/consumer/crtfc/72/selectCrtfcInfoList.do?crtfcCdS=02'  data-seed='consumer_02060200000000000000' data-auth='N,Y,Y,Y,Y,Y' >환경성적표지인증</a>
				</li>
				<li class='gnbDp-3-26'><a href='/user/ftc/consumer/crtfc/73/selectCrtfcInfoList.do?crtfcCdS=03' title='KC인증 ' data-url='/user/ftc/consumer/crtfc/73/selectCrtfcInfoList.do?crtfcCdS=03'  data-seed='consumer_02060300000000000000' data-auth='N,Y,Y,Y,Y,Y' >KC인증</a>
				</li>
				<li class='gnbDp-3-27'><a href='/user/ftc/consumer/crtfc/74/selectCrtfcInfoList.do?crtfcCdS=04' title='방송통신기자재 적합성평가 ' data-url='/user/ftc/consumer/crtfc/74/selectCrtfcInfoList.do?crtfcCdS=04'  data-seed='consumer_02060400000000000000' data-auth='N,Y,Y,Y,Y,Y' >방송통신기자재 적합성평가</a>
				</li>
				<li class='gnbDp-3-28'><a href='/user/ftc/consumer/crtfc/75/selectCrtfcInfoList.do?crtfcCdS=05' title='의료기관인증 ' data-url='/user/ftc/consumer/crtfc/75/selectCrtfcInfoList.do?crtfcCdS=05'  data-seed='consumer_02060500000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기관인증</a>
				</li>
				<li class='gnbDp-3-29'><a href='/user/ftc/consumer/hpsgnsyscrtfc/77/selectHpsgnsysCrtfcInfoList.do' title='CCM인증 ' data-url='/user/ftc/consumer/hpsgnsyscrtfc/77/selectHpsgnsysCrtfcInfoList.do'  data-seed='consumer_02060700000000000000' data-auth='N,Y,Y,Y,Y,Y' >CCM인증</a>
				</li>
				<li class='gnbDp-3-30'><a href='/user/ftc/consumer/hpsgnsys/720/selectHpsgnCrtfcList.do' title='행복드림표지제 ' data-url='/user/ftc/consumer/hpsgnsys/720/selectHpsgnCrtfcList.do'  data-seed='consumer_02060800000000000000' data-auth='N,Y,Y,Y,Y,Y' >행복드림표지제</a>
				</li>
			</ul>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-3'><a href='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do' title='소비자정보 ' data-url='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do'  data-seed='consumer_03000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자정보</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-12'><a href='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do' title='상품비교정보 ' data-url='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do'  data-seed='consumer_03010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품비교정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-31'><a href='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do' title='비교공감 ' data-url='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do'  data-seed='consumer_03010100000000000000' data-auth='N,Y,Y,Y,Y,Y' >비교공감</a>
				</li>
				<li class='gnbDp-3-32'><a href='/user/ftc/consumer/cnsmrBBS/80/selectInfoCmprList.do' title='일반비교정보 ' data-url='/user/ftc/consumer/cnsmrBBS/80/selectInfoCmprList.do'  data-seed='consumer_03010200000000000000' data-auth='N,Y,Y,Y,Y,Y' >일반비교정보</a>
				</li>
				<li class='gnbDp-3-33'><a href='/user/ftc/consumer/cnsmrTokBBS/81/selectCnsmrTokBBSList.do' title='소비자톡톡 ' data-url='/user/ftc/consumer/cnsmrTokBBS/81/selectCnsmrTokBBSList.do'  data-seed='consumer_03010300000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자톡톡</a>
				</li>
				<li class='gnbDp-3-34'><a href='/user/ftc/consumer/smsSubscription/82/smsSubscription.do' title='문자알림 서비스 ' data-url='/user/ftc/consumer/smsSubscription/82/smsSubscription.do'  data-seed='consumer_03010400000000000000' data-auth='N,Y,Y,Y,Y,Y' >문자알림 서비스</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-13'><a href='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do' title='소비자교육 ' data-url='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do'  data-seed='consumer_03020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자교육</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-35'><a href='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do' title='교육정보 ' data-url='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do'  data-seed='consumer_03020100000000000000' data-auth='N,Y,Y,Y,Y,Y' >교육정보</a>
				</li>
				<li class='gnbDp-3-36'><a href='/user/ftc/consumer/cnsmrEdc/85/selectCnsmrEdcList.do' title='교육일정 ' data-url='/user/ftc/consumer/cnsmrEdc/85/selectCnsmrEdcList.do'  data-seed='consumer_03020200000000000000' data-auth='Y,Y,Y,Y,Y,Y' >교육일정</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-14'><a href='/consumer/subIndex/327.do' title='가격정보 ' data-url='/consumer/subIndex/327.do'  data-seed='consumer_03030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >가격정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-37'><a href='/consumer/subIndex/327.do' title='참가격' data-url='/consumer/subIndex/327.do'  data-seed='consumer_03031100000000000000' data-auth='N,Y,Y,Y,Y,Y' >참가격</a>
				</li>
				<li class='gnbDp-3-38 mobileMenuHidden'><a href='/consumer/subIndex/328.do' title='주간가격정보' data-url='/consumer/subIndex/328.do'  data-seed='consumer_03031200000000000000' data-auth='N,Y,Y,Y,Y,Y' >주간가격정보</a>
				</li>
				<li class='gnbDp-3-39'><a href='/user/ftc/consumer/priceInfo/87/selectPublicChrgeInfoUserList.do' title='공공요금 ' data-url='/user/ftc/consumer/priceInfo/87/selectPublicChrgeInfoUserList.do'  data-seed='consumer_03030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >공공요금</a>
				</li>
				<li class='gnbDp-3-40'><a href='/user/ftc/consumer/priceInfo/88/selectIndvdlSvrPriceUserList.do' title='개인서비스요금 ' data-url='/user/ftc/consumer/priceInfo/88/selectIndvdlSvrPriceUserList.do'  data-seed='consumer_03030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >개인서비스요금</a>
				</li>
				<li class='gnbDp-3-41'><a href='/user/ftc/consumer/priceInfo/89/selectEatOutPriceUserList.do' title='외식비 ' data-url='/user/ftc/consumer/priceInfo/89/selectEatOutPriceUserList.do'  data-seed='consumer_03030300000000000000' data-auth='N,Y,Y,Y,Y,Y' >외식비</a>
				</li>
				<li class='gnbDp-3-42'><a href='/user/ftc/consumer/priceInfo/90/selectPriceInfoEdutInstList.do' title='학원교습소비 ' data-url='/user/ftc/consumer/priceInfo/90/selectPriceInfoEdutInstList.do'  data-seed='consumer_03030400000000000000' data-auth='N,Y,Y,Y,Y,Y' >학원교습소비</a>
				</li>
				<li class='gnbDp-3-43'><a href='/user/ftc/consumer/priceInfo/91/selectPriceInfoNpayDamtList.do' title='비급여진료비 ' data-url='/user/ftc/consumer/priceInfo/91/selectPriceInfoNpayDamtList.do'  data-seed='consumer_03030500000000000000' data-auth='N,Y,Y,Y,Y,Y' >비급여진료비</a>
				</li>
				<li class='gnbDp-3-44'><a href='/user/ftc/consumer/priceInfo/92/selectPriceInfoGnrlMdcinList.do' title='일반의약품비 ' data-url='/user/ftc/consumer/priceInfo/92/selectPriceInfoGnrlMdcinList.do'  data-seed='consumer_03030600000000000000' data-auth='N,Y,Y,Y,Y,Y' >일반의약품비</a>
				</li>
				<li class='gnbDp-3-45'><a href='/user/ftc/consumer/priceInfo/93/selectPriceInfoOilList.do' title='유가정보 ' data-url='/user/ftc/consumer/priceInfo/93/selectPriceInfoOilList.do'  data-seed='consumer_03030700000000000000' data-auth='N,Y,Y,Y,Y,Y' >유가정보</a>
				</li>
				<li class='gnbDp-3-46'><a href='/user/ftc/consumer/priceInfo/94/selectPriceInfoFoodList.do' title='농산물도소매가 ' data-url='/user/ftc/consumer/priceInfo/94/selectPriceInfoFoodList.do'  data-seed='consumer_03030800000000000000' data-auth='N,Y,Y,Y,Y,Y' >농산물도소매가</a>
				</li>
				<li class='gnbDp-3-47'><a href='/user/ftc/consumer/priceInfo/95/selectPriceInfoAptList.do' title='아파트실거래가 ' data-url='/user/ftc/consumer/priceInfo/95/selectPriceInfoAptList.do'  data-seed='consumer_03030900000000000000' data-auth='N,Y,Y,Y,Y,Y' >아파트실거래가</a>
				</li>
				<li class='gnbDp-3-48'><a href='/user/ftc/consumer/priceInfo/96/selectPriceInfoOthbcReviewList.do' title='착한가격업소 ' data-url='/user/ftc/consumer/priceInfo/96/selectPriceInfoOthbcReviewList.do'  data-seed='consumer_03031000000000000000' data-auth='N,Y,Y,Y,Y,Y' >착한가격업소</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-15'><a href='/consumer/subIndex/97.do' title='금융/보험정보' data-url='/consumer/subIndex/97.do'  data-seed='consumer_03040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >금융/보험정보</a>
			</li>
			<li class='gnbDp-2-16'><a href='/consumer/subIndex/98.do' title='의료정보' data-url='/consumer/subIndex/98.do'  data-seed='consumer_03050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료정보</a>
			</li>
			<li class='gnbDp-2-17'><a href='/consumer/subIndex/101.do' title='연계기관 정보 ' data-url='/consumer/subIndex/101.do'  data-seed='consumer_03070000000000000000' data-auth='N,Y,Y,Y,Y,Y' >연계기관 정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-49'><a href='/consumer/subIndex/101.do' title='소비자정보 연계기관' data-url='/consumer/subIndex/101.do'  data-seed='consumer_03070100000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자정보 연계기관</a>
				</li>
				<li class='gnbDp-3-50'><a href='/consumer/subIndex/102.do' title='교육 연계기관' data-url='/consumer/subIndex/102.do'  data-seed='consumer_03070200000000000000' data-auth='N,Y,Y,Y,Y,Y' >교육 연계기관</a>
				</li>
			</ul>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-4'><a href='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do' title='상담 및 피해/분쟁 ' data-url='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do'  data-seed='consumer_04000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담 및 피해/분쟁</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-18'><a href='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do' title='피해예방 ' data-url='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do'  data-seed='consumer_04010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해예방</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-51'><a href='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do' title='자가진단 ' data-url='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do'  data-seed='consumer_04010100000000000000' data-auth='N,Y,Y,Y,Y,Y' >자가진단</a>
				</li>
				<li class='gnbDp-3-52'><a href='/user/ftc/consumer/cnsmrBBS/110/selectInfoCDMGList.do' title='피해예방주의보 ' data-url='/user/ftc/consumer/cnsmrBBS/110/selectInfoCDMGList.do'  data-seed='consumer_04010200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해예방주의보</a>
				</li>
				<li class='gnbDp-3-53'><a href='/user/ftc/consumer/cnsmrBBS/111/selectInfoCSLCList.do' title='상담속보 ' data-url='/user/ftc/consumer/cnsmrBBS/111/selectInfoCSLCList.do'  data-seed='consumer_04010300000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담속보</a>
				</li>
				<li class='gnbDp-3-54'><a href='/user/ftc/consumer/cnsmrBBS/112/selectInfoCMTTList.do' title='민원다발쇼핑몰 ' data-url='/user/ftc/consumer/cnsmrBBS/112/selectInfoCMTTList.do'  data-seed='consumer_04010400000000000000' data-auth='N,Y,Y,Y,Y,Y' >민원다발쇼핑몰</a>
				</li>
				<li class='gnbDp-3-55'><a href='/user/ftc/consumer/cnsmrBBS/113/selectInfoTRUBLList.do' title='소비자분쟁해결기준 ' data-url='/user/ftc/consumer/cnsmrBBS/113/selectInfoTRUBLList.do'  data-seed='consumer_04010500000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자분쟁해결기준</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-19'><a href='/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do' title='상담/피해구제 신청 ' data-url='/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do'  data-seed='consumer_04070000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담/피해구제 신청</a>
			</li>
			<li class='gnbDp-2-20'><a href='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do' title='상담/피해구제 진행현황 ' data-url='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do'  data-seed='consumer_04040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담/피해구제 진행현황</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-56'><a href='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do' title='온라인상담 현황 ' data-url='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do'  data-seed='consumer_04040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >온라인상담 현황</a>
				</li>
				<li class='gnbDp-3-57'><a href='/user/ftc/consumer/dmgerlif/317/selectDmgeRlifList.do' title='피해구제/분쟁조정 현황 ' data-url='/user/ftc/consumer/dmgerlif/317/selectDmgeRlifList.do'  data-seed='consumer_04040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해구제/분쟁조정 현황</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-21'><a href='/user/ftc/consumer/dmgerlif/301/selectOnlineVisitResveForm.do' title='온라인 방문예약 ' data-url='/user/ftc/consumer/dmgerlif/301/selectOnlineVisitResveForm.do'  data-seed='consumer_04080000000000000000' data-auth='N,Y,Y,Y,Y,Y' >온라인 방문예약</a>
			</li>
			<li class='gnbDp-2-22'><a href='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do' title='피해/분쟁 관련사례 ' data-url='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do'  data-seed='consumer_04050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해/분쟁 관련사례</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-58'><a href='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do' title='상담사례 ' data-url='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do'  data-seed='consumer_04050100000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담사례</a>
				</li>
				<li class='gnbDp-3-59'><a href='/user/ftc/consumer/dmgerlifcase/115/selectDmgeRlifCaseList.do' title='피해구제 사례 ' data-url='/user/ftc/consumer/dmgerlifcase/115/selectDmgeRlifCaseList.do'  data-seed='consumer_04050200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해구제 사례</a>
				</li>
				<li class='gnbDp-3-60'><a href='/user/ftc/consumer/trublmdatcase/116/selectTrublMdatCaseList.do' title='분쟁조정 사례 ' data-url='/user/ftc/consumer/trublmdatcase/116/selectTrublMdatCaseList.do'  data-seed='consumer_04050300000000000000' data-auth='N,Y,Y,Y,Y,Y' >분쟁조정 사례</a>
				</li>
				<li class='gnbDp-3-61'><a href='/user/bbs/consumer/120/461/bbsDataList.do' title='스토리로 보는 사례 ' data-url='/user/bbs/consumer/120/461/bbsDataList.do'  data-seed='consumer_04050400000000000000' data-auth='N,Y,Y,Y,Y,Y' >스토리로 보는 사례</a>
				</li>
				<li class='gnbDp-3-62'><a href='/user/bbs/consumer/121/462/bbsDataList.do' title='웹툰으로 보는 사례 ' data-url='/user/bbs/consumer/121/462/bbsDataList.do'  data-seed='consumer_04050500000000000000' data-auth='N,Y,Y,Y,Y,Y' >웹툰으로 보는 사례</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-23'><a href='/user/ftc/consumer/relatelaword/108/selectRelateLawordList.do' title='관련 법령 ' data-url='/user/ftc/consumer/relatelaword/108/selectRelateLawordList.do'  data-seed='consumer_04060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >관련 법령</a>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-5'><a href='/user/bbs/consumer/1/117/bbsDataList.do' title='알림소식 ' data-url='/user/bbs/consumer/1/117/bbsDataList.do'  data-seed='consumer_05000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >알림소식</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-24'><a href='/user/bbs/consumer/1/117/bbsDataList.do' title='공지사항 ' data-url='/user/bbs/consumer/1/117/bbsDataList.do'  data-seed='consumer_05010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >공지사항</a>
			</li>
			<li class='gnbDp-2-25'><a href='/user/bbs/consumer/100/119/bbsDataList.do' title='자료실 ' data-url='/user/bbs/consumer/100/119/bbsDataList.do'  data-seed='consumer_05020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >자료실</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-63'><a href='/user/bbs/consumer/100/119/bbsDataList.do' title='일반자료실 ' data-url='/user/bbs/consumer/100/119/bbsDataList.do'  data-seed='consumer_05020100000000000000' data-auth='N,Y,Y,Y,Y,Y' >일반자료실</a>
				</li>
				<li class='gnbDp-3-64'><a href='/user/ftc/consumer/openApiSvcUser/120/selectOpenApiSvcList.do' title='Open API ' data-url='/user/ftc/consumer/openApiSvcUser/120/selectOpenApiSvcList.do'  data-seed='consumer_05020200000000000000' data-auth='N,Y,Y,Y,Y,Y' >Open API</a>
				</li>
				<li class='gnbDp-3-65'><a href='/user/ftc/consumer/rssInfoMainCntnts/631/selectCntntsForRSS.do' title='RSS ' data-url='/user/ftc/consumer/rssInfoMainCntnts/631/selectCntntsForRSS.do'  data-seed='consumer_05020400000000000000' data-auth='N,Y,Y,Y,Y,Y' >RSS</a>
				</li>
				<li class='gnbDp-3-66'><a href='/consumer/subIndex/121.do' title='뷰어다운로드' data-url='/consumer/subIndex/121.do'  data-seed='consumer_05020300000000000000' data-auth='N,Y,Y,Y,Y,Y' >뷰어다운로드</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-26'><a href='/user/ftc/consumer/faqinqire/421/selectFaqInqireList.do' title='FAQ ' data-url='/user/ftc/consumer/faqinqire/421/selectFaqInqireList.do'  data-seed='consumer_05060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >FAQ</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-67'><a href='/user/ftc/consumer/faqinqire/680/selectFaqInqireList.do' title='포털 FAQ ' data-url='/user/ftc/consumer/faqinqire/680/selectFaqInqireList.do'  data-seed='consumer_05060100000000000000' data-auth='N,Y,Y,Y,Y,Y' >포털 FAQ</a>
				</li>
				<li class='gnbDp-3-68'><a href='/user/ftc/consumer/faqinqire/681/selectInsttFaqInqireList.do?insttId=3' title='새마을금고 중앙회 FAQ ' data-url='/user/ftc/consumer/faqinqire/681/selectInsttFaqInqireList.do?insttId=3'  data-seed='consumer_05060200000000000000' data-auth='N,Y,Y,Y,Y,Y' >새마을금고 중앙회 FAQ</a>
				</li>
				<li class='gnbDp-3-69'><a href='/user/ftc/consumer/faqinqire/682/selectInsttFaqInqireList.do?insttId=17' title='특허청 FAQ ' data-url='/user/ftc/consumer/faqinqire/682/selectInsttFaqInqireList.do?insttId=17'  data-seed='consumer_05060300000000000000' data-auth='N,Y,Y,Y,Y,Y' >특허청 FAQ</a>
				</li>
				<li class='gnbDp-3-70'><a href='/user/ftc/consumer/faqinqire/683/selectInsttFaqInqireList.do?insttId=19' title='한국석유관리원 FAQ ' data-url='/user/ftc/consumer/faqinqire/683/selectInsttFaqInqireList.do?insttId=19'  data-seed='consumer_05060400000000000000' data-auth='N,Y,Y,Y,Y,Y' >한국석유관리원 FAQ</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-27'><a href='/user/bbs/consumer/122/463/bbsDataList.do' title='인포그래픽 ' data-url='/user/bbs/consumer/122/463/bbsDataList.do'  data-seed='consumer_05070000000000000000' data-auth='N,Y,Y,Y,Y,Y' >인포그래픽</a>
			</li>
			<li class='gnbDp-2-28'><a href='/user/bbs/consumer/140/123/bbsDataList.do' title='이벤트 ' data-url='/user/bbs/consumer/140/123/bbsDataList.do'  data-seed='consumer_05040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >이벤트</a>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-6'><a href='/user/ftc/consumer/mypage/383/selectWidgList.do' title='마이페이지 ' data-url='/user/ftc/consumer/mypage/383/selectWidgList.do'  data-seed='consumer_15000000000000000000' data-auth='N,Y,N,Y,Y,N' >마이페이지</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-29'><a href='/user/ftc/consumer/mypage/383/selectWidgList.do' title='알림판 ' data-url='/user/ftc/consumer/mypage/383/selectWidgList.do'  data-seed='consumer_15010000000000000000' data-auth='N,Y,N,Y,Y,N' >알림판</a>
			</li>
			<li class='gnbDp-2-30'><a href='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do' title='나의 안전성향 ' data-url='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do'  data-seed='consumer_15030000000000000000' data-auth='N,Y,N,Y,Y,N' >나의 안전성향</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-71'><a href='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do' title='나의 안전성향 설정 ' data-url='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do'  data-seed='consumer_15030100000000000000' data-auth='N,Y,N,Y,Y,N' >나의 안전성향 설정</a>
				</li>
				<li class='gnbDp-3-72'><a href='/user/ftc/consumer/mypage/387/selectSafeInclnView.do' title='나의 안전성향 조회 ' data-url='/user/ftc/consumer/mypage/387/selectSafeInclnView.do'  data-seed='consumer_15030200000000000000' data-auth='N,Y,N,Y,Y,N' >나의 안전성향 조회</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-31'><a href='/user/ftc/consumer/mypage/388/selectPushNtcnEstbsList.do' title='푸시알림설정 ' data-url='/user/ftc/consumer/mypage/388/selectPushNtcnEstbsList.do'  data-seed='consumer_15040000000000000000' data-auth='N,Y,N,Y,Y,N' >푸시알림설정</a>
			</li>
			<li class='gnbDp-2-32'><a href='/user/ftc/consumer/mypage/389/selectIndvdlMberInfo.do' title='회원정보수정 ' data-url='/user/ftc/consumer/mypage/389/selectIndvdlMberInfo.do'  data-seed='consumer_15050000000000000000' data-auth='N,Y,N,Y,Y,N' >회원정보수정</a>
			</li>
			<li class='gnbDp-2-33'><a href='/user/ftc/consumer/mypage/390/selectBsnmInqryList.do' title='사업자문의 ' data-url='/user/ftc/consumer/mypage/390/selectBsnmInqryList.do'  data-seed='consumer_15060000000000000000' data-auth='N,Y,N,Y,Y,N' >사업자문의</a>
			</li>
			<li class='gnbDp-2-34'><a href='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do' title='나의 관심상품 ' data-url='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do'  data-seed='consumer_15070000000000000000' data-auth='N,Y,N,Y,Y,N' >나의 관심상품</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-73'><a href='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do' title='나의 관심상품 ' data-url='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do'  data-seed='consumer_15070100000000000000' data-auth='N,Y,N,Y,Y,N' >나의 관심상품</a>
				</li>
				<li class='gnbDp-3-74'><a href='/user/ftc/consumer/mypage/394/selectIntrstGoodsStatList.do' title='나의 상품통계 ' data-url='/user/ftc/consumer/mypage/394/selectIntrstGoodsStatList.do'  data-seed='consumer_15070300000000000000' data-auth='N,Y,N,Y,Y,N' >나의 상품통계</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-35'><a href='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do' title='나의 사건조회 ' data-url='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do'  data-seed='consumer_15080000000000000000' data-auth='N,Y,N,Y,Y,N' >나의 사건조회</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-75'><a href='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do' title='온라인상담 현황 ' data-url='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do'  data-seed='consumer_15080100000000000000' data-auth='N,Y,N,Y,Y,N' >온라인상담 현황</a>
				</li>
				<li class='gnbDp-3-76'><a href='/user/ftc/consumer/mypage/397/selectDmgeRlifList.do' title='피해구제/분쟁조정 현황 ' data-url='/user/ftc/consumer/mypage/397/selectDmgeRlifList.do'  data-seed='consumer_15080200000000000000' data-auth='N,Y,N,Y,Y,N' >피해구제/분쟁조정 현황</a>
				</li>
				<li class='gnbDp-3-77'><a href='/user/ftc/consumer/mypage/398/selectOnlineVisitResveList.do' title='온라인 방문예약현황 ' data-url='/user/ftc/consumer/mypage/398/selectOnlineVisitResveList.do'  data-seed='consumer_15080300000000000000' data-auth='N,Y,N,Y,Y,N' >온라인 방문예약현황</a>
				</li>
			</ul>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-7'><a href='/user/ftc/consumer/mypage/399/selectWidgList.do' title='마이페이지 ' data-url='/user/ftc/consumer/mypage/399/selectWidgList.do'  data-seed='consumer_16000000000000000000' data-auth='N,N,Y,N,Y,N' >마이페이지</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-36'><a href='/user/ftc/consumer/mypage/399/selectWidgList.do' title='알림판 ' data-url='/user/ftc/consumer/mypage/399/selectWidgList.do'  data-seed='consumer_16010000000000000000' data-auth='N,N,Y,N,Y,N' >알림판</a>
			</li>
			<li class='gnbDp-2-37'><a href='/user/ftc/consumer/mypage/401/selectPushNtcnEstbsList.do' title='푸시알림설정 ' data-url='/user/ftc/consumer/mypage/401/selectPushNtcnEstbsList.do'  data-seed='consumer_16030000000000000000' data-auth='N,N,Y,N,Y,N' >푸시알림설정</a>
			</li>
			<li class='gnbDp-2-38'><a href='/user/ftc/consumer/mypage/402/selectIndvdlMberInfo.do' title='회원정보수정 ' data-url='/user/ftc/consumer/mypage/402/selectIndvdlMberInfo.do'  data-seed='consumer_16040000000000000000' data-auth='N,N,Y,N,Y,N' >회원정보수정</a>
			</li>
			<li class='gnbDp-2-39'><a href='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520' title='우리기업 상품 ' data-url='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520'  data-seed='consumer_16050000000000000000' data-auth='N,N,Y,N,Y,N' >우리기업 상품</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-78'><a href='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520' title='행복드림표지제 안내 ' data-url='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520'  data-seed='consumer_16050600000000000000' data-auth='N,N,Y,N,Y,N' >행복드림표지제 안내</a>
				</li>
				<li class='gnbDp-3-79'><a href='/user/ftc/consumer/mypage/406/selectHpsgnsysList.do' title='행복드림표지제 신청 ' data-url='/user/ftc/consumer/mypage/406/selectHpsgnsysList.do'  data-seed='consumer_16050300000000000000' data-auth='N,N,Y,N,Y,N' >행복드림표지제 신청</a>
				</li>
				<li class='gnbDp-3-80'><a href='/user/ftc/consumer/mypage/408/selectPartcptnBsnmSttusList.do' title='참여기업현황 ' data-url='/user/ftc/consumer/mypage/408/selectPartcptnBsnmSttusList.do'  data-seed='consumer_16050500000000000000' data-auth='N,N,Y,N,Y,N' >참여기업현황</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-40'><a href='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do' title='우리기업 활동 ' data-url='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do'  data-seed='consumer_16060000000000000000' data-auth='N,N,Y,N,Y,N' >우리기업 활동</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-81'><a href='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do' title='시스템관련 문의/답변 ' data-url='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do'  data-seed='consumer_16060100000000000000' data-auth='N,N,Y,N,Y,N' >시스템관련 문의/답변</a>
				</li>
				<li class='gnbDp-3-82'><a href='/user/ftc/consumer/mypage/411/selectCnsmrInqryAnswerList.do' title='소비자 문의/답변 ' data-url='/user/ftc/consumer/mypage/411/selectCnsmrInqryAnswerList.do'  data-seed='consumer_16060200000000000000' data-auth='N,N,Y,N,Y,N' >소비자 문의/답변</a>
				</li>
				<li class='gnbDp-3-83'><a href='/user/ftc/consumer/mypage/412/selectMmnyGoodsInsttProcessSttusList.do' title='자사상품 기관처리현황 ' data-url='/user/ftc/consumer/mypage/412/selectMmnyGoodsInsttProcessSttusList.do'  data-seed='consumer_16060300000000000000' data-auth='N,N,Y,N,Y,N' >자사상품 기관처리현황</a>
				</li>
			</ul>
				</li>
			</ul>
		</li>
	</ul>
                    </nav>
                </div>
                <!-- E : .nav_area -->
                <!-- S : #mobile_gnb_wrap -->
                <div id="mobile_gnb_wrap">
                    <div class="mobile_gnb_innner">
                        <p class="mobile_gnb_top_area"><span>행복드림 - 열린소비자포털</span><button type="button" id="btn_m_menu_close">메뉴닫기</button></p>
                        <!--@seed:/consumer/main/top/menu.do-->
                        




	<ul class='gnbDp-1'>
		<li class='gnbDp-1-1'><a href='/consumer/subIndex/46.do' title='서비스안내 ' data-url='/consumer/subIndex/46.do'  data-seed='consumer_01000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >서비스안내</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-1'><a href='/consumer/subIndex/46.do' title='열린소비자포털이란?' data-url='/consumer/subIndex/46.do'  data-seed='consumer_01010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >열린소비자포털이란?</a>
			</li>
			<li class='gnbDp-2-2'><a href='/consumer/subIndex/47.do' title='이용안내' data-url='/consumer/subIndex/47.do'  data-seed='consumer_01020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >이용안내</a>
			</li>
			<li class='gnbDp-2-3'><a href='/consumer/subIndex/51.do' title='상담피해구제 안내 ' data-url='/consumer/subIndex/51.do'  data-seed='consumer_01030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담피해구제 안내</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-1'><a href='/consumer/subIndex/51.do' title='소비자 상담 기관' data-url='/consumer/subIndex/51.do'  data-seed='consumer_01030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자 상담 기관</a>
				</li>
				<li class='gnbDp-3-2'><a href='/consumer/subIndex/52.do' title='피해구제절차' data-url='/consumer/subIndex/52.do'  data-seed='consumer_01030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해구제절차</a>
				</li>
				<li class='gnbDp-3-3'><a href='/consumer/subIndex/53.do' title='분쟁조정안내' data-url='/consumer/subIndex/53.do'  data-seed='consumer_01030300000000000000' data-auth='N,Y,Y,Y,Y,Y' >분쟁조정안내</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-4'><a href='/consumer/subIndex/54.do' title='제도안내 ' data-url='/consumer/subIndex/54.do'  data-seed='consumer_01040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >제도안내</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-4'><a href='/consumer/subIndex/54.do' title='상담 및 피해구제 신청' data-url='/consumer/subIndex/54.do'  data-seed='consumer_01040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담 및 피해구제 신청</a>
				</li>
				<li class='gnbDp-3-5'><a href='/consumer/subIndex/55.do' title='안전정보 제공' data-url='/consumer/subIndex/55.do'  data-seed='consumer_01040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보 제공</a>
				</li>
				<li class='gnbDp-3-6'><a href='/consumer/subIndex/733.do' title='소비자중심경영(CCM) 인증' data-url='/consumer/subIndex/733.do'  data-seed='consumer_01040400000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자중심경영(CCM) 인증</a>
				</li>
				<li class='gnbDp-3-7'><a href='/consumer/subIndex/56.do' title='행복드림표지제' data-url='/consumer/subIndex/56.do'  data-seed='consumer_01040300000000000000' data-auth='N,Y,Y,Y,Y,Y' >행복드림표지제</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-5'><a href='/user/ftc/consumer/insttguidance/50/selectInsttGuidanceList.do' title='참여기관안내 ' data-url='/user/ftc/consumer/insttguidance/50/selectInsttGuidanceList.do'  data-seed='consumer_01050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >참여기관안내</a>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-2'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='상품안전정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품안전정보</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-6'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='상품정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02080000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-8'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='물품정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02080500000000000000' data-auth='N,Y,Y,Y,Y,Y' >물품정보</a>
				</li>
				<li class='gnbDp-3-9'><a href='/user/ftc/consumer/goodsinfo/620/selectGoodsInfoList.do?tabType=02' title='금융상품정보 ' data-url='/user/ftc/consumer/goodsinfo/620/selectGoodsInfoList.do?tabType=02'  data-seed='consumer_02080600000000000000' data-auth='N,Y,Y,Y,Y,Y' >금융상품정보</a>
				</li>
				<li class='gnbDp-3-10'><a href='/user/ftc/consumer/goodsinfo/706/selectGoodsInfoList.do?tabType=03' title='의료기관정보 ' data-url='/user/ftc/consumer/goodsinfo/706/selectGoodsInfoList.do?tabType=03'  data-seed='consumer_02080300000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기관정보</a>
				</li>
				<li class='gnbDp-3-11'><a href='/user/ftc/consumer/goodsinfo/707/selectGoodsInfoList.do?tabType=04' title='여행사 보험가입정보 ' data-url='/user/ftc/consumer/goodsinfo/707/selectGoodsInfoList.do?tabType=04'  data-seed='consumer_02080400000000000000' data-auth='N,Y,Y,Y,Y,Y' >여행사 보험가입정보</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-7'><a href='/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do' title='상품이력제 조회 ' data-url='/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do'  data-seed='consumer_02020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품이력제 조회</a>
			</li>
			<li class='gnbDp-2-8'><a href='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do' title='안전정보 ' data-url='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do'  data-seed='consumer_02030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-12'><a href='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do' title='위해정보 처리 속보 ' data-url='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do'  data-seed='consumer_02030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >위해정보 처리 속보</a>
				</li>
				<li class='gnbDp-3-13'><a href='/user/bbs/consumer/261/731/bbsDataList.do' title='안전정보 ' data-url='/user/bbs/consumer/261/731/bbsDataList.do'  data-seed='consumer_02030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-9'><a href='/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do' title='국내리콜 ' data-url='/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do'  data-seed='consumer_02040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >국내리콜</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-14'><a href='/user/ftc/consumer/recallInfo/621/selectRecallInfoInternalList.do?searchCondition1=0101' title='공산품 ' data-url='/user/ftc/consumer/recallInfo/621/selectRecallInfoInternalList.do?searchCondition1=0101'  data-seed='consumer_02040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >공산품</a>
				</li>
				<li class='gnbDp-3-15'><a href='/user/ftc/consumer/recallInfo/622/selectRecallInfoInternalList.do?searchCondition1=0201' title='식품 ' data-url='/user/ftc/consumer/recallInfo/622/selectRecallInfoInternalList.do?searchCondition1=0201'  data-seed='consumer_02040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >식품</a>
				</li>
				<li class='gnbDp-3-16'><a href='/user/ftc/consumer/recallInfo/623/selectRecallInfoInternalList.do?searchCondition1=0203' title='축산물 ' data-url='/user/ftc/consumer/recallInfo/623/selectRecallInfoInternalList.do?searchCondition1=0203'  data-seed='consumer_02040300000000000000' data-auth='N,Y,Y,Y,Y,Y' >축산물</a>
				</li>
				<li class='gnbDp-3-17'><a href='/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?searchCondition1=0204' title='의약품 ' data-url='/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?searchCondition1=0204'  data-seed='consumer_02040400000000000000' data-auth='N,Y,Y,Y,Y,Y' >의약품</a>
				</li>
				<li class='gnbDp-3-18'><a href='/user/ftc/consumer/recallInfo/625/selectRecallInfoInternalList.do?searchCondition1=0205' title='의약외품 ' data-url='/user/ftc/consumer/recallInfo/625/selectRecallInfoInternalList.do?searchCondition1=0205'  data-seed='consumer_02040500000000000000' data-auth='N,Y,Y,Y,Y,Y' >의약외품</a>
				</li>
				<li class='gnbDp-3-19'><a href='/user/ftc/consumer/recallInfo/626/selectRecallInfoInternalList.do?searchCondition1=0207' title='의료기기 ' data-url='/user/ftc/consumer/recallInfo/626/selectRecallInfoInternalList.do?searchCondition1=0207'  data-seed='consumer_02040600000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기기</a>
				</li>
				<li class='gnbDp-3-20'><a href='/user/ftc/consumer/recallInfo/627/selectRecallInfoInternalList.do?searchCondition1=0206' title='화장품 ' data-url='/user/ftc/consumer/recallInfo/627/selectRecallInfoInternalList.do?searchCondition1=0206'  data-seed='consumer_02040700000000000000' data-auth='N,Y,Y,Y,Y,Y' >화장품</a>
				</li>
				<li class='gnbDp-3-21'><a href='/user/ftc/consumer/recallInfo/628/selectRecallInfoInternalList.do?searchCondition1=0401' title='생활화학제품 ' data-url='/user/ftc/consumer/recallInfo/628/selectRecallInfoInternalList.do?searchCondition1=0401'  data-seed='consumer_02040800000000000000' data-auth='N,Y,Y,Y,Y,Y' >생활화학제품</a>
				</li>
				<li class='gnbDp-3-22'><a href='/user/ftc/consumer/recallInfo/629/selectRecallInfoInternalList.do?searchCondition1=0301' title='자동차 ' data-url='/user/ftc/consumer/recallInfo/629/selectRecallInfoInternalList.do?searchCondition1=0301'  data-seed='consumer_02040900000000000000' data-auth='N,Y,Y,Y,Y,Y' >자동차</a>
				</li>
				<li class='gnbDp-3-23'><a href='/user/ftc/consumer/recallInfo/630/selectRecallInfoInternalList.do?searchCondition1=0403' title='먹는물 ' data-url='/user/ftc/consumer/recallInfo/630/selectRecallInfoInternalList.do?searchCondition1=0403'  data-seed='consumer_02041000000000000000' data-auth='N,Y,Y,Y,Y,Y' >먹는물</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-10'><a href='/user/ftc/consumer/recallInfo/69/selectRecallInfoForeignList.do' title='해외리콜 ' data-url='/user/ftc/consumer/recallInfo/69/selectRecallInfoForeignList.do'  data-seed='consumer_02050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >해외리콜</a>
			</li>
			<li class='gnbDp-2-11'><a href='/user/ftc/consumer/crtfc/70/selectCrtfcInfoList.do?crtfcCdS=' title='인증정보 ' data-url='/user/ftc/consumer/crtfc/70/selectCrtfcInfoList.do?crtfcCdS='  data-seed='consumer_02060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >인증정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-24'><a href='/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do?crtfcCdS=01' title='환경마크인증 ' data-url='/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do?crtfcCdS=01'  data-seed='consumer_02060100000000000000' data-auth='N,Y,Y,Y,Y,Y' >환경마크인증</a>
				</li>
				<li class='gnbDp-3-25'><a href='/user/ftc/consumer/crtfc/72/selectCrtfcInfoList.do?crtfcCdS=02' title='환경성적표지인증 ' data-url='/user/ftc/consumer/crtfc/72/selectCrtfcInfoList.do?crtfcCdS=02'  data-seed='consumer_02060200000000000000' data-auth='N,Y,Y,Y,Y,Y' >환경성적표지인증</a>
				</li>
				<li class='gnbDp-3-26'><a href='/user/ftc/consumer/crtfc/73/selectCrtfcInfoList.do?crtfcCdS=03' title='KC인증 ' data-url='/user/ftc/consumer/crtfc/73/selectCrtfcInfoList.do?crtfcCdS=03'  data-seed='consumer_02060300000000000000' data-auth='N,Y,Y,Y,Y,Y' >KC인증</a>
				</li>
				<li class='gnbDp-3-27'><a href='/user/ftc/consumer/crtfc/74/selectCrtfcInfoList.do?crtfcCdS=04' title='방송통신기자재 적합성평가 ' data-url='/user/ftc/consumer/crtfc/74/selectCrtfcInfoList.do?crtfcCdS=04'  data-seed='consumer_02060400000000000000' data-auth='N,Y,Y,Y,Y,Y' >방송통신기자재 적합성평가</a>
				</li>
				<li class='gnbDp-3-28'><a href='/user/ftc/consumer/crtfc/75/selectCrtfcInfoList.do?crtfcCdS=05' title='의료기관인증 ' data-url='/user/ftc/consumer/crtfc/75/selectCrtfcInfoList.do?crtfcCdS=05'  data-seed='consumer_02060500000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기관인증</a>
				</li>
				<li class='gnbDp-3-29'><a href='/user/ftc/consumer/hpsgnsyscrtfc/77/selectHpsgnsysCrtfcInfoList.do' title='CCM인증 ' data-url='/user/ftc/consumer/hpsgnsyscrtfc/77/selectHpsgnsysCrtfcInfoList.do'  data-seed='consumer_02060700000000000000' data-auth='N,Y,Y,Y,Y,Y' >CCM인증</a>
				</li>
				<li class='gnbDp-3-30'><a href='/user/ftc/consumer/hpsgnsys/720/selectHpsgnCrtfcList.do' title='행복드림표지제 ' data-url='/user/ftc/consumer/hpsgnsys/720/selectHpsgnCrtfcList.do'  data-seed='consumer_02060800000000000000' data-auth='N,Y,Y,Y,Y,Y' >행복드림표지제</a>
				</li>
			</ul>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-3'><a href='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do' title='소비자정보 ' data-url='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do'  data-seed='consumer_03000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자정보</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-12'><a href='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do' title='상품비교정보 ' data-url='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do'  data-seed='consumer_03010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품비교정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-31'><a href='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do' title='비교공감 ' data-url='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do'  data-seed='consumer_03010100000000000000' data-auth='N,Y,Y,Y,Y,Y' >비교공감</a>
				</li>
				<li class='gnbDp-3-32'><a href='/user/ftc/consumer/cnsmrBBS/80/selectInfoCmprList.do' title='일반비교정보 ' data-url='/user/ftc/consumer/cnsmrBBS/80/selectInfoCmprList.do'  data-seed='consumer_03010200000000000000' data-auth='N,Y,Y,Y,Y,Y' >일반비교정보</a>
				</li>
				<li class='gnbDp-3-33'><a href='/user/ftc/consumer/cnsmrTokBBS/81/selectCnsmrTokBBSList.do' title='소비자톡톡 ' data-url='/user/ftc/consumer/cnsmrTokBBS/81/selectCnsmrTokBBSList.do'  data-seed='consumer_03010300000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자톡톡</a>
				</li>
				<li class='gnbDp-3-34'><a href='/user/ftc/consumer/smsSubscription/82/smsSubscription.do' title='문자알림 서비스 ' data-url='/user/ftc/consumer/smsSubscription/82/smsSubscription.do'  data-seed='consumer_03010400000000000000' data-auth='N,Y,Y,Y,Y,Y' >문자알림 서비스</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-13'><a href='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do' title='소비자교육 ' data-url='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do'  data-seed='consumer_03020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자교육</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-35'><a href='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do' title='교육정보 ' data-url='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do'  data-seed='consumer_03020100000000000000' data-auth='N,Y,Y,Y,Y,Y' >교육정보</a>
				</li>
				<li class='gnbDp-3-36'><a href='/user/ftc/consumer/cnsmrEdc/85/selectCnsmrEdcList.do' title='교육일정 ' data-url='/user/ftc/consumer/cnsmrEdc/85/selectCnsmrEdcList.do'  data-seed='consumer_03020200000000000000' data-auth='Y,Y,Y,Y,Y,Y' >교육일정</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-14'><a href='/consumer/subIndex/327.do' title='가격정보 ' data-url='/consumer/subIndex/327.do'  data-seed='consumer_03030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >가격정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-37'><a href='/consumer/subIndex/327.do' title='참가격' data-url='/consumer/subIndex/327.do'  data-seed='consumer_03031100000000000000' data-auth='N,Y,Y,Y,Y,Y' >참가격</a>
				</li>
				<li class='gnbDp-3-38 mobileMenuHidden'><a href='/consumer/subIndex/328.do' title='주간가격정보' data-url='/consumer/subIndex/328.do'  data-seed='consumer_03031200000000000000' data-auth='N,Y,Y,Y,Y,Y' >주간가격정보</a>
				</li>
				<li class='gnbDp-3-39'><a href='/user/ftc/consumer/priceInfo/87/selectPublicChrgeInfoUserList.do' title='공공요금 ' data-url='/user/ftc/consumer/priceInfo/87/selectPublicChrgeInfoUserList.do'  data-seed='consumer_03030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >공공요금</a>
				</li>
				<li class='gnbDp-3-40'><a href='/user/ftc/consumer/priceInfo/88/selectIndvdlSvrPriceUserList.do' title='개인서비스요금 ' data-url='/user/ftc/consumer/priceInfo/88/selectIndvdlSvrPriceUserList.do'  data-seed='consumer_03030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >개인서비스요금</a>
				</li>
				<li class='gnbDp-3-41'><a href='/user/ftc/consumer/priceInfo/89/selectEatOutPriceUserList.do' title='외식비 ' data-url='/user/ftc/consumer/priceInfo/89/selectEatOutPriceUserList.do'  data-seed='consumer_03030300000000000000' data-auth='N,Y,Y,Y,Y,Y' >외식비</a>
				</li>
				<li class='gnbDp-3-42'><a href='/user/ftc/consumer/priceInfo/90/selectPriceInfoEdutInstList.do' title='학원교습소비 ' data-url='/user/ftc/consumer/priceInfo/90/selectPriceInfoEdutInstList.do'  data-seed='consumer_03030400000000000000' data-auth='N,Y,Y,Y,Y,Y' >학원교습소비</a>
				</li>
				<li class='gnbDp-3-43'><a href='/user/ftc/consumer/priceInfo/91/selectPriceInfoNpayDamtList.do' title='비급여진료비 ' data-url='/user/ftc/consumer/priceInfo/91/selectPriceInfoNpayDamtList.do'  data-seed='consumer_03030500000000000000' data-auth='N,Y,Y,Y,Y,Y' >비급여진료비</a>
				</li>
				<li class='gnbDp-3-44'><a href='/user/ftc/consumer/priceInfo/92/selectPriceInfoGnrlMdcinList.do' title='일반의약품비 ' data-url='/user/ftc/consumer/priceInfo/92/selectPriceInfoGnrlMdcinList.do'  data-seed='consumer_03030600000000000000' data-auth='N,Y,Y,Y,Y,Y' >일반의약품비</a>
				</li>
				<li class='gnbDp-3-45'><a href='/user/ftc/consumer/priceInfo/93/selectPriceInfoOilList.do' title='유가정보 ' data-url='/user/ftc/consumer/priceInfo/93/selectPriceInfoOilList.do'  data-seed='consumer_03030700000000000000' data-auth='N,Y,Y,Y,Y,Y' >유가정보</a>
				</li>
				<li class='gnbDp-3-46'><a href='/user/ftc/consumer/priceInfo/94/selectPriceInfoFoodList.do' title='농산물도소매가 ' data-url='/user/ftc/consumer/priceInfo/94/selectPriceInfoFoodList.do'  data-seed='consumer_03030800000000000000' data-auth='N,Y,Y,Y,Y,Y' >농산물도소매가</a>
				</li>
				<li class='gnbDp-3-47'><a href='/user/ftc/consumer/priceInfo/95/selectPriceInfoAptList.do' title='아파트실거래가 ' data-url='/user/ftc/consumer/priceInfo/95/selectPriceInfoAptList.do'  data-seed='consumer_03030900000000000000' data-auth='N,Y,Y,Y,Y,Y' >아파트실거래가</a>
				</li>
				<li class='gnbDp-3-48'><a href='/user/ftc/consumer/priceInfo/96/selectPriceInfoOthbcReviewList.do' title='착한가격업소 ' data-url='/user/ftc/consumer/priceInfo/96/selectPriceInfoOthbcReviewList.do'  data-seed='consumer_03031000000000000000' data-auth='N,Y,Y,Y,Y,Y' >착한가격업소</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-15'><a href='/consumer/subIndex/97.do' title='금융/보험정보' data-url='/consumer/subIndex/97.do'  data-seed='consumer_03040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >금융/보험정보</a>
			</li>
			<li class='gnbDp-2-16'><a href='/consumer/subIndex/98.do' title='의료정보' data-url='/consumer/subIndex/98.do'  data-seed='consumer_03050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료정보</a>
			</li>
			<li class='gnbDp-2-17'><a href='/consumer/subIndex/101.do' title='연계기관 정보 ' data-url='/consumer/subIndex/101.do'  data-seed='consumer_03070000000000000000' data-auth='N,Y,Y,Y,Y,Y' >연계기관 정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-49'><a href='/consumer/subIndex/101.do' title='소비자정보 연계기관' data-url='/consumer/subIndex/101.do'  data-seed='consumer_03070100000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자정보 연계기관</a>
				</li>
				<li class='gnbDp-3-50'><a href='/consumer/subIndex/102.do' title='교육 연계기관' data-url='/consumer/subIndex/102.do'  data-seed='consumer_03070200000000000000' data-auth='N,Y,Y,Y,Y,Y' >교육 연계기관</a>
				</li>
			</ul>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-4'><a href='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do' title='상담 및 피해/분쟁 ' data-url='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do'  data-seed='consumer_04000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담 및 피해/분쟁</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-18'><a href='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do' title='피해예방 ' data-url='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do'  data-seed='consumer_04010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해예방</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-51'><a href='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do' title='자가진단 ' data-url='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do'  data-seed='consumer_04010100000000000000' data-auth='N,Y,Y,Y,Y,Y' >자가진단</a>
				</li>
				<li class='gnbDp-3-52'><a href='/user/ftc/consumer/cnsmrBBS/110/selectInfoCDMGList.do' title='피해예방주의보 ' data-url='/user/ftc/consumer/cnsmrBBS/110/selectInfoCDMGList.do'  data-seed='consumer_04010200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해예방주의보</a>
				</li>
				<li class='gnbDp-3-53'><a href='/user/ftc/consumer/cnsmrBBS/111/selectInfoCSLCList.do' title='상담속보 ' data-url='/user/ftc/consumer/cnsmrBBS/111/selectInfoCSLCList.do'  data-seed='consumer_04010300000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담속보</a>
				</li>
				<li class='gnbDp-3-54'><a href='/user/ftc/consumer/cnsmrBBS/112/selectInfoCMTTList.do' title='민원다발쇼핑몰 ' data-url='/user/ftc/consumer/cnsmrBBS/112/selectInfoCMTTList.do'  data-seed='consumer_04010400000000000000' data-auth='N,Y,Y,Y,Y,Y' >민원다발쇼핑몰</a>
				</li>
				<li class='gnbDp-3-55'><a href='/user/ftc/consumer/cnsmrBBS/113/selectInfoTRUBLList.do' title='소비자분쟁해결기준 ' data-url='/user/ftc/consumer/cnsmrBBS/113/selectInfoTRUBLList.do'  data-seed='consumer_04010500000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자분쟁해결기준</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-19'><a href='/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do' title='상담/피해구제 신청 ' data-url='/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do'  data-seed='consumer_04070000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담/피해구제 신청</a>
			</li>
			<li class='gnbDp-2-20'><a href='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do' title='상담/피해구제 진행현황 ' data-url='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do'  data-seed='consumer_04040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담/피해구제 진행현황</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-56'><a href='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do' title='온라인상담 현황 ' data-url='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do'  data-seed='consumer_04040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >온라인상담 현황</a>
				</li>
				<li class='gnbDp-3-57'><a href='/user/ftc/consumer/dmgerlif/317/selectDmgeRlifList.do' title='피해구제/분쟁조정 현황 ' data-url='/user/ftc/consumer/dmgerlif/317/selectDmgeRlifList.do'  data-seed='consumer_04040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해구제/분쟁조정 현황</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-21'><a href='/user/ftc/consumer/dmgerlif/301/selectOnlineVisitResveForm.do' title='온라인 방문예약 ' data-url='/user/ftc/consumer/dmgerlif/301/selectOnlineVisitResveForm.do'  data-seed='consumer_04080000000000000000' data-auth='N,Y,Y,Y,Y,Y' >온라인 방문예약</a>
			</li>
			<li class='gnbDp-2-22'><a href='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do' title='피해/분쟁 관련사례 ' data-url='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do'  data-seed='consumer_04050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해/분쟁 관련사례</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-58'><a href='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do' title='상담사례 ' data-url='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do'  data-seed='consumer_04050100000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담사례</a>
				</li>
				<li class='gnbDp-3-59'><a href='/user/ftc/consumer/dmgerlifcase/115/selectDmgeRlifCaseList.do' title='피해구제 사례 ' data-url='/user/ftc/consumer/dmgerlifcase/115/selectDmgeRlifCaseList.do'  data-seed='consumer_04050200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해구제 사례</a>
				</li>
				<li class='gnbDp-3-60'><a href='/user/ftc/consumer/trublmdatcase/116/selectTrublMdatCaseList.do' title='분쟁조정 사례 ' data-url='/user/ftc/consumer/trublmdatcase/116/selectTrublMdatCaseList.do'  data-seed='consumer_04050300000000000000' data-auth='N,Y,Y,Y,Y,Y' >분쟁조정 사례</a>
				</li>
				<li class='gnbDp-3-61'><a href='/user/bbs/consumer/120/461/bbsDataList.do' title='스토리로 보는 사례 ' data-url='/user/bbs/consumer/120/461/bbsDataList.do'  data-seed='consumer_04050400000000000000' data-auth='N,Y,Y,Y,Y,Y' >스토리로 보는 사례</a>
				</li>
				<li class='gnbDp-3-62'><a href='/user/bbs/consumer/121/462/bbsDataList.do' title='웹툰으로 보는 사례 ' data-url='/user/bbs/consumer/121/462/bbsDataList.do'  data-seed='consumer_04050500000000000000' data-auth='N,Y,Y,Y,Y,Y' >웹툰으로 보는 사례</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-23'><a href='/user/ftc/consumer/relatelaword/108/selectRelateLawordList.do' title='관련 법령 ' data-url='/user/ftc/consumer/relatelaword/108/selectRelateLawordList.do'  data-seed='consumer_04060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >관련 법령</a>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-5'><a href='/user/bbs/consumer/1/117/bbsDataList.do' title='알림소식 ' data-url='/user/bbs/consumer/1/117/bbsDataList.do'  data-seed='consumer_05000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >알림소식</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-24'><a href='/user/bbs/consumer/1/117/bbsDataList.do' title='공지사항 ' data-url='/user/bbs/consumer/1/117/bbsDataList.do'  data-seed='consumer_05010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >공지사항</a>
			</li>
			<li class='gnbDp-2-25'><a href='/user/bbs/consumer/100/119/bbsDataList.do' title='자료실 ' data-url='/user/bbs/consumer/100/119/bbsDataList.do'  data-seed='consumer_05020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >자료실</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-63'><a href='/user/bbs/consumer/100/119/bbsDataList.do' title='일반자료실 ' data-url='/user/bbs/consumer/100/119/bbsDataList.do'  data-seed='consumer_05020100000000000000' data-auth='N,Y,Y,Y,Y,Y' >일반자료실</a>
				</li>
				<li class='gnbDp-3-64'><a href='/user/ftc/consumer/openApiSvcUser/120/selectOpenApiSvcList.do' title='Open API ' data-url='/user/ftc/consumer/openApiSvcUser/120/selectOpenApiSvcList.do'  data-seed='consumer_05020200000000000000' data-auth='N,Y,Y,Y,Y,Y' >Open API</a>
				</li>
				<li class='gnbDp-3-65'><a href='/user/ftc/consumer/rssInfoMainCntnts/631/selectCntntsForRSS.do' title='RSS ' data-url='/user/ftc/consumer/rssInfoMainCntnts/631/selectCntntsForRSS.do'  data-seed='consumer_05020400000000000000' data-auth='N,Y,Y,Y,Y,Y' >RSS</a>
				</li>
				<li class='gnbDp-3-66'><a href='/consumer/subIndex/121.do' title='뷰어다운로드' data-url='/consumer/subIndex/121.do'  data-seed='consumer_05020300000000000000' data-auth='N,Y,Y,Y,Y,Y' >뷰어다운로드</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-26'><a href='/user/ftc/consumer/faqinqire/421/selectFaqInqireList.do' title='FAQ ' data-url='/user/ftc/consumer/faqinqire/421/selectFaqInqireList.do'  data-seed='consumer_05060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >FAQ</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-67'><a href='/user/ftc/consumer/faqinqire/680/selectFaqInqireList.do' title='포털 FAQ ' data-url='/user/ftc/consumer/faqinqire/680/selectFaqInqireList.do'  data-seed='consumer_05060100000000000000' data-auth='N,Y,Y,Y,Y,Y' >포털 FAQ</a>
				</li>
				<li class='gnbDp-3-68'><a href='/user/ftc/consumer/faqinqire/681/selectInsttFaqInqireList.do?insttId=3' title='새마을금고 중앙회 FAQ ' data-url='/user/ftc/consumer/faqinqire/681/selectInsttFaqInqireList.do?insttId=3'  data-seed='consumer_05060200000000000000' data-auth='N,Y,Y,Y,Y,Y' >새마을금고 중앙회 FAQ</a>
				</li>
				<li class='gnbDp-3-69'><a href='/user/ftc/consumer/faqinqire/682/selectInsttFaqInqireList.do?insttId=17' title='특허청 FAQ ' data-url='/user/ftc/consumer/faqinqire/682/selectInsttFaqInqireList.do?insttId=17'  data-seed='consumer_05060300000000000000' data-auth='N,Y,Y,Y,Y,Y' >특허청 FAQ</a>
				</li>
				<li class='gnbDp-3-70'><a href='/user/ftc/consumer/faqinqire/683/selectInsttFaqInqireList.do?insttId=19' title='한국석유관리원 FAQ ' data-url='/user/ftc/consumer/faqinqire/683/selectInsttFaqInqireList.do?insttId=19'  data-seed='consumer_05060400000000000000' data-auth='N,Y,Y,Y,Y,Y' >한국석유관리원 FAQ</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-27'><a href='/user/bbs/consumer/122/463/bbsDataList.do' title='인포그래픽 ' data-url='/user/bbs/consumer/122/463/bbsDataList.do'  data-seed='consumer_05070000000000000000' data-auth='N,Y,Y,Y,Y,Y' >인포그래픽</a>
			</li>
			<li class='gnbDp-2-28'><a href='/user/bbs/consumer/140/123/bbsDataList.do' title='이벤트 ' data-url='/user/bbs/consumer/140/123/bbsDataList.do'  data-seed='consumer_05040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >이벤트</a>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-6'><a href='/user/ftc/consumer/mypage/383/selectWidgList.do' title='마이페이지 ' data-url='/user/ftc/consumer/mypage/383/selectWidgList.do'  data-seed='consumer_15000000000000000000' data-auth='N,Y,N,Y,Y,N' >마이페이지</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-29'><a href='/user/ftc/consumer/mypage/383/selectWidgList.do' title='알림판 ' data-url='/user/ftc/consumer/mypage/383/selectWidgList.do'  data-seed='consumer_15010000000000000000' data-auth='N,Y,N,Y,Y,N' >알림판</a>
			</li>
			<li class='gnbDp-2-30'><a href='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do' title='나의 안전성향 ' data-url='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do'  data-seed='consumer_15030000000000000000' data-auth='N,Y,N,Y,Y,N' >나의 안전성향</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-71'><a href='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do' title='나의 안전성향 설정 ' data-url='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do'  data-seed='consumer_15030100000000000000' data-auth='N,Y,N,Y,Y,N' >나의 안전성향 설정</a>
				</li>
				<li class='gnbDp-3-72'><a href='/user/ftc/consumer/mypage/387/selectSafeInclnView.do' title='나의 안전성향 조회 ' data-url='/user/ftc/consumer/mypage/387/selectSafeInclnView.do'  data-seed='consumer_15030200000000000000' data-auth='N,Y,N,Y,Y,N' >나의 안전성향 조회</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-31'><a href='/user/ftc/consumer/mypage/388/selectPushNtcnEstbsList.do' title='푸시알림설정 ' data-url='/user/ftc/consumer/mypage/388/selectPushNtcnEstbsList.do'  data-seed='consumer_15040000000000000000' data-auth='N,Y,N,Y,Y,N' >푸시알림설정</a>
			</li>
			<li class='gnbDp-2-32'><a href='/user/ftc/consumer/mypage/389/selectIndvdlMberInfo.do' title='회원정보수정 ' data-url='/user/ftc/consumer/mypage/389/selectIndvdlMberInfo.do'  data-seed='consumer_15050000000000000000' data-auth='N,Y,N,Y,Y,N' >회원정보수정</a>
			</li>
			<li class='gnbDp-2-33'><a href='/user/ftc/consumer/mypage/390/selectBsnmInqryList.do' title='사업자문의 ' data-url='/user/ftc/consumer/mypage/390/selectBsnmInqryList.do'  data-seed='consumer_15060000000000000000' data-auth='N,Y,N,Y,Y,N' >사업자문의</a>
			</li>
			<li class='gnbDp-2-34'><a href='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do' title='나의 관심상품 ' data-url='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do'  data-seed='consumer_15070000000000000000' data-auth='N,Y,N,Y,Y,N' >나의 관심상품</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-73'><a href='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do' title='나의 관심상품 ' data-url='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do'  data-seed='consumer_15070100000000000000' data-auth='N,Y,N,Y,Y,N' >나의 관심상품</a>
				</li>
				<li class='gnbDp-3-74'><a href='/user/ftc/consumer/mypage/394/selectIntrstGoodsStatList.do' title='나의 상품통계 ' data-url='/user/ftc/consumer/mypage/394/selectIntrstGoodsStatList.do'  data-seed='consumer_15070300000000000000' data-auth='N,Y,N,Y,Y,N' >나의 상품통계</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-35'><a href='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do' title='나의 사건조회 ' data-url='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do'  data-seed='consumer_15080000000000000000' data-auth='N,Y,N,Y,Y,N' >나의 사건조회</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-75'><a href='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do' title='온라인상담 현황 ' data-url='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do'  data-seed='consumer_15080100000000000000' data-auth='N,Y,N,Y,Y,N' >온라인상담 현황</a>
				</li>
				<li class='gnbDp-3-76'><a href='/user/ftc/consumer/mypage/397/selectDmgeRlifList.do' title='피해구제/분쟁조정 현황 ' data-url='/user/ftc/consumer/mypage/397/selectDmgeRlifList.do'  data-seed='consumer_15080200000000000000' data-auth='N,Y,N,Y,Y,N' >피해구제/분쟁조정 현황</a>
				</li>
				<li class='gnbDp-3-77'><a href='/user/ftc/consumer/mypage/398/selectOnlineVisitResveList.do' title='온라인 방문예약현황 ' data-url='/user/ftc/consumer/mypage/398/selectOnlineVisitResveList.do'  data-seed='consumer_15080300000000000000' data-auth='N,Y,N,Y,Y,N' >온라인 방문예약현황</a>
				</li>
			</ul>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-7'><a href='/user/ftc/consumer/mypage/399/selectWidgList.do' title='마이페이지 ' data-url='/user/ftc/consumer/mypage/399/selectWidgList.do'  data-seed='consumer_16000000000000000000' data-auth='N,N,Y,N,Y,N' >마이페이지</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-36'><a href='/user/ftc/consumer/mypage/399/selectWidgList.do' title='알림판 ' data-url='/user/ftc/consumer/mypage/399/selectWidgList.do'  data-seed='consumer_16010000000000000000' data-auth='N,N,Y,N,Y,N' >알림판</a>
			</li>
			<li class='gnbDp-2-37'><a href='/user/ftc/consumer/mypage/401/selectPushNtcnEstbsList.do' title='푸시알림설정 ' data-url='/user/ftc/consumer/mypage/401/selectPushNtcnEstbsList.do'  data-seed='consumer_16030000000000000000' data-auth='N,N,Y,N,Y,N' >푸시알림설정</a>
			</li>
			<li class='gnbDp-2-38'><a href='/user/ftc/consumer/mypage/402/selectIndvdlMberInfo.do' title='회원정보수정 ' data-url='/user/ftc/consumer/mypage/402/selectIndvdlMberInfo.do'  data-seed='consumer_16040000000000000000' data-auth='N,N,Y,N,Y,N' >회원정보수정</a>
			</li>
			<li class='gnbDp-2-39'><a href='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520' title='우리기업 상품 ' data-url='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520'  data-seed='consumer_16050000000000000000' data-auth='N,N,Y,N,Y,N' >우리기업 상품</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-78'><a href='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520' title='행복드림표지제 안내 ' data-url='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520'  data-seed='consumer_16050600000000000000' data-auth='N,N,Y,N,Y,N' >행복드림표지제 안내</a>
				</li>
				<li class='gnbDp-3-79'><a href='/user/ftc/consumer/mypage/406/selectHpsgnsysList.do' title='행복드림표지제 신청 ' data-url='/user/ftc/consumer/mypage/406/selectHpsgnsysList.do'  data-seed='consumer_16050300000000000000' data-auth='N,N,Y,N,Y,N' >행복드림표지제 신청</a>
				</li>
				<li class='gnbDp-3-80'><a href='/user/ftc/consumer/mypage/408/selectPartcptnBsnmSttusList.do' title='참여기업현황 ' data-url='/user/ftc/consumer/mypage/408/selectPartcptnBsnmSttusList.do'  data-seed='consumer_16050500000000000000' data-auth='N,N,Y,N,Y,N' >참여기업현황</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-40'><a href='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do' title='우리기업 활동 ' data-url='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do'  data-seed='consumer_16060000000000000000' data-auth='N,N,Y,N,Y,N' >우리기업 활동</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-81'><a href='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do' title='시스템관련 문의/답변 ' data-url='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do'  data-seed='consumer_16060100000000000000' data-auth='N,N,Y,N,Y,N' >시스템관련 문의/답변</a>
				</li>
				<li class='gnbDp-3-82'><a href='/user/ftc/consumer/mypage/411/selectCnsmrInqryAnswerList.do' title='소비자 문의/답변 ' data-url='/user/ftc/consumer/mypage/411/selectCnsmrInqryAnswerList.do'  data-seed='consumer_16060200000000000000' data-auth='N,N,Y,N,Y,N' >소비자 문의/답변</a>
				</li>
				<li class='gnbDp-3-83'><a href='/user/ftc/consumer/mypage/412/selectMmnyGoodsInsttProcessSttusList.do' title='자사상품 기관처리현황 ' data-url='/user/ftc/consumer/mypage/412/selectMmnyGoodsInsttProcessSttusList.do'  data-seed='consumer_16060300000000000000' data-auth='N,N,Y,N,Y,N' >자사상품 기관처리현황</a>
				</li>
			</ul>
				</li>
			</ul>
		</li>
	</ul>
                        <!--@seed:/consumer/main/top/menu.do-->
                        <div class="m_utilmenu_wrap">
                            <ul class="m_utilmenu_list  cf">
                                
                                
                                
                                <li><a href="/user/consumer/160/ftc/login.do">로그인</a></li>
                                <li><a href="/user/ftc/consumer/mber/163/regist.do">회원가입</a></li>
                                
                                
                                
                              	<li><a href="#foreign" class="foreignPopup">FOREIGN</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- E : #mobile_gnb_wrap -->
            </header>


	



            <!-- S : #con -->
            <div id="con" class="sub">
                <!-- S : .sub_visual -->
                <div class="sub_visual">
                    <p class="sub_slogun"></p>
                    <div class="sub_visual_bottom_bar"></div>
                    <h2 class="sub_slogun_depth_txt"><!--@seed:siteMenuSubTitle-->상품안전정보<!--@seed:siteMenuSubTitle--></h2>
                </div>
                <!-- E : .sub_visual -->
                <div class="center_wrapper">
                    <aside id="snb_area">
                        <h2>상품안전정보<span class="bar"></span></h2>
                        




	<ul class='subMDp-1 subPos-02'>
		<li class='subMDp-1-1'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='상품정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02080000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품정보</a>
		<ul class='subMDp-2'>
			<li class='subMDp-2-1'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='물품정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02080500000000000000' data-auth='N,Y,Y,Y,Y,Y' >물품정보</a>
			</li>
			<li class='subMDp-2-2'><a href='/user/ftc/consumer/goodsinfo/620/selectGoodsInfoList.do?tabType=02' title='금융상품정보 ' data-url='/user/ftc/consumer/goodsinfo/620/selectGoodsInfoList.do?tabType=02'  data-seed='consumer_02080600000000000000' data-auth='N,Y,Y,Y,Y,Y' >금융상품정보</a>
			</li>
			<li class='subMDp-2-3'><a href='/user/ftc/consumer/goodsinfo/706/selectGoodsInfoList.do?tabType=03' title='의료기관정보 ' data-url='/user/ftc/consumer/goodsinfo/706/selectGoodsInfoList.do?tabType=03'  data-seed='consumer_02080300000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기관정보</a>
			</li>
			<li class='subMDp-2-4'><a href='/user/ftc/consumer/goodsinfo/707/selectGoodsInfoList.do?tabType=04' title='여행사 보험가입정보 ' data-url='/user/ftc/consumer/goodsinfo/707/selectGoodsInfoList.do?tabType=04'  data-seed='consumer_02080400000000000000' data-auth='N,Y,Y,Y,Y,Y' >여행사 보험가입정보</a>
				</li>
			</ul>
		</li>
		<li class='subMDp-1-2'><a href='/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do' title='상품이력제 조회 ' data-url='/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do'  data-seed='consumer_02020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품이력제 조회</a>
		</li>
		<li class='subMDp-1-3'><a href='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do' title='안전정보 ' data-url='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do'  data-seed='consumer_02030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보</a>
		<ul class='subMDp-2'>
			<li class='subMDp-2-5'><a href='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do' title='위해정보 처리 속보 ' data-url='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do'  data-seed='consumer_02030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >위해정보 처리 속보</a>
			</li>
			<li class='subMDp-2-6'><a href='/user/bbs/consumer/261/731/bbsDataList.do' title='안전정보 ' data-url='/user/bbs/consumer/261/731/bbsDataList.do'  data-seed='consumer_02030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보</a>
				</li>
			</ul>
		</li>
		<li class='subMDp-1-4'><a href='/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do' title='국내리콜 ' data-url='/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do'  data-seed='consumer_02040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >국내리콜</a>
		<ul class='subMDp-2'>
			<li class='subMDp-2-7'><a href='/user/ftc/consumer/recallInfo/621/selectRecallInfoInternalList.do?searchCondition1=0101' title='공산품 ' data-url='/user/ftc/consumer/recallInfo/621/selectRecallInfoInternalList.do?searchCondition1=0101'  data-seed='consumer_02040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >공산품</a>
			</li>
			<li class='subMDp-2-8'><a href='/user/ftc/consumer/recallInfo/622/selectRecallInfoInternalList.do?searchCondition1=0201' title='식품 ' data-url='/user/ftc/consumer/recallInfo/622/selectRecallInfoInternalList.do?searchCondition1=0201'  data-seed='consumer_02040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >식품</a>
			</li>
			<li class='subMDp-2-9'><a href='/user/ftc/consumer/recallInfo/623/selectRecallInfoInternalList.do?searchCondition1=0203' title='축산물 ' data-url='/user/ftc/consumer/recallInfo/623/selectRecallInfoInternalList.do?searchCondition1=0203'  data-seed='consumer_02040300000000000000' data-auth='N,Y,Y,Y,Y,Y' >축산물</a>
			</li>
			<li class='subMDp-2-10'><a href='/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?searchCondition1=0204' title='의약품 ' data-url='/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?searchCondition1=0204'  data-seed='consumer_02040400000000000000' data-auth='N,Y,Y,Y,Y,Y' >의약품</a>
			</li>
			<li class='subMDp-2-11'><a href='/user/ftc/consumer/recallInfo/625/selectRecallInfoInternalList.do?searchCondition1=0205' title='의약외품 ' data-url='/user/ftc/consumer/recallInfo/625/selectRecallInfoInternalList.do?searchCondition1=0205'  data-seed='consumer_02040500000000000000' data-auth='N,Y,Y,Y,Y,Y' >의약외품</a>
			</li>
			<li class='subMDp-2-12'><a href='/user/ftc/consumer/recallInfo/626/selectRecallInfoInternalList.do?searchCondition1=0207' title='의료기기 ' data-url='/user/ftc/consumer/recallInfo/626/selectRecallInfoInternalList.do?searchCondition1=0207'  data-seed='consumer_02040600000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기기</a>
			</li>
			<li class='subMDp-2-13'><a href='/user/ftc/consumer/recallInfo/627/selectRecallInfoInternalList.do?searchCondition1=0206' title='화장품 ' data-url='/user/ftc/consumer/recallInfo/627/selectRecallInfoInternalList.do?searchCondition1=0206'  data-seed='consumer_02040700000000000000' data-auth='N,Y,Y,Y,Y,Y' >화장품</a>
			</li>
			<li class='subMDp-2-14'><a href='/user/ftc/consumer/recallInfo/628/selectRecallInfoInternalList.do?searchCondition1=0401' title='생활화학제품 ' data-url='/user/ftc/consumer/recallInfo/628/selectRecallInfoInternalList.do?searchCondition1=0401'  data-seed='consumer_02040800000000000000' data-auth='N,Y,Y,Y,Y,Y' >생활화학제품</a>
			</li>
			<li class='subMDp-2-15'><a href='/user/ftc/consumer/recallInfo/629/selectRecallInfoInternalList.do?searchCondition1=0301' title='자동차 ' data-url='/user/ftc/consumer/recallInfo/629/selectRecallInfoInternalList.do?searchCondition1=0301'  data-seed='consumer_02040900000000000000' data-auth='N,Y,Y,Y,Y,Y' >자동차</a>
			</li>
			<li class='subMDp-2-16'><a href='/user/ftc/consumer/recallInfo/630/selectRecallInfoInternalList.do?searchCondition1=0403' title='먹는물 ' data-url='/user/ftc/consumer/recallInfo/630/selectRecallInfoInternalList.do?searchCondition1=0403'  data-seed='consumer_02041000000000000000' data-auth='N,Y,Y,Y,Y,Y' >먹는물</a>
				</li>
			</ul>
		</li>
		<li class='subMDp-1-5'><a href='/user/ftc/consumer/recallInfo/69/selectRecallInfoForeignList.do' title='해외리콜 ' data-url='/user/ftc/consumer/recallInfo/69/selectRecallInfoForeignList.do'  data-seed='consumer_02050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >해외리콜</a>
		</li>
		<li class='subMDp-1-6'><a href='/user/ftc/consumer/crtfc/70/selectCrtfcInfoList.do?crtfcCdS=' title='인증정보 ' data-url='/user/ftc/consumer/crtfc/70/selectCrtfcInfoList.do?crtfcCdS='  data-seed='consumer_02060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >인증정보</a>
		<ul class='subMDp-2'>
			<li class='subMDp-2-17'><a href='/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do?crtfcCdS=01' title='환경마크인증 ' data-url='/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do?crtfcCdS=01'  data-seed='consumer_02060100000000000000' data-auth='N,Y,Y,Y,Y,Y' >환경마크인증</a>
			</li>
			<li class='subMDp-2-18'><a href='/user/ftc/consumer/crtfc/72/selectCrtfcInfoList.do?crtfcCdS=02' title='환경성적표지인증 ' data-url='/user/ftc/consumer/crtfc/72/selectCrtfcInfoList.do?crtfcCdS=02'  data-seed='consumer_02060200000000000000' data-auth='N,Y,Y,Y,Y,Y' >환경성적표지인증</a>
			</li>
			<li class='subMDp-2-19'><a href='/user/ftc/consumer/crtfc/73/selectCrtfcInfoList.do?crtfcCdS=03' title='KC인증 ' data-url='/user/ftc/consumer/crtfc/73/selectCrtfcInfoList.do?crtfcCdS=03'  data-seed='consumer_02060300000000000000' data-auth='N,Y,Y,Y,Y,Y' >KC인증</a>
			</li>
			<li class='subMDp-2-20'><a href='/user/ftc/consumer/crtfc/74/selectCrtfcInfoList.do?crtfcCdS=04' title='방송통신기자재 적합성평가 ' data-url='/user/ftc/consumer/crtfc/74/selectCrtfcInfoList.do?crtfcCdS=04'  data-seed='consumer_02060400000000000000' data-auth='N,Y,Y,Y,Y,Y' >방송통신기자재 적합성평가</a>
			</li>
			<li class='subMDp-2-21'><a href='/user/ftc/consumer/crtfc/75/selectCrtfcInfoList.do?crtfcCdS=05' title='의료기관인증 ' data-url='/user/ftc/consumer/crtfc/75/selectCrtfcInfoList.do?crtfcCdS=05'  data-seed='consumer_02060500000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기관인증</a>
			</li>
			<li class='subMDp-2-22'><a href='/user/ftc/consumer/hpsgnsyscrtfc/77/selectHpsgnsysCrtfcInfoList.do' title='CCM인증 ' data-url='/user/ftc/consumer/hpsgnsyscrtfc/77/selectHpsgnsysCrtfcInfoList.do'  data-seed='consumer_02060700000000000000' data-auth='N,Y,Y,Y,Y,Y' >CCM인증</a>
			</li>
			<li class='subMDp-2-23'><a href='/user/ftc/consumer/hpsgnsys/720/selectHpsgnCrtfcList.do' title='행복드림표지제 ' data-url='/user/ftc/consumer/hpsgnsys/720/selectHpsgnCrtfcList.do'  data-seed='consumer_02060800000000000000' data-auth='N,Y,Y,Y,Y,Y' >행복드림표지제</a>
			</li>
		</ul>
		</li>
	</ul>
                    </aside>
                    <!-- S : .sub_content_area -->
                    <div class="sub_content_area seed-print">
                        <p class="dev">02040400000000000000</p>
                        <ul class="now_position" id="now_position">
                            












<li class="home"><a href="/consumer/index.do">홈</a></li>


<li><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'>상품안전정보</a></li>

<li><a href='/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do'>국내리콜</a></li>

<li><a href='/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?searchCondition1=0204'>의약품</a></li>



                        </ul>
                        <h3 class="sub_content_title">의약품</h3>
                        <!-- S : .sub_content_area_inner -->
                        <div class="sub_content_area_inner">
                            <!-- /////////////////////////////////////////////////////////////////////////////////////////

                                서브 컨텐츠 시작

                            ////////////////////////////////////////////////////////////////////////////////////////// -->


	
	
	
	
	<!-- /////////////////////////////////////////////////////////////////////////////////////////
	
		서브 컨텐츠 시작
	
	////////////////////////////////////////////////////////////////////////////////////////// -->



<!-- 검색폼  -->
<form id="frmSearch" name="frmSearch" action="#" method="post">
<div class="ui_form_box_wrap pc">	
		<input type="hidden" name="page" value='1'/>
		<input type="hidden" name="recallSn" id="recallSn" value="" />
		
		<fieldset>
			<legend>리콜정보 검색</legend>
			<div class="goods_search_wrap_type_02 mt0 cf">
				<div class="form_wrap_type_02">
					<div class="col2 cf">
						<label for="searchCondition1">분류/검색</label>
						<select name="searchCondition1" id="searchCondition1" title="구분 선택">
							<option value="">전체</option>
							
								
									<option value='0101' >공산품</option>
								
							
								
									<option value='0201' >식품</option>
								
							
								
									<option value='0203' >축산물</option>
								
							
								
									<option value='0204' selected>의약품</option>
								
							
								
									<option value='0205' >의약외품</option>
								
							
								
									<option value='0207' >의료기기</option>
								
							
								
									<option value='0206' >화장품</option>
								
							
								
									<option value='0401' >생활화학제품</option>
								
							
								
									<option value='0301' >자동차</option>
								
							
								
							
								
									<option value='0403' >먹는물</option>
								
							
								
							
						</select>
						<input name="searchCondition2" id="searchCondition2" type="text" class="only_input" placeholder="상품명 또는 사업자명을 입력" value='' title='상품명 또는 사업자명을 입력' >
					</div>
					
					<div class="col1 cf">
						<label for="ex_date_start">리콜공표일</label>
						<div class="append_tit search_date_inner">
							<div class="datapicker_wrap">
								<input type="text" id="ex_date_start" name="searchCondition3Fr" placeholder="리콜공표 시작일 : 입력예시 2018-01-01" title="리콜공표일 시작일 기준 : 입력예시 2018-01-01" maxlength="10" onkeydown="return fn_dateChk(this,event)" onkeyup="return fn_dateChkFormat(this,event)" value="" />
							</div>
							<span class="dash">~</span>
							<div class="datapicker_wrap">
								<input type="text" id="ex_date_end" name="searchCondition3To" placeholder="리콜공표 종료일 : 입력예시 2018-01-01" title="리콜공표일 종료일 기준 : 입력예시 2018-01-01" maxlength="10" onkeydown="return fn_dateChk(this,event)" onkeyup="return fn_dateChkFormat(this,event)" value="" />
							</div>
						</div>
					</div>
				</div>
				<button type="submit" name="button"  class="btn_search_goods" onclick="fnSearchAll(); return false;">검색</button>
			</div>
		</fieldset>
</div>

<div class="ui_form_box_wrap mobile">
	<fieldset>
		<legend>리콜정보 검색</legend>
		<input type="text" id="m_search" placeholder="상품명 또는 사업자명을 입력" onkeydown="fn_search_form();" value="">
		<input type="button" id="m_submit" value="검색">
	</fieldset>
</div>

<!-- 검색 폼-->
	<fieldset>
		<legend>목록정렬</legend>
		<div class="tbl_list_reset_wrap up_obj">
			<p class="list_total_num">전체 <strong>455</strong>건</p>
			<p class="reset_area">
				<select name="row" title="리스트 갯수 선택" class="mobile_hidden" onChange="fnSearchAll();">
					<option value="10" selected>10개씩 보기</option>
					<option value="50" >50개씩 보기</option>
					<option value="100" >100개씩 보기</option>
				</select>
			</p>
		</div>
	</fieldset>
</form>
<div class="tbl list gray bb_style rwd up_txt">
	<table>
		<caption>번호, 상품명, 사업자명, 리콜공표일, 위해등급를 알수 있는 표 입니다.</caption>
		<colgroup>
			<col class="mobile_hidden">
			<col>
			<col>
			<col>
			<col>
		</colgroup>
		<thead>
			<tr>
				<th scope="col" class="mobile_hidden">번호</th>
				<th scope="col">상품명</th>
				<th scope="col">사업자명</th>
				<th scope="col">
                
                  
                  
                  
                    리콜공표일
                  
                
                </th>
				<th scope="col">
                
                
                
                          출처
                
                
                </th>
			</tr>
		</thead>
		<tbody>

			
				
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">455</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000012131');">풍산단삼</a></td>
						<td class="al">농업회사법인풍산주식회사</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.03.29 ~ 2021.03.28
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">454</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000012093');">미륭부소맥</a></td>
						<td class="al">미륭생약(주)</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.03.29 ~ 2021.03.28
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">453</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000012090');">영천약초도매시장두충염자</a></td>
						<td class="al">영천약초도매시장주식회사</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.03.26 ~ 2021.03.25
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">452</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000012091');">퓨어마인드 지실</a></td>
						<td class="al">주식회사퓨어마인드농업회사법인</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.03.26 ~ 2021.03.25
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">451</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000012092');">퓨어마인드 형개</a></td>
						<td class="al">주식회사퓨어마인드농업회사법인</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.03.26 ~ 2021.03.25
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">450</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000011920');">현진반하</a></td>
						<td class="al">(주)현진제약</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.03.22 ~ 2021.03.21
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">449</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000011762');">광덕제약두충염자</a></td>
						<td class="al">광덕제약주식회사</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.03.16 ~ 2021.03.15
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">448</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000011460');">현진천문동</a></td>
						<td class="al">(주)현진제약</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.03.12 ~ 2021.03.11
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">447</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000011461');">이풀잎종대황</a></td>
						<td class="al">(주)이풀잎제약</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.03.12 ~ 2021.03.11
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
					
                    
                    
                    
					<tr>
						<td class="ac mobile_hidden">446</td>
						<td class="al"><a href="javascript:fnDetail('RCLL_000000000010063');">대명산사</a></td>
						<td class="al">대명제약(주)</td>
						<td class="ac">
                        
                          
                          
                          
						
							
							
							
							
							2018.02.20 ~ 2021.02.19
                          
                        
						</td>
						<td class="ac">
                            
                            
                            
                              식품의약품안전처
                            
                            
						</td>
					</tr>
						  
				
				
			
		</tbody>
	</table>
</div>
<!-- 페이징 -->
<div class="ui_pagination_wrap">
	<div class="ui_pagination_inner">
		<a class='btn_first' href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=1&row=10" title="첫페이지">처음 목록으로 이동</a><a class='btn_prev' href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=1&row=10" title="이전페이지">이전 목록으로 이동</a><ul><li><strong title="현재페이지">1</strong></li><li><a href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=2&row=10" title="2 페이지">2</a></li><li><a href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=3&row=10" title="3 페이지">3</a></li><li><a href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=4&row=10" title="4 페이지">4</a></li><li><a href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=5&row=10" title="5 페이지">5</a></li><li><a href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=6&row=10" title="6 페이지">6</a></li><li><a href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=7&row=10" title="7 페이지">7</a></li><li><a href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=8&row=10" title="8 페이지">8</a></li><li><a href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=9&row=10" title="9 페이지">9</a></li><li><a href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=10&row=10" title="10 페이지">10</a></li></ul><a class='btn_next' href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=11&row=10" title="다음페이지">다음 목록으로 이동</a><a class='btn_last' href="/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?hbrdSe=1&searchCondition1=0204&searchCondition2=&searchCondition3Fr=&searchCondition3To=&page=46&row=10" title="마지막페이지">마지막 목록으로 이동</a>
	</div>
</div>
<!-- //페이징 -->

<!-- 안내문 -->
<div class="ui_sub_top_info_box up_obj">
	<div class="ui_sub_top_info_box_inner">
		<ul class="ui_list_square">
			<li>리콜상품에 대한 수리·환불 등 조치방법은 해당 사업자에게 문의하시기 바랍니다.</li>
			<li>만약 적절히 조치가 되지 않는 경우, 행복드림 열린소비자포털을 통해 피해구제 신청을 하실수 있습니다.</li>
			
		</ul>
	</div>
</div>
<!-- //안내문 -->

<!-- /////////////////////////////////////////////////////////////////////////////////////////

	서브 컨텐츠 끝

////////////////////////////////////////////////////////////////////////////////////////// -->

	
		
	
	
	






<form id="siteSatisfaction_624Frm" name="siteSatisfaction_624Frm" action="/common/proc/consumer/624/commonSatisfactionRegProc.do" method="POST">
	
	<input type="hidden" name="tSite.siteIdx" value="consumer" />
	<input type="hidden" name="tSiteMenu.siteMenuIdx" value="624" />
	<input type="hidden" name="pageUrl" id="pageUrl" value="" />
	
	





<!-- S : #site_satis_area -->
<div id="site_satis_area" class="cf">
    <div class="satis_choice_area">
        <h4>이 페이지에서 제공하는 정보에 만족하셨습니까?</h4>
        <ul class="cf">
            <li class="on"><input type="radio" name="siteSatisfactionStatus" id="siteSatisfactionStatus1" checked value="1"><label for="siteSatisfactionStatus1">매우만족</label></li>
            <li><input type="radio" name="siteSatisfactionStatus" id="siteSatisfactionStatus2" value="2"><label for="siteSatisfactionStatus2">만족</label></li>
            <li><input type="radio" name="siteSatisfactionStatus" id="siteSatisfactionStatus3" value="3"><label for="siteSatisfactionStatus3">보통</label></li>
            <li><input type="radio" name="siteSatisfactionStatus" id="siteSatisfactionStatus4" value="4"><label for="siteSatisfactionStatus4">불만족</label></li>
            <li><input type="radio" name="siteSatisfactionStatus" id="siteSatisfactionStatus5" value="5"><label for="siteSatisfactionStatus5">매우불만족</label></li>
        </ul>
    </div>
    <div class="satis_text_area">
        <h4>회원님의 의견을 적어 주세요.</h4>
        <div class="input_wrap cf">
            <label for="siteSatisfactionContents" class="hidden">의견작성</label>
            <input type="text" name="siteSatisfactionContents" id="siteSatisfactionContents">
            <input type="submit" value="평가">
        </div>
    </div>
</div>
<!-- E : #site_satis_area -->
<script>
    $(function(){
        $('#site_satis_area .satis_choice_area ul li').on('click', function(){
            $('#site_satis_area .satis_choice_area ul li').removeClass('on');
            $(this).addClass('on');
          	$(this).find('input').attr('checked','checked')
        });
    });
</script>


<div>
<input type="hidden" name="CSRFToken" value="0c725199-f242-484d-890b-d651e9ced4e1" />
</div></form>
	
	
	



                            <!-- /////////////////////////////////////////////////////////////////////////////////////////

                                서브 컨텐츠 끝

                            ////////////////////////////////////////////////////////////////////////////////////////// -->
                        </div>
                        <!-- E : .sub_content_area_inner -->
                    </div>
                    <!-- E : .sub_content_area -->
                </div>
            </div>
            <!-- S : #con -->
            <footer>
                <!-- S : .fnb_area -->
                <div class="fnb_area">
                    <ul>
						<li><a href="/consumer/subIndex/47.do">이용안내</a></li>
                      	<li><a href="/consumer/subIndex/170.do">이용약관</a></li>
                        <li><a href="/consumer/subIndex/171.do"><strong>개인정보처리방침</strong></a></li>
                        <li><a href="/consumer/subIndex/172.do">저작권정책</a></li>
                        <li><a href="/consumer/subIndex/173.do">이메일무단수집거부</a></li>
                        <li><a href="/consumer/subIndex/121.do">뷰어다운로드</a></li>
                    </ul>
                </div>
                <!-- E : .fnb_area -->
                <div class="center_wrapper">
                    <span class="fnb_logo">행복드림</span>
                    <address>우)30108 세종특별자치시 다솜3로 95 공정거래위원회 웹관리자 <a href="mailto:knowhim@korea.kr" target="_blank" title="새창으로 웹관리자에게 메일 보내기">knowhim@korea.kr</a> 이용안내 044)200-4920<br><span class="copy">Copyright © FAIR TRADE COMMISION<br> all rights reserved.</span></address>
                    <ul class="openapi_social">
                        <li><a href="/user/ftc/consumer/openApiSvcUser/120/selectOpenApiSvcList.do">OPEN API</a></li>
                        <li><a href="/user/ftc/consumer/rssInfoMainCntnts/631/selectCntntsForRSS.do">RSS</a></li>
                        <li><a href="https://ko-kr.facebook.com/kftcnews/" target="_blank" title="새창으로 공정거래위원회 FACEBOOK 바로가기">페이스북</a></li>
						<li><a href="http://www.wa.or.kr/board/list.asp?BoardID=0006" target="_blank" title="새창으로 한국웹접근성인증평가원 인증현황 바로가기">(사)한국장애인단체충연합회 한국웹접근성인증평가원 웹 접근성 우수사이트 인증</a></li>
                    </ul>
                    <!-- S : .related_area -->
                    <div class="related_area">
                        <div class="related_area_inner">
                            <button type="button">관련기관</button>
                            <ul>
                                <li><a href="http://www.ccn.go.kr" target="_blank" title="새창으로 1372 소비자상담센터 바로가기">1372 소비자상담센터</a></li>
                                <li><a href="http://www.hira.or.kr" target="_blank" title="새창으로 건강보험심사평가원 바로가기">건강보험심사평가원</a></li>
                                <li><a href="http://www.police.go.kr" target="_blank" title="새창으로 경찰청 바로가기">경찰청</a></li>
                                <li><a href="http://www.ftc.go.kr/" target="_blank" title="새창으로 공정거래위원회 바로가기">공정거래위원회</a></li>
                                <li><a href="http://www.customs.go.kr/" target="_blank" title="새창으로 관세청 바로가기">관세청</a></li>
                                <li><a href="http://www.moe.go.kr/main.do" target="_blank" title="새창으로 교육부 바로가기">교육부</a></li>
                                <li><a href="http://www.ts2020.kr" target="_blank" title="새창으로 교통안전공단 바로가기">교통안전공단</a></li>
                                <li><a href="http://www.naqs.go.kr" target="_blank" title="새창으로 국립농산물품질관리원 바로가기">국립농산물품질관리원</a></li>
                                <li><a href="http://www.nhic.or.kr" target="_blank" title="새창으로 국민건강보험공단 바로가기">국민건강보험공단</a></li>
                                <!-- <li><a href="http://www.mpss.go.kr/home/" target="_blank" title="새창으로 국민안전처 바로가기">국민안전처</a></li> -->
                                <li><a href="http://www.nps.or.kr/" target="_blank" title="새창으로 국민연금공단 바로가기">국민연금공단</a></li>
                                <li><a href="http://www.nts.go.kr/" target="_blank" title="새창으로 국세청 바로가기">국세청</a></li>
                                <li><a href="http://crossborder.kca.go.kr" target="_blank" title="새창으로 국제거래소비자포털 바로가기">국제거래소비자포털</a></li>
                                <li><a href="http://www.molit.go.kr/portal.do" target="_blank" title="새창으로 국토교통부 바로가기">국토교통부</a></li>
                                <li><a href="http://www.fss.or.kr" target="_blank" title="새창으로 금융감독원 바로가기">금융감독원</a></li>
                                <li><a href="http://kfco.org/" target="_blank" title="새창으로 금융소비자연맹 바로가기">금융소비자연맹</a></li>
                                <li><a href="http://www.qia.go.kr" target="_blank" title="새창으로 농림축산검역본부 바로가기">농림축산검역본부</a></li>
                                <li><a href="http://www.mafra.go.kr" target="_blank" title="새창으로 농림축산식품부 바로가기">농림축산식품부</a></li>
                                <li><a href="http://www.scourt.go.kr" target="_blank" title="새창으로 대법원 바로가기">대법원</a></li>
                                <li><a href="http://www.klac.or.kr/" target="_blank" title="새창으로 대한법률구조공단 바로가기">대한법률구조공단</a></li>
                                <li><a href="http://www.kpanet.or.kr/" target="_blank" title="새창으로 대한약사회 바로가기">대한약사회</a></li>
                                <li><a href="http://www.mcst.go.kr/" target="_blank" title="새창으로 문화체육관광부 바로가기">문화체육관광부</a></li>
                                <li><a href="http://www.kcc.go.kr" target="_blank" title="새창으로 방송통신위원회 바로가기">방송통신위원회</a></li>
                                <li><a href="http://www.moleg.go.kr" target="_blank" title="새창으로 법제처 바로가기">법제처</a></li>
                                <li><a href="http://www.mohw.go.kr/" target="_blank" title="새창으로 보건복지부 바로가기">보건복지부</a></li>
                                <li><a href="http://www.kidi.or.kr" target="_blank" title="새창으로 보험개발원 바로가기">보험개발원</a></li>
                                <li><a href="http://www.forest.go.kr" target="_blank" title="새창으로 산림청 바로가기">산림청</a></li>
                                <li><a href="http://www.motie.go.kr" target="_blank" title="새창으로 산업통상자원부 바로가기">산업통상자원부</a></li>
                                <li><a href="http://www.kats.go.kr" target="_blank" title="새창으로 산업통상자원부 국가기술표준원 바로가기">산업통상자원부 국가기술표준원</a></li>
                                <li><a href="http://www.seoul.go.kr" target="_blank" title="새창으로 서울특별시 바로가기">서울특별시</a></li>
                                <li><a href="http://www.mfds.go.kr/index.jsp" target="_blank" title="새창으로 식품의약품안전처 바로가기">식품의약품안전처</a></li>
                                <li><a href="http://www.crefia.or.kr/" target="_blank" title="새창으로 여신금융협회 바로가기">여신금융협회</a></li>
                                <li><a href="http://www.tourinfo.or.kr/" target="_blank" title="새창으로 여행정보센터 바로가기">여행정보센터</a></li>
                                <li><a href="http://www.mofat.go.kr/main/index.jsp" target="_blank" title="새창으로 외교부 바로가기">외교부</a></li>
                                <li><a href="http://www.e-gen.or.kr/" target="_blank" title="새창으로 응급의료정보센터 바로가기">응급의료정보센터</a></li>
                                <li><a href="http://www.carten.kr" target="_blank" title="새창으로 자동차10년타기시민연합 바로가기">자동차10년타기시민연합</a></li>
                                <li><a href="http://www.kfb.or.kr/" target="_blank" title="새창으로 전국은행연합회 바로가기">전국은행연합회</a></li>
                                <li><a href="http://www.gtsa.go.kr" target="_blank" title="새창으로 전자문서진본확인센터 바로가기">전자문서진본확인센터</a></li>
                                <li><a href="http://www.safetykorea.kr/" target="_blank" title="새창으로 제품안전정보센터 바로가기">제품안전정보센터</a></li>
                                <li><a href="http://central.childcare.go.kr" target="_blank" title="새창으로 중앙육아종합지원센터 바로가기">중앙육아종합지원센터</a></li>
                                <li><a href="https://www.macco.or.kr/ko/main.action" target="_blank" title="새창으로 직접판매공제조합 바로가기">직접판매공제조합</a></li>
                                <li><a href="http://www.cdc.go.kr/" target="_blank" title="새창으로 질병관리본부 바로가기">질병관리본부</a></li>
                                <li><a href="http://www.ihaccp.or.kr" target="_blank" title="새창으로 축산물안전관리인증원 바로가기">축산물안전관리인증원</a></li>
                                <li><a href="http://www.ekape.or.kr/" target="_blank" title="새창으로 축산물품질평가원 바로가기">축산물품질평가원</a></li>
                                <li><a href="http://www.kcdrc.kr" target="_blank" title="새창으로 콘텐츠분쟁조정위원회 바로가기">콘텐츠분쟁조정위원회</a></li>
                                <li><a href="http://www.kipo.go.kr" target="_blank" title="새창으로 특허청 바로가기">특허청</a></li>
                                <li><a href="http://www.hfood.or.kr" target="_blank" title="새창으로 한국건강기능식품협회 바로가기">한국건강기능식품협회</a></li>
                                <li><a href="http://kto.visitkorea.or.kr/kor.kto" target="_blank" title="새창으로 한국관광공사 바로가기">한국관광공사</a></li>
                                <li><a href="http://www.at.or.kr" target="_blank" title="새창으로 한국농수산식품유통공사 바로가기">한국농수산식품유통공사</a></li>
                                <li><a href="http://www.hrdkorea.or.kr" target="_blank" title="새창으로 한국산업인력공단 바로가기">한국산업인력공단</a></li>
                                <li><a href="http://www.knoc.co.kr" target="_blank" title="새창으로 한국석유공사 바로가기">한국석유공사</a></li>
                                <li><a href="http://www.cuk.or.kr" target="_blank" title="새창으로 한국소비자연맹 바로가기">한국소비자연맹</a></li>
                                <li><a href="http://www.kca.go.kr" target="_blank" title="새창으로 한국소비자원 바로가기">한국소비자원</a></li>
                                <li><a href="http://www.koelsa.or.kr" target="_blank" title="새창으로 한국승강기안전공단 바로가기">한국승강기안전공단</a></li>
                                <li><a href="http://www.kemco.or.kr" target="_blank" title="새창으로 한국에너지공단 바로가기">한국에너지공단</a></li>
                                <li><a href="http://www.jubuclub.or.kr/index.php" target="_blank" title="새창으로 한국여성소비자연합 바로가기">한국여성소비자연합</a></li>
                                <li><a href="http://www.koreadia.or.kr" target="_blank" title="새창으로 한국유가공협회 바로가기">한국유가공협회</a></li>
                                <li><a href="http://www.kosaworld.org" target="_blank" title="새창으로 한국유학협회 바로가기">한국유학협회</a></li>
                                <li><a href="http://www.k-medi.or.kr/Index.do" target="_blank" title="새창으로 한국의료분쟁조정중재원 바로가기">한국의료분쟁조정중재원</a></li>
                                <li><a href="http://www.kisa.or.kr" target="_blank" title="새창으로 한국인터넷진흥원 바로가기">한국인터넷진흥원</a></li>
                                <li><a href="http://www.kama.or.kr" target="_blank" title="새창으로 한국자동차산업협회 바로가기">한국자동차산업협회</a></li>
                                <li><a href="http://www.kesco.or.kr" target="_blank" title="새창으로 한국전기안전공사 바로가기">한국전기안전공사</a></li>
                                <li><a href="http://www.kepco.co.kr" target="_blank" title="새창으로 한국전력공사 바로가기">한국전력공사</a></li>
                                <li><a href="http://www.gokea.org" target="_blank" title="새창으로 한국전자정보통신산업진흥회 바로가기">한국전자정보통신산업진흥회</a></li>
                                <li><a href="http://www.hf.go.kr" target="_blank" title="새창으로 한국주택금융공사 바로가기">한국주택금융공사</a></li>
                                <li><a href="http://www.kdhc.co.kr" target="_blank" title="새창으로 한국지역난방공사 바로가기">한국지역난방공사</a></li>
                                <li><a href="http://www.krivet.re.kr" target="_blank" title="새창으로 한국직업능력개발원 바로가기">한국직업능력개발원</a></li>
                                <li><a href="http://www.kdsa.or.kr" target="_blank" title="새창으로 한국직접판매협회 바로가기">한국직접판매협회</a></li>
                                <li><a href="http://www.lh.or.kr" target="_blank" title="새창으로 한국토지주택공사 바로가기">한국토지주택공사</a></li>
                                <li><a href="http://www.mlmunion.or.kr" target="_blank" title="새창으로 한국특수판매공제조합 바로가기">한국특수판매공제조합</a></li>
                                <li><a href="http://www.kmi.re.kr" target="_blank" title="새창으로 한국해양수산개발원 바로가기">한국해양수산개발원</a></li>
                                <li><a href="http://www.keco.or.kr" target="_blank" title="새창으로 한국환경공단 바로가기">한국환경공단</a></li>
                                <li><a href="http://www.keiti.re.kr" target="_blank" title="새창으로 한국환경산업기술원 바로가기">한국환경산업기술원</a></li>
                                <li><a href="http://www.mof.go.kr" target="_blank" title="새창으로 해양수산부 바로가기">해양수산부</a></li>
                                <li><a href="http://www.mois.go.kr" target="_blank" title="새창으로 행정안전부 바로가기">행정안전부</a></li>
                                <li><a href="http://www.me.go.kr" target="_blank" title="새창으로 환경부 바로가기">환경부</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- E : .related_area -->
                </div>
                <button type="button" class="topGo">상단으로 이동</button>
            </footer>
        </div>
        <!-- E : #wrap -->
        <!-- S : #sitemapModal -->
        <div class="remodal sitemap_wrap" id="sitemapModal" data-remodal-id="sitemapModal" >
            <div class="sitemap_header">
                <strong>MENU</strong>
                <button data-remodal-action="cancel" class="sitemap_close">닫기</button>
            </div>
            <div class="sitemap_body">
                <div class="sitemap_area">
                    




	<ul class='gnbDp-1'>
		<li class='gnbDp-1-1'><a href='/consumer/subIndex/46.do' title='서비스안내 ' data-url='/consumer/subIndex/46.do'  data-seed='consumer_01000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >서비스안내</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-1'><a href='/consumer/subIndex/46.do' title='열린소비자포털이란?' data-url='/consumer/subIndex/46.do'  data-seed='consumer_01010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >열린소비자포털이란?</a>
			</li>
			<li class='gnbDp-2-2'><a href='/consumer/subIndex/47.do' title='이용안내' data-url='/consumer/subIndex/47.do'  data-seed='consumer_01020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >이용안내</a>
			</li>
			<li class='gnbDp-2-3'><a href='/consumer/subIndex/51.do' title='상담피해구제 안내 ' data-url='/consumer/subIndex/51.do'  data-seed='consumer_01030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담피해구제 안내</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-1'><a href='/consumer/subIndex/51.do' title='소비자 상담 기관' data-url='/consumer/subIndex/51.do'  data-seed='consumer_01030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자 상담 기관</a>
				</li>
				<li class='gnbDp-3-2'><a href='/consumer/subIndex/52.do' title='피해구제절차' data-url='/consumer/subIndex/52.do'  data-seed='consumer_01030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해구제절차</a>
				</li>
				<li class='gnbDp-3-3'><a href='/consumer/subIndex/53.do' title='분쟁조정안내' data-url='/consumer/subIndex/53.do'  data-seed='consumer_01030300000000000000' data-auth='N,Y,Y,Y,Y,Y' >분쟁조정안내</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-4'><a href='/consumer/subIndex/54.do' title='제도안내 ' data-url='/consumer/subIndex/54.do'  data-seed='consumer_01040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >제도안내</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-4'><a href='/consumer/subIndex/54.do' title='상담 및 피해구제 신청' data-url='/consumer/subIndex/54.do'  data-seed='consumer_01040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담 및 피해구제 신청</a>
				</li>
				<li class='gnbDp-3-5'><a href='/consumer/subIndex/55.do' title='안전정보 제공' data-url='/consumer/subIndex/55.do'  data-seed='consumer_01040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보 제공</a>
				</li>
				<li class='gnbDp-3-6'><a href='/consumer/subIndex/733.do' title='소비자중심경영(CCM) 인증' data-url='/consumer/subIndex/733.do'  data-seed='consumer_01040400000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자중심경영(CCM) 인증</a>
				</li>
				<li class='gnbDp-3-7'><a href='/consumer/subIndex/56.do' title='행복드림표지제' data-url='/consumer/subIndex/56.do'  data-seed='consumer_01040300000000000000' data-auth='N,Y,Y,Y,Y,Y' >행복드림표지제</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-5'><a href='/user/ftc/consumer/insttguidance/50/selectInsttGuidanceList.do' title='참여기관안내 ' data-url='/user/ftc/consumer/insttguidance/50/selectInsttGuidanceList.do'  data-seed='consumer_01050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >참여기관안내</a>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-2'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='상품안전정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품안전정보</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-6'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='상품정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02080000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-8'><a href='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01' title='물품정보 ' data-url='/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do?tabType=01'  data-seed='consumer_02080500000000000000' data-auth='N,Y,Y,Y,Y,Y' >물품정보</a>
				</li>
				<li class='gnbDp-3-9'><a href='/user/ftc/consumer/goodsinfo/620/selectGoodsInfoList.do?tabType=02' title='금융상품정보 ' data-url='/user/ftc/consumer/goodsinfo/620/selectGoodsInfoList.do?tabType=02'  data-seed='consumer_02080600000000000000' data-auth='N,Y,Y,Y,Y,Y' >금융상품정보</a>
				</li>
				<li class='gnbDp-3-10'><a href='/user/ftc/consumer/goodsinfo/706/selectGoodsInfoList.do?tabType=03' title='의료기관정보 ' data-url='/user/ftc/consumer/goodsinfo/706/selectGoodsInfoList.do?tabType=03'  data-seed='consumer_02080300000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기관정보</a>
				</li>
				<li class='gnbDp-3-11'><a href='/user/ftc/consumer/goodsinfo/707/selectGoodsInfoList.do?tabType=04' title='여행사 보험가입정보 ' data-url='/user/ftc/consumer/goodsinfo/707/selectGoodsInfoList.do?tabType=04'  data-seed='consumer_02080400000000000000' data-auth='N,Y,Y,Y,Y,Y' >여행사 보험가입정보</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-7'><a href='/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do' title='상품이력제 조회 ' data-url='/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do'  data-seed='consumer_02020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품이력제 조회</a>
			</li>
			<li class='gnbDp-2-8'><a href='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do' title='안전정보 ' data-url='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do'  data-seed='consumer_02030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-12'><a href='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do' title='위해정보 처리 속보 ' data-url='/user/ftc/consumer/cnsmrBBS/730/selectInfoINJRYList.do'  data-seed='consumer_02030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >위해정보 처리 속보</a>
				</li>
				<li class='gnbDp-3-13'><a href='/user/bbs/consumer/261/731/bbsDataList.do' title='안전정보 ' data-url='/user/bbs/consumer/261/731/bbsDataList.do'  data-seed='consumer_02030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >안전정보</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-9'><a href='/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do' title='국내리콜 ' data-url='/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do'  data-seed='consumer_02040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >국내리콜</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-14'><a href='/user/ftc/consumer/recallInfo/621/selectRecallInfoInternalList.do?searchCondition1=0101' title='공산품 ' data-url='/user/ftc/consumer/recallInfo/621/selectRecallInfoInternalList.do?searchCondition1=0101'  data-seed='consumer_02040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >공산품</a>
				</li>
				<li class='gnbDp-3-15'><a href='/user/ftc/consumer/recallInfo/622/selectRecallInfoInternalList.do?searchCondition1=0201' title='식품 ' data-url='/user/ftc/consumer/recallInfo/622/selectRecallInfoInternalList.do?searchCondition1=0201'  data-seed='consumer_02040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >식품</a>
				</li>
				<li class='gnbDp-3-16'><a href='/user/ftc/consumer/recallInfo/623/selectRecallInfoInternalList.do?searchCondition1=0203' title='축산물 ' data-url='/user/ftc/consumer/recallInfo/623/selectRecallInfoInternalList.do?searchCondition1=0203'  data-seed='consumer_02040300000000000000' data-auth='N,Y,Y,Y,Y,Y' >축산물</a>
				</li>
				<li class='gnbDp-3-17'><a href='/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?searchCondition1=0204' title='의약품 ' data-url='/user/ftc/consumer/recallInfo/624/selectRecallInfoInternalList.do?searchCondition1=0204'  data-seed='consumer_02040400000000000000' data-auth='N,Y,Y,Y,Y,Y' >의약품</a>
				</li>
				<li class='gnbDp-3-18'><a href='/user/ftc/consumer/recallInfo/625/selectRecallInfoInternalList.do?searchCondition1=0205' title='의약외품 ' data-url='/user/ftc/consumer/recallInfo/625/selectRecallInfoInternalList.do?searchCondition1=0205'  data-seed='consumer_02040500000000000000' data-auth='N,Y,Y,Y,Y,Y' >의약외품</a>
				</li>
				<li class='gnbDp-3-19'><a href='/user/ftc/consumer/recallInfo/626/selectRecallInfoInternalList.do?searchCondition1=0207' title='의료기기 ' data-url='/user/ftc/consumer/recallInfo/626/selectRecallInfoInternalList.do?searchCondition1=0207'  data-seed='consumer_02040600000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기기</a>
				</li>
				<li class='gnbDp-3-20'><a href='/user/ftc/consumer/recallInfo/627/selectRecallInfoInternalList.do?searchCondition1=0206' title='화장품 ' data-url='/user/ftc/consumer/recallInfo/627/selectRecallInfoInternalList.do?searchCondition1=0206'  data-seed='consumer_02040700000000000000' data-auth='N,Y,Y,Y,Y,Y' >화장품</a>
				</li>
				<li class='gnbDp-3-21'><a href='/user/ftc/consumer/recallInfo/628/selectRecallInfoInternalList.do?searchCondition1=0401' title='생활화학제품 ' data-url='/user/ftc/consumer/recallInfo/628/selectRecallInfoInternalList.do?searchCondition1=0401'  data-seed='consumer_02040800000000000000' data-auth='N,Y,Y,Y,Y,Y' >생활화학제품</a>
				</li>
				<li class='gnbDp-3-22'><a href='/user/ftc/consumer/recallInfo/629/selectRecallInfoInternalList.do?searchCondition1=0301' title='자동차 ' data-url='/user/ftc/consumer/recallInfo/629/selectRecallInfoInternalList.do?searchCondition1=0301'  data-seed='consumer_02040900000000000000' data-auth='N,Y,Y,Y,Y,Y' >자동차</a>
				</li>
				<li class='gnbDp-3-23'><a href='/user/ftc/consumer/recallInfo/630/selectRecallInfoInternalList.do?searchCondition1=0403' title='먹는물 ' data-url='/user/ftc/consumer/recallInfo/630/selectRecallInfoInternalList.do?searchCondition1=0403'  data-seed='consumer_02041000000000000000' data-auth='N,Y,Y,Y,Y,Y' >먹는물</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-10'><a href='/user/ftc/consumer/recallInfo/69/selectRecallInfoForeignList.do' title='해외리콜 ' data-url='/user/ftc/consumer/recallInfo/69/selectRecallInfoForeignList.do'  data-seed='consumer_02050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >해외리콜</a>
			</li>
			<li class='gnbDp-2-11'><a href='/user/ftc/consumer/crtfc/70/selectCrtfcInfoList.do?crtfcCdS=' title='인증정보 ' data-url='/user/ftc/consumer/crtfc/70/selectCrtfcInfoList.do?crtfcCdS='  data-seed='consumer_02060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >인증정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-24'><a href='/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do?crtfcCdS=01' title='환경마크인증 ' data-url='/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do?crtfcCdS=01'  data-seed='consumer_02060100000000000000' data-auth='N,Y,Y,Y,Y,Y' >환경마크인증</a>
				</li>
				<li class='gnbDp-3-25'><a href='/user/ftc/consumer/crtfc/72/selectCrtfcInfoList.do?crtfcCdS=02' title='환경성적표지인증 ' data-url='/user/ftc/consumer/crtfc/72/selectCrtfcInfoList.do?crtfcCdS=02'  data-seed='consumer_02060200000000000000' data-auth='N,Y,Y,Y,Y,Y' >환경성적표지인증</a>
				</li>
				<li class='gnbDp-3-26'><a href='/user/ftc/consumer/crtfc/73/selectCrtfcInfoList.do?crtfcCdS=03' title='KC인증 ' data-url='/user/ftc/consumer/crtfc/73/selectCrtfcInfoList.do?crtfcCdS=03'  data-seed='consumer_02060300000000000000' data-auth='N,Y,Y,Y,Y,Y' >KC인증</a>
				</li>
				<li class='gnbDp-3-27'><a href='/user/ftc/consumer/crtfc/74/selectCrtfcInfoList.do?crtfcCdS=04' title='방송통신기자재 적합성평가 ' data-url='/user/ftc/consumer/crtfc/74/selectCrtfcInfoList.do?crtfcCdS=04'  data-seed='consumer_02060400000000000000' data-auth='N,Y,Y,Y,Y,Y' >방송통신기자재 적합성평가</a>
				</li>
				<li class='gnbDp-3-28'><a href='/user/ftc/consumer/crtfc/75/selectCrtfcInfoList.do?crtfcCdS=05' title='의료기관인증 ' data-url='/user/ftc/consumer/crtfc/75/selectCrtfcInfoList.do?crtfcCdS=05'  data-seed='consumer_02060500000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료기관인증</a>
				</li>
				<li class='gnbDp-3-29'><a href='/user/ftc/consumer/hpsgnsyscrtfc/77/selectHpsgnsysCrtfcInfoList.do' title='CCM인증 ' data-url='/user/ftc/consumer/hpsgnsyscrtfc/77/selectHpsgnsysCrtfcInfoList.do'  data-seed='consumer_02060700000000000000' data-auth='N,Y,Y,Y,Y,Y' >CCM인증</a>
				</li>
				<li class='gnbDp-3-30'><a href='/user/ftc/consumer/hpsgnsys/720/selectHpsgnCrtfcList.do' title='행복드림표지제 ' data-url='/user/ftc/consumer/hpsgnsys/720/selectHpsgnCrtfcList.do'  data-seed='consumer_02060800000000000000' data-auth='N,Y,Y,Y,Y,Y' >행복드림표지제</a>
				</li>
			</ul>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-3'><a href='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do' title='소비자정보 ' data-url='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do'  data-seed='consumer_03000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자정보</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-12'><a href='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do' title='상품비교정보 ' data-url='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do'  data-seed='consumer_03010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상품비교정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-31'><a href='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do' title='비교공감 ' data-url='/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do'  data-seed='consumer_03010100000000000000' data-auth='N,Y,Y,Y,Y,Y' >비교공감</a>
				</li>
				<li class='gnbDp-3-32'><a href='/user/ftc/consumer/cnsmrBBS/80/selectInfoCmprList.do' title='일반비교정보 ' data-url='/user/ftc/consumer/cnsmrBBS/80/selectInfoCmprList.do'  data-seed='consumer_03010200000000000000' data-auth='N,Y,Y,Y,Y,Y' >일반비교정보</a>
				</li>
				<li class='gnbDp-3-33'><a href='/user/ftc/consumer/cnsmrTokBBS/81/selectCnsmrTokBBSList.do' title='소비자톡톡 ' data-url='/user/ftc/consumer/cnsmrTokBBS/81/selectCnsmrTokBBSList.do'  data-seed='consumer_03010300000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자톡톡</a>
				</li>
				<li class='gnbDp-3-34'><a href='/user/ftc/consumer/smsSubscription/82/smsSubscription.do' title='문자알림 서비스 ' data-url='/user/ftc/consumer/smsSubscription/82/smsSubscription.do'  data-seed='consumer_03010400000000000000' data-auth='N,Y,Y,Y,Y,Y' >문자알림 서비스</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-13'><a href='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do' title='소비자교육 ' data-url='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do'  data-seed='consumer_03020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자교육</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-35'><a href='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do' title='교육정보 ' data-url='/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do'  data-seed='consumer_03020100000000000000' data-auth='N,Y,Y,Y,Y,Y' >교육정보</a>
				</li>
				<li class='gnbDp-3-36'><a href='/user/ftc/consumer/cnsmrEdc/85/selectCnsmrEdcList.do' title='교육일정 ' data-url='/user/ftc/consumer/cnsmrEdc/85/selectCnsmrEdcList.do'  data-seed='consumer_03020200000000000000' data-auth='Y,Y,Y,Y,Y,Y' >교육일정</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-14'><a href='/consumer/subIndex/327.do' title='가격정보 ' data-url='/consumer/subIndex/327.do'  data-seed='consumer_03030000000000000000' data-auth='N,Y,Y,Y,Y,Y' >가격정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-37'><a href='/consumer/subIndex/327.do' title='참가격' data-url='/consumer/subIndex/327.do'  data-seed='consumer_03031100000000000000' data-auth='N,Y,Y,Y,Y,Y' >참가격</a>
				</li>
				<li class='gnbDp-3-38 mobileMenuHidden'><a href='/consumer/subIndex/328.do' title='주간가격정보' data-url='/consumer/subIndex/328.do'  data-seed='consumer_03031200000000000000' data-auth='N,Y,Y,Y,Y,Y' >주간가격정보</a>
				</li>
				<li class='gnbDp-3-39'><a href='/user/ftc/consumer/priceInfo/87/selectPublicChrgeInfoUserList.do' title='공공요금 ' data-url='/user/ftc/consumer/priceInfo/87/selectPublicChrgeInfoUserList.do'  data-seed='consumer_03030100000000000000' data-auth='N,Y,Y,Y,Y,Y' >공공요금</a>
				</li>
				<li class='gnbDp-3-40'><a href='/user/ftc/consumer/priceInfo/88/selectIndvdlSvrPriceUserList.do' title='개인서비스요금 ' data-url='/user/ftc/consumer/priceInfo/88/selectIndvdlSvrPriceUserList.do'  data-seed='consumer_03030200000000000000' data-auth='N,Y,Y,Y,Y,Y' >개인서비스요금</a>
				</li>
				<li class='gnbDp-3-41'><a href='/user/ftc/consumer/priceInfo/89/selectEatOutPriceUserList.do' title='외식비 ' data-url='/user/ftc/consumer/priceInfo/89/selectEatOutPriceUserList.do'  data-seed='consumer_03030300000000000000' data-auth='N,Y,Y,Y,Y,Y' >외식비</a>
				</li>
				<li class='gnbDp-3-42'><a href='/user/ftc/consumer/priceInfo/90/selectPriceInfoEdutInstList.do' title='학원교습소비 ' data-url='/user/ftc/consumer/priceInfo/90/selectPriceInfoEdutInstList.do'  data-seed='consumer_03030400000000000000' data-auth='N,Y,Y,Y,Y,Y' >학원교습소비</a>
				</li>
				<li class='gnbDp-3-43'><a href='/user/ftc/consumer/priceInfo/91/selectPriceInfoNpayDamtList.do' title='비급여진료비 ' data-url='/user/ftc/consumer/priceInfo/91/selectPriceInfoNpayDamtList.do'  data-seed='consumer_03030500000000000000' data-auth='N,Y,Y,Y,Y,Y' >비급여진료비</a>
				</li>
				<li class='gnbDp-3-44'><a href='/user/ftc/consumer/priceInfo/92/selectPriceInfoGnrlMdcinList.do' title='일반의약품비 ' data-url='/user/ftc/consumer/priceInfo/92/selectPriceInfoGnrlMdcinList.do'  data-seed='consumer_03030600000000000000' data-auth='N,Y,Y,Y,Y,Y' >일반의약품비</a>
				</li>
				<li class='gnbDp-3-45'><a href='/user/ftc/consumer/priceInfo/93/selectPriceInfoOilList.do' title='유가정보 ' data-url='/user/ftc/consumer/priceInfo/93/selectPriceInfoOilList.do'  data-seed='consumer_03030700000000000000' data-auth='N,Y,Y,Y,Y,Y' >유가정보</a>
				</li>
				<li class='gnbDp-3-46'><a href='/user/ftc/consumer/priceInfo/94/selectPriceInfoFoodList.do' title='농산물도소매가 ' data-url='/user/ftc/consumer/priceInfo/94/selectPriceInfoFoodList.do'  data-seed='consumer_03030800000000000000' data-auth='N,Y,Y,Y,Y,Y' >농산물도소매가</a>
				</li>
				<li class='gnbDp-3-47'><a href='/user/ftc/consumer/priceInfo/95/selectPriceInfoAptList.do' title='아파트실거래가 ' data-url='/user/ftc/consumer/priceInfo/95/selectPriceInfoAptList.do'  data-seed='consumer_03030900000000000000' data-auth='N,Y,Y,Y,Y,Y' >아파트실거래가</a>
				</li>
				<li class='gnbDp-3-48'><a href='/user/ftc/consumer/priceInfo/96/selectPriceInfoOthbcReviewList.do' title='착한가격업소 ' data-url='/user/ftc/consumer/priceInfo/96/selectPriceInfoOthbcReviewList.do'  data-seed='consumer_03031000000000000000' data-auth='N,Y,Y,Y,Y,Y' >착한가격업소</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-15'><a href='/consumer/subIndex/97.do' title='금융/보험정보' data-url='/consumer/subIndex/97.do'  data-seed='consumer_03040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >금융/보험정보</a>
			</li>
			<li class='gnbDp-2-16'><a href='/consumer/subIndex/98.do' title='의료정보' data-url='/consumer/subIndex/98.do'  data-seed='consumer_03050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >의료정보</a>
			</li>
			<li class='gnbDp-2-17'><a href='/consumer/subIndex/101.do' title='연계기관 정보 ' data-url='/consumer/subIndex/101.do'  data-seed='consumer_03070000000000000000' data-auth='N,Y,Y,Y,Y,Y' >연계기관 정보</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-49'><a href='/consumer/subIndex/101.do' title='소비자정보 연계기관' data-url='/consumer/subIndex/101.do'  data-seed='consumer_03070100000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자정보 연계기관</a>
				</li>
				<li class='gnbDp-3-50'><a href='/consumer/subIndex/102.do' title='교육 연계기관' data-url='/consumer/subIndex/102.do'  data-seed='consumer_03070200000000000000' data-auth='N,Y,Y,Y,Y,Y' >교육 연계기관</a>
				</li>
			</ul>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-4'><a href='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do' title='상담 및 피해/분쟁 ' data-url='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do'  data-seed='consumer_04000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담 및 피해/분쟁</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-18'><a href='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do' title='피해예방 ' data-url='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do'  data-seed='consumer_04010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해예방</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-51'><a href='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do' title='자가진단 ' data-url='/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do'  data-seed='consumer_04010100000000000000' data-auth='N,Y,Y,Y,Y,Y' >자가진단</a>
				</li>
				<li class='gnbDp-3-52'><a href='/user/ftc/consumer/cnsmrBBS/110/selectInfoCDMGList.do' title='피해예방주의보 ' data-url='/user/ftc/consumer/cnsmrBBS/110/selectInfoCDMGList.do'  data-seed='consumer_04010200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해예방주의보</a>
				</li>
				<li class='gnbDp-3-53'><a href='/user/ftc/consumer/cnsmrBBS/111/selectInfoCSLCList.do' title='상담속보 ' data-url='/user/ftc/consumer/cnsmrBBS/111/selectInfoCSLCList.do'  data-seed='consumer_04010300000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담속보</a>
				</li>
				<li class='gnbDp-3-54'><a href='/user/ftc/consumer/cnsmrBBS/112/selectInfoCMTTList.do' title='민원다발쇼핑몰 ' data-url='/user/ftc/consumer/cnsmrBBS/112/selectInfoCMTTList.do'  data-seed='consumer_04010400000000000000' data-auth='N,Y,Y,Y,Y,Y' >민원다발쇼핑몰</a>
				</li>
				<li class='gnbDp-3-55'><a href='/user/ftc/consumer/cnsmrBBS/113/selectInfoTRUBLList.do' title='소비자분쟁해결기준 ' data-url='/user/ftc/consumer/cnsmrBBS/113/selectInfoTRUBLList.do'  data-seed='consumer_04010500000000000000' data-auth='N,Y,Y,Y,Y,Y' >소비자분쟁해결기준</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-19'><a href='/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do' title='상담/피해구제 신청 ' data-url='/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do'  data-seed='consumer_04070000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담/피해구제 신청</a>
			</li>
			<li class='gnbDp-2-20'><a href='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do' title='상담/피해구제 진행현황 ' data-url='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do'  data-seed='consumer_04040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담/피해구제 진행현황</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-56'><a href='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do' title='온라인상담 현황 ' data-url='/user/ftc/consumer/dmrecnslt/316/selectDmreCnsltList.do'  data-seed='consumer_04040100000000000000' data-auth='N,Y,Y,Y,Y,Y' >온라인상담 현황</a>
				</li>
				<li class='gnbDp-3-57'><a href='/user/ftc/consumer/dmgerlif/317/selectDmgeRlifList.do' title='피해구제/분쟁조정 현황 ' data-url='/user/ftc/consumer/dmgerlif/317/selectDmgeRlifList.do'  data-seed='consumer_04040200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해구제/분쟁조정 현황</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-21'><a href='/user/ftc/consumer/dmgerlif/301/selectOnlineVisitResveForm.do' title='온라인 방문예약 ' data-url='/user/ftc/consumer/dmgerlif/301/selectOnlineVisitResveForm.do'  data-seed='consumer_04080000000000000000' data-auth='N,Y,Y,Y,Y,Y' >온라인 방문예약</a>
			</li>
			<li class='gnbDp-2-22'><a href='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do' title='피해/분쟁 관련사례 ' data-url='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do'  data-seed='consumer_04050000000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해/분쟁 관련사례</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-58'><a href='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do' title='상담사례 ' data-url='/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do'  data-seed='consumer_04050100000000000000' data-auth='N,Y,Y,Y,Y,Y' >상담사례</a>
				</li>
				<li class='gnbDp-3-59'><a href='/user/ftc/consumer/dmgerlifcase/115/selectDmgeRlifCaseList.do' title='피해구제 사례 ' data-url='/user/ftc/consumer/dmgerlifcase/115/selectDmgeRlifCaseList.do'  data-seed='consumer_04050200000000000000' data-auth='N,Y,Y,Y,Y,Y' >피해구제 사례</a>
				</li>
				<li class='gnbDp-3-60'><a href='/user/ftc/consumer/trublmdatcase/116/selectTrublMdatCaseList.do' title='분쟁조정 사례 ' data-url='/user/ftc/consumer/trublmdatcase/116/selectTrublMdatCaseList.do'  data-seed='consumer_04050300000000000000' data-auth='N,Y,Y,Y,Y,Y' >분쟁조정 사례</a>
				</li>
				<li class='gnbDp-3-61'><a href='/user/bbs/consumer/120/461/bbsDataList.do' title='스토리로 보는 사례 ' data-url='/user/bbs/consumer/120/461/bbsDataList.do'  data-seed='consumer_04050400000000000000' data-auth='N,Y,Y,Y,Y,Y' >스토리로 보는 사례</a>
				</li>
				<li class='gnbDp-3-62'><a href='/user/bbs/consumer/121/462/bbsDataList.do' title='웹툰으로 보는 사례 ' data-url='/user/bbs/consumer/121/462/bbsDataList.do'  data-seed='consumer_04050500000000000000' data-auth='N,Y,Y,Y,Y,Y' >웹툰으로 보는 사례</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-23'><a href='/user/ftc/consumer/relatelaword/108/selectRelateLawordList.do' title='관련 법령 ' data-url='/user/ftc/consumer/relatelaword/108/selectRelateLawordList.do'  data-seed='consumer_04060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >관련 법령</a>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-5'><a href='/user/bbs/consumer/1/117/bbsDataList.do' title='알림소식 ' data-url='/user/bbs/consumer/1/117/bbsDataList.do'  data-seed='consumer_05000000000000000000' data-auth='N,Y,Y,Y,Y,Y' >알림소식</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-24'><a href='/user/bbs/consumer/1/117/bbsDataList.do' title='공지사항 ' data-url='/user/bbs/consumer/1/117/bbsDataList.do'  data-seed='consumer_05010000000000000000' data-auth='N,Y,Y,Y,Y,Y' >공지사항</a>
			</li>
			<li class='gnbDp-2-25'><a href='/user/bbs/consumer/100/119/bbsDataList.do' title='자료실 ' data-url='/user/bbs/consumer/100/119/bbsDataList.do'  data-seed='consumer_05020000000000000000' data-auth='N,Y,Y,Y,Y,Y' >자료실</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-63'><a href='/user/bbs/consumer/100/119/bbsDataList.do' title='일반자료실 ' data-url='/user/bbs/consumer/100/119/bbsDataList.do'  data-seed='consumer_05020100000000000000' data-auth='N,Y,Y,Y,Y,Y' >일반자료실</a>
				</li>
				<li class='gnbDp-3-64'><a href='/user/ftc/consumer/openApiSvcUser/120/selectOpenApiSvcList.do' title='Open API ' data-url='/user/ftc/consumer/openApiSvcUser/120/selectOpenApiSvcList.do'  data-seed='consumer_05020200000000000000' data-auth='N,Y,Y,Y,Y,Y' >Open API</a>
				</li>
				<li class='gnbDp-3-65'><a href='/user/ftc/consumer/rssInfoMainCntnts/631/selectCntntsForRSS.do' title='RSS ' data-url='/user/ftc/consumer/rssInfoMainCntnts/631/selectCntntsForRSS.do'  data-seed='consumer_05020400000000000000' data-auth='N,Y,Y,Y,Y,Y' >RSS</a>
				</li>
				<li class='gnbDp-3-66'><a href='/consumer/subIndex/121.do' title='뷰어다운로드' data-url='/consumer/subIndex/121.do'  data-seed='consumer_05020300000000000000' data-auth='N,Y,Y,Y,Y,Y' >뷰어다운로드</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-26'><a href='/user/ftc/consumer/faqinqire/421/selectFaqInqireList.do' title='FAQ ' data-url='/user/ftc/consumer/faqinqire/421/selectFaqInqireList.do'  data-seed='consumer_05060000000000000000' data-auth='N,Y,Y,Y,Y,Y' >FAQ</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-67'><a href='/user/ftc/consumer/faqinqire/680/selectFaqInqireList.do' title='포털 FAQ ' data-url='/user/ftc/consumer/faqinqire/680/selectFaqInqireList.do'  data-seed='consumer_05060100000000000000' data-auth='N,Y,Y,Y,Y,Y' >포털 FAQ</a>
				</li>
				<li class='gnbDp-3-68'><a href='/user/ftc/consumer/faqinqire/681/selectInsttFaqInqireList.do?insttId=3' title='새마을금고 중앙회 FAQ ' data-url='/user/ftc/consumer/faqinqire/681/selectInsttFaqInqireList.do?insttId=3'  data-seed='consumer_05060200000000000000' data-auth='N,Y,Y,Y,Y,Y' >새마을금고 중앙회 FAQ</a>
				</li>
				<li class='gnbDp-3-69'><a href='/user/ftc/consumer/faqinqire/682/selectInsttFaqInqireList.do?insttId=17' title='특허청 FAQ ' data-url='/user/ftc/consumer/faqinqire/682/selectInsttFaqInqireList.do?insttId=17'  data-seed='consumer_05060300000000000000' data-auth='N,Y,Y,Y,Y,Y' >특허청 FAQ</a>
				</li>
				<li class='gnbDp-3-70'><a href='/user/ftc/consumer/faqinqire/683/selectInsttFaqInqireList.do?insttId=19' title='한국석유관리원 FAQ ' data-url='/user/ftc/consumer/faqinqire/683/selectInsttFaqInqireList.do?insttId=19'  data-seed='consumer_05060400000000000000' data-auth='N,Y,Y,Y,Y,Y' >한국석유관리원 FAQ</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-27'><a href='/user/bbs/consumer/122/463/bbsDataList.do' title='인포그래픽 ' data-url='/user/bbs/consumer/122/463/bbsDataList.do'  data-seed='consumer_05070000000000000000' data-auth='N,Y,Y,Y,Y,Y' >인포그래픽</a>
			</li>
			<li class='gnbDp-2-28'><a href='/user/bbs/consumer/140/123/bbsDataList.do' title='이벤트 ' data-url='/user/bbs/consumer/140/123/bbsDataList.do'  data-seed='consumer_05040000000000000000' data-auth='N,Y,Y,Y,Y,Y' >이벤트</a>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-6'><a href='/user/ftc/consumer/mypage/383/selectWidgList.do' title='마이페이지 ' data-url='/user/ftc/consumer/mypage/383/selectWidgList.do'  data-seed='consumer_15000000000000000000' data-auth='N,Y,N,Y,Y,N' >마이페이지</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-29'><a href='/user/ftc/consumer/mypage/383/selectWidgList.do' title='알림판 ' data-url='/user/ftc/consumer/mypage/383/selectWidgList.do'  data-seed='consumer_15010000000000000000' data-auth='N,Y,N,Y,Y,N' >알림판</a>
			</li>
			<li class='gnbDp-2-30'><a href='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do' title='나의 안전성향 ' data-url='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do'  data-seed='consumer_15030000000000000000' data-auth='N,Y,N,Y,Y,N' >나의 안전성향</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-71'><a href='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do' title='나의 안전성향 설정 ' data-url='/user/ftc/consumer/mypage/386/selectSafeInclnForm.do'  data-seed='consumer_15030100000000000000' data-auth='N,Y,N,Y,Y,N' >나의 안전성향 설정</a>
				</li>
				<li class='gnbDp-3-72'><a href='/user/ftc/consumer/mypage/387/selectSafeInclnView.do' title='나의 안전성향 조회 ' data-url='/user/ftc/consumer/mypage/387/selectSafeInclnView.do'  data-seed='consumer_15030200000000000000' data-auth='N,Y,N,Y,Y,N' >나의 안전성향 조회</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-31'><a href='/user/ftc/consumer/mypage/388/selectPushNtcnEstbsList.do' title='푸시알림설정 ' data-url='/user/ftc/consumer/mypage/388/selectPushNtcnEstbsList.do'  data-seed='consumer_15040000000000000000' data-auth='N,Y,N,Y,Y,N' >푸시알림설정</a>
			</li>
			<li class='gnbDp-2-32'><a href='/user/ftc/consumer/mypage/389/selectIndvdlMberInfo.do' title='회원정보수정 ' data-url='/user/ftc/consumer/mypage/389/selectIndvdlMberInfo.do'  data-seed='consumer_15050000000000000000' data-auth='N,Y,N,Y,Y,N' >회원정보수정</a>
			</li>
			<li class='gnbDp-2-33'><a href='/user/ftc/consumer/mypage/390/selectBsnmInqryList.do' title='사업자문의 ' data-url='/user/ftc/consumer/mypage/390/selectBsnmInqryList.do'  data-seed='consumer_15060000000000000000' data-auth='N,Y,N,Y,Y,N' >사업자문의</a>
			</li>
			<li class='gnbDp-2-34'><a href='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do' title='나의 관심상품 ' data-url='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do'  data-seed='consumer_15070000000000000000' data-auth='N,Y,N,Y,Y,N' >나의 관심상품</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-73'><a href='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do' title='나의 관심상품 ' data-url='/user/ftc/consumer/mypage/392/selectIntrstGoodsList.do'  data-seed='consumer_15070100000000000000' data-auth='N,Y,N,Y,Y,N' >나의 관심상품</a>
				</li>
				<li class='gnbDp-3-74'><a href='/user/ftc/consumer/mypage/394/selectIntrstGoodsStatList.do' title='나의 상품통계 ' data-url='/user/ftc/consumer/mypage/394/selectIntrstGoodsStatList.do'  data-seed='consumer_15070300000000000000' data-auth='N,Y,N,Y,Y,N' >나의 상품통계</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-35'><a href='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do' title='나의 사건조회 ' data-url='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do'  data-seed='consumer_15080000000000000000' data-auth='N,Y,N,Y,Y,N' >나의 사건조회</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-75'><a href='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do' title='온라인상담 현황 ' data-url='/user/ftc/consumer/mypage/396/selectDmreCnsltList.do'  data-seed='consumer_15080100000000000000' data-auth='N,Y,N,Y,Y,N' >온라인상담 현황</a>
				</li>
				<li class='gnbDp-3-76'><a href='/user/ftc/consumer/mypage/397/selectDmgeRlifList.do' title='피해구제/분쟁조정 현황 ' data-url='/user/ftc/consumer/mypage/397/selectDmgeRlifList.do'  data-seed='consumer_15080200000000000000' data-auth='N,Y,N,Y,Y,N' >피해구제/분쟁조정 현황</a>
				</li>
				<li class='gnbDp-3-77'><a href='/user/ftc/consumer/mypage/398/selectOnlineVisitResveList.do' title='온라인 방문예약현황 ' data-url='/user/ftc/consumer/mypage/398/selectOnlineVisitResveList.do'  data-seed='consumer_15080300000000000000' data-auth='N,Y,N,Y,Y,N' >온라인 방문예약현황</a>
				</li>
			</ul>
			</li>
		</ul>
		</li>
		<li class='gnbDp-1-7'><a href='/user/ftc/consumer/mypage/399/selectWidgList.do' title='마이페이지 ' data-url='/user/ftc/consumer/mypage/399/selectWidgList.do'  data-seed='consumer_16000000000000000000' data-auth='N,N,Y,N,Y,N' >마이페이지</a>
		<ul class='gnbDp-2'>
			<li class='gnbDp-2-36'><a href='/user/ftc/consumer/mypage/399/selectWidgList.do' title='알림판 ' data-url='/user/ftc/consumer/mypage/399/selectWidgList.do'  data-seed='consumer_16010000000000000000' data-auth='N,N,Y,N,Y,N' >알림판</a>
			</li>
			<li class='gnbDp-2-37'><a href='/user/ftc/consumer/mypage/401/selectPushNtcnEstbsList.do' title='푸시알림설정 ' data-url='/user/ftc/consumer/mypage/401/selectPushNtcnEstbsList.do'  data-seed='consumer_16030000000000000000' data-auth='N,N,Y,N,Y,N' >푸시알림설정</a>
			</li>
			<li class='gnbDp-2-38'><a href='/user/ftc/consumer/mypage/402/selectIndvdlMberInfo.do' title='회원정보수정 ' data-url='/user/ftc/consumer/mypage/402/selectIndvdlMberInfo.do'  data-seed='consumer_16040000000000000000' data-auth='N,N,Y,N,Y,N' >회원정보수정</a>
			</li>
			<li class='gnbDp-2-39'><a href='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520' title='우리기업 상품 ' data-url='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520'  data-seed='consumer_16050000000000000000' data-auth='N,N,Y,N,Y,N' >우리기업 상품</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-78'><a href='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520' title='행복드림표지제 안내 ' data-url='/user/extra/consumer/myPage/haphaphap/jsp/Page.do?siteMenuIdx=520'  data-seed='consumer_16050600000000000000' data-auth='N,N,Y,N,Y,N' >행복드림표지제 안내</a>
				</li>
				<li class='gnbDp-3-79'><a href='/user/ftc/consumer/mypage/406/selectHpsgnsysList.do' title='행복드림표지제 신청 ' data-url='/user/ftc/consumer/mypage/406/selectHpsgnsysList.do'  data-seed='consumer_16050300000000000000' data-auth='N,N,Y,N,Y,N' >행복드림표지제 신청</a>
				</li>
				<li class='gnbDp-3-80'><a href='/user/ftc/consumer/mypage/408/selectPartcptnBsnmSttusList.do' title='참여기업현황 ' data-url='/user/ftc/consumer/mypage/408/selectPartcptnBsnmSttusList.do'  data-seed='consumer_16050500000000000000' data-auth='N,N,Y,N,Y,N' >참여기업현황</a>
				</li>
			</ul>
			</li>
			<li class='gnbDp-2-40'><a href='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do' title='우리기업 활동 ' data-url='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do'  data-seed='consumer_16060000000000000000' data-auth='N,N,Y,N,Y,N' >우리기업 활동</a>
			<ul class='gnbDp-3'>
				<li class='gnbDp-3-81'><a href='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do' title='시스템관련 문의/답변 ' data-url='/user/ftc/consumer/mypage/410/selectSysRelateInqryAnswerList.do'  data-seed='consumer_16060100000000000000' data-auth='N,N,Y,N,Y,N' >시스템관련 문의/답변</a>
				</li>
				<li class='gnbDp-3-82'><a href='/user/ftc/consumer/mypage/411/selectCnsmrInqryAnswerList.do' title='소비자 문의/답변 ' data-url='/user/ftc/consumer/mypage/411/selectCnsmrInqryAnswerList.do'  data-seed='consumer_16060200000000000000' data-auth='N,N,Y,N,Y,N' >소비자 문의/답변</a>
				</li>
				<li class='gnbDp-3-83'><a href='/user/ftc/consumer/mypage/412/selectMmnyGoodsInsttProcessSttusList.do' title='자사상품 기관처리현황 ' data-url='/user/ftc/consumer/mypage/412/selectMmnyGoodsInsttProcessSttusList.do'  data-seed='consumer_16060300000000000000' data-auth='N,N,Y,N,Y,N' >자사상품 기관처리현황</a>
				</li>
			</ul>
				</li>
			</ul>
		</li>
	</ul>
                </div>
            </div>
        </div>
        <!-- E : #sitemapModal -->
        <!-- S : #totalSearch -->
        <div class="remodal total_modal_search_wrap" id="totalSearch" data-remodal-id="totalSearch" data-remodal-options="hashTracking:false;">
            <div class="total_modal_search_header">
            <strong class="hidden">SEARCH</strong>
          </div>
          <div class="total_modal_search_body">
            <form id="allTotSearch" action="/user/ftc/consumer/totsearch/441/selectTotSearch.do" method="post">
              <fieldset>
                <legend>통합검색</legend>
                <input type="text" class="input_modal_total_search" placeholder="검색어 입력" title="검색어" name="q" autocomplete="off" />
                <button type="submit" class="btn_modal_total_search">검색</button>
              </fieldset>
            <div>
<input type="hidden" name="CSRFToken" value="0c725199-f242-484d-890b-d651e9ced4e1" />
</div></form>
          </div>
        </div>
        <!-- E : #totalSearch -->
		<!-- S : #foreign -->
        <div class="remodal foreign_wrap" id="foreign" data-remodal-id="foreign" data-remodal-options="hashTracking:false;">
	        <div class="consumer_modal">
	            <div class="consumer_modal_header">
	                <h6>FOREIGN</h6>
	                <button data-remodal-action="close" class="consumer_modal_close" aria-label="Close"></button>
	            </div>
	            <div class="consumer_modal_body foreign_body liner">
	                <ul class="tabNavi" data-col="4">
	                    <li class="tabOn"><button type="button">ENGLISH</button></li>
	                    <li><button type="button">中國語</button></li>
	                    <li><button type="button">日本語</button></li>
	                    <li><button type="button">RUSSIAN</button></li>
	                </ul>
	                <div class="foreign">
	                  	<div class="box">
	                        <div class="on">
	                            <h4 class="ui_sub_h4_txt up_txt">Product safety information</h4>
	        					<div class="eyong_info_list type01">
	        						<ul>
	        							<li>You can view basic information, additional information, and operator information about products (goods/services). </li>
	        							<li>The recall status and certification status for the product are displayed as additional information.</li>
	        							<li>If you register the product as "My Item of Interest" (Confirm),  you can receive notifications with SMS service and Happy Dream app when the recall for the product is implemented in the future.</li>
	        						</ul>
	        					</div>
	        					<div class="tbl list gray ac up_txt">
	        						<table>
	        							<caption>This table shows the scope of information on product safety information.</caption>
	        							<colgroup>
	        								<col style="width:20%;">
	        								<col>
	        							</colgroup>
	        							<thead>
	        							<tr>
	        								<th scope="col">Product safety information</th>
	        								<th scope="col">Scope of information</th>
	        							</tr>
	        							</thead>
	        							<tbody>
	        							<tr>
	        								<td class="black"><a target="_top" href="/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do">Product Information<br>(Goods/service)</a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Product information: basic product information, additional information, operator information, etc.</li>
	        										<li>Linkage information: recall information and authentication information of the product</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							<tr>
	        								<td class="black"><a target="_top" href="/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do">Recall information</a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Item for recall: food / pharmaceuticals / medical devices / cosmetics / automotive / industrial products / livestock products / mineral water / recall overseas</li>
	        										<li>Information provided: information on the product to be recalled, reason for recall, consumer notice, recall method, etc.</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							<tr>
	        								<td class="black"><a target="_top" href="/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do">Authentication information</a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Environmental mark certification: provided by Korea Environmental Industry & Technology Institute</li>
	        										<li>Environmental mark: provided by Korea Environmental Industry & Technology Institute</li>
	        										<li>KC Certification: provided by National Technology Standards Agency</li>
	        										<li>Medical institution certification: provided by Korea Institute of Healthcare Accreditation</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							<tr>
	        								<td class="black"><a target="_top" href="/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do">Product traceability system </a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Livestock products traceability system: view beef, pork, imported beef traceability</li>
	        										<li>Aquatic products traceability: view aquatic products traceability</li>
	        										<li>Agricultural products traceability: view agricultural products traceability</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							</tbody>
	        						</table>
	        					</div>
	        					<h4 class="ui_sub_h4_txt up_obj">Counseling and damage disputes</h4>
	        					<div class="eyong_info_list type02">
	        						<ul>
	        							<li>We provide an integrated consultation service, including comprehensive online consultation and damage relief/ dispute settlement application procedure.</li>
	        							<li>We provide various cases by classification and type to prevent consumer damage</li>
	        						</ul>
	        					</div>
	        					<div class="tbl list gray ac up_txt">
	        						<table>
	        							<caption>Segment, Information offered</caption>
	        							<colgroup>
	        								<col style="width:20%;">
	        								<col>
	        							</colgroup>
	        							<thead>
	        							<tr>
	        								<th scope="col">Segment</th>
	        								<th scope="col">Information offered</th>
	        							</tr>
	        							</thead>
	        							<tbody>
	        							<tr>
	        								<td class="black"><a target="_top" href="/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do">Prevention of damage</a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Self-diagnosis: service that the consumer can self-diagnose in advance before applying for damage relief,</li>
	        										<li>Damage prevention notice / consultation bulletin / complaints occurring shopping malls / consumer dispute resolution criteria</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							<tr>
	        								<td class="black"><a target="_top" href="/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do">Application of Integrated consultation</a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Online consultation</li>
	        										<li>Remedy/dispute settlement application<br>
	        											* Consists of one-stop page for finding the victim-related agencies at once</li>
	        										<li>Application for damage relief / dispute settlement</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							<tr>
	        								<td class="black"><a target="_top" href="/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do">Cases related to damage relief /<br>dispute settlement</a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Cases of consultation</li>
	        										<li>Cases of damage relief</li>
	        										<li>Case of dispute settlement</li>
	        										<li>Cases through stories</li>
	        										<li>Cases through webtoons</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							</tbody>
	        						</table>
	        					</div>
	        					<h4 class="ui_sub_h4_txt up_obj">Consumer information</h4>
	        					<div class="eyong_info_list type03">
	        						<ul>
	        							<li>For product comparison information (comparative empathy / general comparison information / consumer tap), we provide useful product information on consumer education, price information, etc.</li>
	        							<li>For ‘comparative empathy,' we offer various types of cases by classification and type with the Korean Consumer Report for consumer damage prevention.</li>
	        						</ul>
	        					</div>
	        					<div class="tbl list gray ac up_txt">
	        						<table>
	        							<caption>Segment,Contents</caption>
	        							<colgroup>
	        								<col style="width:20%;">
	        								<col>
	        							</colgroup>
	        							<thead>
	        							<tr>
	        								<th scope="col">Segment</th>
	        								<th scope="col">Contents</th>
	        							</tr>
	        							</thead>
	        							<tbody>
	        							<tr>
	        								<td class="black"><a target="_top" href="/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do">Product comparison information</a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Comparative empathy: We offer test results, features by product, and purchasing guides with Korean consumer Report.</li>
	        										<li>General comparison information: Public and private organizations provide product status information useful for consumers.</li>
	        										<li>Text notification service: We offer product comparison information in a text service form when you register your mobile phone number.</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							<tr>
	        								<td class="black"><a target="_top" href="/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do">Consumer education</a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Educational information: We provide useful product safety knowledge to consumers</li>
	        										<li>Training schedule: Information on consumer education by subject, region, and target</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							<tr>
	        								<td class="black"><a target="_top" href="/consumer/subIndex/327.do">Price information and <br>Finance, insurance, medical</a></td>
	        								<td class="al">
	        									<ul class="hp_list">
	        										<li>Service price information: We provide various price information such as utility fee and service charge</li>
	        										<li>We provide financial / insurance information, medical information, and to consumer / education linked institutions</li>
	        										<li>We provide links of financial / insurance information, medical information, and consumer / educational institutions.</li>
	        									</ul>
	        								</td>
	        							</tr>
	        							</tbody>
	        						</table>
	        					</div>
	        	            </div>
						</div>
	    	            <div class="box">
	    	                <div>
	    	                    <h4 class="ui_sub_h4_txt up_txt">商品安全信息</h4>
	    						<div class="eyong_info_list type01">
	    							<ul>
	    								<li>可以查询有关商品(物品/服务)的基本信息、附加信息、商家信息等。</li>
	    								<li>还显示相关商品的召回维修状态和认证状态。</li>
	    								<li>商品登记为‘我的关心商品’(收藏)，今后召回相关产品时，会通过短信(SMS)幸福之梦应用程序提供提醒服务。</li>
	    							</ul>
	    						</div>
	    						<div class="tbl list gray ac up_txt">
	    							<table>
	    								<caption>可以知道商品安全信息提供范围的图表</caption>
	    								<colgroup>
	    									<col style="width:20%;">
	    									<col>
	    								</colgroup>
	    								<thead>
	    								<tr>
	    									<th scope="col">商品安全信息</th>
	    									<th scope="col">信息提供范围</th>
	    								</tr>
	    								</thead>
	    								<tbody>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do">商品信息<br>(物品/服务)</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>商品信息：基本商品信息、附加信息、商家信息等</li>
	    											<li>连接信息：相关商品的召回信息及认证信息</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do">召回信息</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>召回对象：食品/医药品/医疗仪/化妆品/汽车/工业品/畜产品/饮用水/海外召回</li>
	    											<li>提供信息：召回对象商品信息，召回理由，消费者注意事项，召回方法等</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do">认证信息</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>环境标志认证：韩国环境产业技术院提供</li>
	    											<li>环境成绩标志：韩国环境产业技术院提供</li>
	    											<li>KC认证：国家技术标准院提供</li>
	    											<li>医疗机关认证：医疗机关认证院提供</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do">商品履历制</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>畜产品履历制：查询牛肉、猪肉、进口牛肉履历</li>
	    											<li>水产品履历制：查询水产品履历</li>
	    											<li>农产品履历制：查询农产品履历</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								</tbody>
	    							</table>
	    						</div>
	    						<h4 class="ui_sub_h4_txt up_obj">咨询及损失纠纷</h4>
	    						<div class="eyong_info_list type02">
	    							<ul>
	    								<li>提供在线咨询及救济损失/纠纷调节申请程序整理为一的‘综合咨询申请’服务。</li>
	    								<li>为了预防消费者算是，按照各分类、各类型提供各种事例。</li>
	    							</ul>
	    						</div>
	    						<div class="tbl list gray ac up_txt">
	    							<table>
	    								<caption>区分, 提供</caption>
	    								<colgroup>
	    									<col style="width:20%;">
	    									<col>
	    								</colgroup>
	    								<thead>
	    								<tr>
	    									<th scope="col">区分</th>
	    									<th scope="col">提供信息</th>
	    								</tr>
	    								</thead>
	    								<tbody>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do">预防损失</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>自我诊断：在申请救济损失之前，按照消费者纠纷解决标准，消费者可自行诊断的服务。</li>
	    											<li>损失预防注意警报/咨询快讯/ 发生过多投诉的购物网站/ 消费者纠纷解决标准</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do">申请综合咨询</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>申请在线自信</li>
	    											<li>申请救济损失/纠纷调整<br>
	    												※ 为了能一次查找救济损失先关机构，组成一站式网页。</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do">救济损失/纠纷调整<br>相关事例</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>咨询事例</li>
	    											<li>损失救济事例</li>
	    											<li>纠纷调整事例</li>
	    											<li>通过故事查看事例</li>
	    											<li>通过网络漫画查看事例</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								</tbody>
	    							</table>
	    						</div>
	    						<h4 class="ui_sub_h4_txt up_obj">消费者信息</h4>
	    						<div class="eyong_info_list type03">
	    							<ul>
	    								<li>消费者信息提供商品比较信息(比较同感/一般比较信息/消费者论坛)，消费者培训，价格信息等的有用的商品信息。</li>
	    								<li>‘比较同感’是韩国式消费者报告，为了预防消费者损失，按照各分类和类型提供各种事例。</li>
	    							</ul>
	    						</div>
	    						<div class="tbl list gray ac up_txt">
	    							<table>
	    								<caption>区分,主要菜单</caption>
	    								<colgroup>
	    									<col style="width:20%;">
	    									<col>
	    								</colgroup>
	    								<thead>
	    								<tr>
	    									<th scope="col">区分</th>
	    									<th scope="col">主要菜单</th>
	    								</tr>
	    								</thead>
	    								<tbody>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do">商品比较信息</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>比较同感：属于韩国式消费者报告，提供试验结果、产品特点、购买指南等</li>
	    											<li>一般比较信息：公共及民间团体提供对消费者有用的商品信息</li>
	    											<li>短信服务：登记手机号码，就提供商品比较信息短信</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do">消费者培训</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>培训信息：提供对消费者有用的商品安全知识</li>
	    											<li>培训日程：提供各种主题、各地区、各种对象的消费者培训信息</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/consumer/subIndex/327.do">价格信息及<br>金融、保险、连接机关</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>服务价格信息：提供公共费用、服务费用等的各种价格信息</li>
	    											<li>直接链接金融/保险信息、医疗信息、消费者/培训连接机关</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								</tbody>
	    							</table>
	    						</div>
	    	                </div>
	    	            </div>
	    		        <div class="box">
	    	                <div>
	    	                    <h4 class="ui_sub_h4_txt up_txt">商品安全情報</h4>
	    						<div class="eyong_info_list type01">
	    							<ul>
	    								<li>商品(物品/用役)に関する基本情報、付加情報、事業者情報等を同時に照会することができます。</li>
	    								<li>該当商品のリコール状態と認証状態が追加情報として表示されます。</li>
	    								<li>商品を「お気に入り商品」として登録(ピックアップ)しておくと、今後、該当商品のリコールが実施される場合、ＳＭＳサービスおよびヘンボクドリームアプリで通知サービスを受けることができます。</li>
	    							</ul>
	    						</div>
	    						<div class="tbl list gray ac up_txt">
	    							<table>
	    								<caption>商品安全情報,情報の提供範囲</caption>
	    								<colgroup>
	    									<col style="width:20%;">
	    									<col>
	    								</colgroup>
	    								<thead>
	    								<tr>
	    									<th scope="col">商品安全情報</th>
	    									<th scope="col">情報の提供範囲</th>
	    								</tr>
	    								</thead>
	    								<tbody>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do">商品情報<br>(物品/用役)</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>商品情報：基本商品情報、付加情報、事業者情報など</li>
	    											<li>連携情報：該当商品のリコール情報および認証情報</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do">リコール情報</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>リコール対象：食品/医薬品/医療機器/化粧品/自動車/工産品/畜産物/ミネラルウォーター/海外リコール</li>
	    											<li>提供情報：リコール対象、商品情報、リコール理由、消費者有意事項、コール方法など</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do">認証情報</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>環境表示認証：韓国環境産業技術院提供</li>
	    											<li>環境成績表示：韓国環境産業技術院提供</li>
	    											<li>KC認証：国家技術標準院提供</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do">商品履歴制</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>畜産物履歴制：牛肉、豚肉、輸入牛肉履歴制の照会</li>
	    											<li>水産物履歴制：水産物履歴制の照会</li>
	    											<li>農産物履歴制：農産物履歴制の照会</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								</tbody>
	    							</table>
	    						</div>
	    						<h4 class="ui_sub_h4_txt up_obj">相談および被害紛争</h4>
	    						<div class="eyong_info_list type02">
	    							<ul>
	    								<li>オンライン相談および被害救済/紛争調整申請手続きを統合した「統合相談申請」サービスを提供します。</li>
	    								<li>消費者被害予防のための事例を分類別、タイプ別に提供しています。</li>
	    							</ul>
	    						</div>
	    						<div class="tbl list gray ac up_txt">
	    							<table>
	    								<caption>商品安全情報の情報提供範囲を知ることができる表です</caption>
	    								<colgroup>
	    									<col style="width:20%;">
	    									<col>
	    								</colgroup>
	    								<thead>
	    								<tr>
	    									<th scope="col">区分</th>
	    									<th scope="col">提供情報</th>
	    								</tr>
	    								</thead>
	    								<tbody>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do">被害予防</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>自己診断：被害救済を申請する前に、消費者紛争解決基準により消費者が自ら事前に診断することができるサービス</li>
	    											<li>被害予防注意報/ 相談速報/ クレーム多発ショッピングモール/ 消費者紛争解決基準</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do">統合相談申請</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>オンライン相談申請</li>
	    											<li>被害救済/紛争調停申請
	    												※ 被害救済関連機関を同時に検索できるように、ワンストップページで構成</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do">被害救済/紛争調整<br>関連事例</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>相談事例</li>
	    											<li>被害救済事例</li>
	    											<li>紛争調整事例</li>
	    											<li>ストーリーで見る事例</li>
	    											<li>ウェブ漫画で見る事例</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								</tbody>
	    							</table>
	    						</div>
	    						<h4 class="ui_sub_h4_txt up_obj">消費者情報</h4>
	    						<div class="eyong_info_list type03">
	    							<ul>
	    								<li>消費者情報には、商品の比較情報(比較共感/一般比較情報/消費者TOKTOK)、消費者教育、価格情報など、消費者に有益な商品情報を提供します。</li>
	    								<li>「比較共感」は、韓国版コンシューマー・レポートとして、消費者被害の予防のための各種事例を分類別、種類別に提供します。</li>
	    							</ul>
	    						</div>
	    						<div class="tbl list gray ac up_txt">
	    							<table>
	    								<caption>区分,主なメニュー</caption>
	    								<colgroup>
	    									<col style="width:20%;">
	    									<col>
	    								</colgroup>
	    								<thead>
	    								<tr>
	    									<th scope="col">区分</th>
	    									<th scope="col">主なメニュー</th>
	    								</tr>
	    								</thead>
	    								<tbody>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do">商品比較情報</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>比較共感：韓国版コンシューマー・レポートとして、試験結果、製品別の特徴、購入ガイドなどを提供</li>
	    											<li>一般比較情報：公共および民間団体から寄せられた情報で、商品状態など、消費者に有益な内容</li>
	    											<li>SMS通知サービス：携帯電話番号を登録すると、商品比較情報のSMSサービスを提供</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do">消費者教育</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>教育情報：消費者に有用な商品安全知識を提供</li>
	    											<li>教育日程：テーマ別、地域別、対象別の消費者教育情報ガイド</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/consumer/subIndex/327.do">価格情報および<br>金融、保険、医療、連携機関</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>サービス価格情報：公共料金、サービス料金など、さまざまな価格情報を提供</li>
	    											<li>金融/保険情報、医療情報、消費者/教育連携機関へのショートカットを提供</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								</tbody>
	    							</table>
	    						</div>
	    	                </div>
	                    </div>
	                    <div class="box">
	    	                <div>
	    	                    <h4 class="ui_sub_h4_txt up_txt">Информация о безопасности товара</h4>
	    						<div class="eyong_info_list type01">
	    							<ul>
	    								<li>Можно посмотреть основную и дополнительную информацию о товарах( продуктах и услугах), а также найти информацию о предпринимателях</li>
	    								<li>Предоставляется дополнительная информация об истории отзыва продукции с рыка и информация о состоянии сертификации</li>
	    								<li>Если вы добавите товар в &lt;Мои желания&gt;, при случае начала процедуры отзывы этого товара с рынка, можете получить СМС-уведомление через приложение Хэнбок дрым</li>
	    							</ul>
	    						</div>
	    						<div class="tbl list gray ac up_txt">
	    							<table>
	    								<caption>Эта таблица показывает объем информации о продукции.</caption>
	    								<colgroup>
	    									<col style="width:20%;">
	    									<col>
	    								</colgroup>
	    								<thead>
	    								<tr>
	    									<th scope="col">Информация обезопасности товара</th>
	    									<th scope="col">Виды предоставляемой информации</th>
	    								</tr>
	    								</thead>
	    								<tbody>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/goodsinfo/57/selectGoodsInfoList.do">Информация о товарах<br>(продуктах и услугах)</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Информация о товарах : основная и дополнительная информация и информация о предпринимателях</li>
	    											<li>Другая информация : информация об истории отзыва товаров и информация о сертификации</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/recallInfo/60/selectRecallInfoInternalList.do">Информация об истории отзыва товаров</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Товары,подлежащие отзыву - пищевая продукция/лекарственные средства/медицинские оборудования/косметики/автомобили/бытовые средства/животные ресурсы/ пищевая вода/ импортые товары</li>
	    											<li>Пердоставние информации - информация о товарах, о причинах отзыва с рынка и нужная информация для потребителей, информация о способе отзыва и прочие.</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/crtfc/71/selectCrtfcInfoList.do">Информация о сертификации</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Сертификация об экологически чистых товарах : предоставляет Корейский технологический институт экологической промышленности</li>
	    											<li>Декларация об экологически чистых товарах : предоставляет Корейский технологический институт экологической промышленности</li>
	    											<li>Сертификация KC : предоставляет Корейское агентство по технологиям и стандартам</li>
	    											<li>Сертификация о медицинских учреждений : предоставляет институт по оценке медицинских учреждений</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/goodshistinqire/58/selectGoodsHistInqireMeetList.do">Отслеживание истории товаров</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Отслеживание истории животных ресурсов - отслежвании истории мяса говядиы, свинины и импортируемой говязины</li>
	    											<li>Отслеживание истории морских ресурсов</li>
	    											<li>Отслеживание истории сельскохозяйственных ресурсов</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								</tbody>
	    							</table>
	    						</div>
	    						<h4 class="ui_sub_h4_txt up_obj">Консльтация и урегулирование споров</h4>
	    						<div class="eyong_info_list type02">
	    							<ul>
	    								<li>Предоставляются общие консультационные услуги, в том числе онлай-консультацию и консультация о возмещении ущерба и урегулировании споров</li>
	    								<li>Предоставляется информация о различных случаев для предотвращения ущерба потребителей</li>
	    							</ul>
	    						</div>
	    						<div class="tbl list gray ac up_txt">
	    							<table>
	    								<caption>Раздел,Виды предоставляемой информации</caption>
	    								<colgroup>
	    									<col style="width:20%;">
	    									<col>
	    								</colgroup>
	    								<thead>
	    								<tr>
	    									<th scope="col">Раздел</th>
	    									<th scope="col">Виды предоставляемой информации</th>
	    								</tr>
	    								</thead>
	    								<tbody>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/selfdgnss/109/selectSelfDgnssList.do">Предотвращеие ущерба </a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Самостоятельная диагностика- предоставляется услуг, с помощью которого потребитель сам может оценивать ситуацию до подачи заявляения о возмещении ущерба</li>
	    											<li>Предотвращение ущерба/ консультация/проблемные интернет-магазины/критерии решения споров потребителей</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/insttguidance/300/selectInsttGuidanceAllList.do">Общая консультация</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Запрос онлай консультации</li>
	    											<li>Запрос консультации о возмещении ущерба и урегулировании споров<br>
	    												Создана единная страница, где можно найти информацию об учреждениях, занимающихся возмещением ущерба только с подной попытки</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/cnsltcase/114/selectCnsltCaseList.do">Случаи,связанные с возмещением ущерба и<br>урегулирования споров </a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Случаи консультирования</li>
	    											<li>Случаи возмещения ущерба</li>
	    											<li>Случаи урегулирования споров</li>
	    											<li>Истории и случаи</li>
	    											<li>Случаи и онлайн комикс</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								</tbody>
	    							</table>
	    						</div>
	    						<h4 class="ui_sub_h4_txt up_obj">Информация о потребителях</h4>
	    						<div class="eyong_info_list type03">
	    							<ul>
	    								<li>Предоставляется полезная для потребителей информация о товарах, включая информацю о сравнении товаров, обучениях для потребителей и ценовую информацию</li>
	    								<li>В странице 'поделиться впечатлениями ' предоставляются различные случаи споров для предотвращения ущерба потребителей</li>
	    							</ul>
	    						</div>
	    						<div class="tbl list gray ac up_txt">
	    							<table>
	    								<caption>раздел,основные меню</caption>
	    								<colgroup>
	    									<col style="width:20%;">
	    									<col>
	    								</colgroup>
	    								<thead>
	    								<tr>
	    									<th scope="col">раздел</th>
	    									<th scope="col">основные меню</th>
	    								</tr>
	    								</thead>
	    								<tbody>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/cnsmrBBS/79/selectInfoRptList.do">Информация о сравнении товаров</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Поделиться впечатлениями- предоставляется информация об особенностях товаров, полученная через обследования и руководство по покупки товаров</li>
	    											<li>Обычная информация о сравнении товаров - частные или государственные агентства предоставляют  полезную для потребителей информацию о состоянии товаров</li>
	    											<li>СМС-уведомление- при случае зарегистрации номера мобильного телефона предоставляет услуг- СМС - уведомление для сравнения цен товаров</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/user/ftc/consumer/cnsmrBBS/320/selectEdcInfoList.do">Обучение потребителей</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Информация об обучениях - предоставление полезненной информации о безопасности товаров</li>
	    											<li>Расписание обучения - предоставление информации об обучениях ,которые различаются в зависимости от темы, регионы и типы потребителей</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								<tr>
	    									<td class="black"><a target="_top" href="/consumer/subIndex/327.do">Ценованя информация и информация о соответствующих учреждении в сфере финансирования, страхования и медицины</a></td>
	    									<td class="al">
	    										<ul class="hp_list">
	    											<li>Информация о ценах усулг- предоставляется инормация о ценах коммунальных усулг и различных сервисов</li>
	    											<li>Одним кликом соединяется со страницей, где предоставляется информация о финансировании, страховании, медицине и обучених потребителей</li>
	    										</ul>
	    									</td>
	    								</tr>
	    								</tbody>
	    							</table>
	    						</div>
	    	                </div>
	                    </div>
	                </div>
					<div class="consumer_modal_btn_area ac">
						<!-- <button data-remodal-action="cancel" class="ui_btn a_type deepgray">취소</button> -->
						<button data-remodal-action="confirm" class="ui_btn a_type blue">확인</button>
					</div>
	            </div>
	        </div>
		</div>
        <!-- E : #foreign -->
        <!-- S : #ui_gnb_block -->
        <div id="ui_gnb_block"></div>
        <!-- E : #ui_gnb_block -->
        <script>
            $(document).ready(function(){
                 jf_subTopVisual('02040400000000000000');
                //$('#ui_block').css('display','none');
            });
        </script>


	
	
		
	</body>
</html>