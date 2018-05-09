$(document).ready(function(){
    
    $("#managerPop").click(function(){
        var url = $(this).attr("href");
        window.open(url,"managerPop","width=1024, height=768, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=yes");
        return false;
    });

    $("#layOutEdit").click(function(){
        var url = $(this).attr("href");
        window.open(url,"layOutPop","width=1024, height=768, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=yes");
        return false;
    });

    $("#menuContentEdit").click(function(){
        var url = $(this).attr("href");
        window.open(url,"editPop","width=1024, height=768, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=yes");
        return false;
    });
    
    $(".functionEdit").click(function(){
        var url = $(this).attr("href");
        window.open(url,"functionPop","width=1024, height=768, location=no, toolbar=no, menubar=no, scrollbars=yes, resizable=yes");
        return false;
    });
        
    /*
    $('.numOnly').css('imeMode', 'disabled').keypress(function(event) {
        if(event.which && (event.which > 47 && event.which < 58 || event.which == 8)) {
        }else{
            event.preventDefault();
        }
    }).keyup(function(){
        if($(this).val() != null && $(this).val() != '' ) {
            $(this).val($(this).val().replace(/[^0-9]/g, ''));
        }
    }); 
    */
    
    /* 페이징 */
    if( $('.paginationListNum').length ){
        if ($('.paginationListNum > li').length > 1) {
            var pagination = $('.paginationListNum');
            pagination.each(function(index, el){
                var paginations = $(el);
                var itemW = paginations.find('a').eq( 0 ).outerWidth( true );
                var items, current;
                var bxOpts = {
                    'desktop' : {
                        controls : false,
                        minSlides: 3,
                        // 10개
                        maxSlides: Math.floor( (itemW * 10) / itemW ),
                        slideWidth: itemW,
                        slideMargin: 5,
                        infiniteLoop: false,
                        adaptiveHeight: true,
                        pager: false
                    },
                    'mobile640' : {
                        controls: true,
                        minSlides: 1,
                        // 3개
                        maxSlides: Math.floor((itemW * 3) / itemW),
                        moverSlides: 1,
                        slideWidth: itemW,
                        slideMargin: 5,
                        infiniteLoop: false,
                        adaptiveHeight: true,
                        touchEnabled:false,
                        //pager: false,
                        swipeThreshold: 0,
                        controls : false
                    }
                };

                $(window).on('resize', function(){
                    var currentWidth = $(window).width();
                    var currentDivice = currentWidth > 640 ? 'desktop' : 'mobile640';
                    if( !!paginations.destroySlider ){
                        paginations.destroySlider();
                    }
                    paginations.bxSlider( bxOpts[currentDivice] );
                    items = paginations.find('li');
                    current = paginations.find('strong').parent().index();
                    if( current >= 5 ){
                   $('.bx-next').hide();
                    }else if( current <= 4 ){
                        $('.bx-prev').hide();
                    }
                    if( current > 4 ){
                        setTimeout(function(){
                            $('.bx-next').click();
                        })
                    }
                }).resize();
            });
        };
    };

    $(".engNumOnly").css('imeMode', 'disabled').keyup(function(event){
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^a-z0-9]/gi,''));
        }   
    });
    
    $(".numOnly").css('imeMode', 'disabled').keyup(function(event){
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi,''));
        }
    });
    
    $(".engOnly").css('imeMode', 'disabled').keyup(function(event){
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
        var inputVal = $(this).val();
        $(this).val(inputVal.replace(/[^a-z]/gi,''));
        }
    });
    
    $(".korOnly").keyup(function(event){
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[a-z0-9]/gi,''));
        }
    });

    $(".numComma").blur(function(){
        $(this).val($.number($(this).val()));
    });
    
    $('.specialKeyNot').keypress(function(event) {
        if ((event.keyCode > 32 && event.keyCode < 48) || (event.keyCode > 57 && event.keyCode < 65)
                || (event.keyCode > 90 && event.keyCode < 97)){ 
            event.preventDefault();
        }
    });

    if( $('.datepicker').length ){
        $('.datepicker').pickadate({
            monthsFull: [ '01월', '02월', '03월', '04월', '05월', '06월', '07월', '08월', '09월', '10월', '11월', '12월' ],
            monthsShort: [ '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12' ],
            weekdaysShort: [ '일', '월', '화', '수', '목', '금', '토' ],
            today: '오늘',
            clear: '지우기',
            close: '닫기',
            format: 'yyyy-mm-dd',
            formatSubmit: 'yyyy-mm-dd'
        });
    }

    
    setTimeout(function() {
        $('.picker__table')
            .each(function(index, elem) {
                $(elem)
                    .prepend('<caption>월별달력</caption>')
                ;
            })
        ;
    }, 250);    

    $('input:checkbox[id="allcheck"]').change(function () {
        if($(this).is(":checked")){
            $('input:checkbox[name="idxs"]').prop("checked", true);
        }else{
            $('input:checkbox[name="idxs"]').prop("checked", false);
        }
    });
    
    $('input:checkbox[id="allcheckc"]').change(function () {
        if($(this).is(":checked")){
            $('input:checkbox[name="idxsc"]').prop("checked", true);
        }else{
            $('input:checkbox[name="idxsc"]').prop("checked", false);
        }
    }); 
});

/**************************************/
/* validation Check 
/*
/*  param:
/*      ob              : 해당 객체 셀렉조건
/*      msg             : 커스텀콜백 사용안할시 얼럿 메시지
/*      customOptions   : max(최대), min(최소), password(비번스타일), consecutively(연속문자체크), consecutivelyNum(연속문자수), number(숫자형)
/*      customCallback  : 첫번째 파라미터로 에러처리
/*          0               : 길이 체크 에러
/*          1               : 특수문자 체크 에러 (password시)
/*          2               : 숫자 체크 에러 (password시)
/*          3               : 연속된 문자 체크에러 (consecutivelyNum시)
/*          4               : 숫자형일때 체크에러 (number 시)
/*
/**************************************/
function validation(ob, msg, customOptions, customCallback){
    var options = {
        max : 16,         // 최대 글자수
        min : 9,                // 최소 글자수
        password : true,       // 비밀번호 패턴 특수문자, 숫자 포함하기
        consecutively : true,  // 연속된 문자 방지하기
        consecutivelyNum : 3   // 연속된 문자 제한수
    };
    $.extend(options, customOptions);

    var callback = function(i,e){
         
        if( typeof customCallback == "function" ){
            customCallback.prototype = {id:ob};
            new customCallback(i);
        }else{
            alert(msg);
            $(ob).focus();
        }
    };

    var value = $(ob).val();

    //최소, 최대값 체크하기. (빈값체크)
    if( value.length < options.min || value.length > options.max ){
        callback(0,"Error 최소 최대값 체크" + options.min + " < " + value.length + " < "+ options.max);
        return false;
    }

    //패스워드 스타일 체크 특수문자, 숫자 필수
    if(options.password){
        var special_pattern = /[`~!@+_#$%^&*|\\\'\";:\/?]/gi;
        if( special_pattern.test(value) == false ){
            callback(1,"Error 특수문자가 없을 때 " +value);
            return false;
        }
         
        special_pattern = /[0-9]/gi;
        if( special_pattern.test(value) == false ){
            callback(2,"Error 숫자가 없을 때 "+value);
            return false;
        }
    }

    //연속된 문자 체크 
    if(options.consecutively){
        var t = "";
        var c = 0;
        for(var i=0; i<value.length; i++){
            var v = value.charAt(i);
            if( t == v ){
                c++;
            }else{
                c = 0;
            }
            t = v;

            if(c >= options.consecutivelyNum-1){
                callback(3,"Error 연속된 문자 이상 "+value );
                return false;
                break;
            }
        }
    }

    return true;
}

function jf_menuOn(menuType, siteIdx, siteMenuIdxs, siteMenuDepth){
    
    var top_ul = $(".gnbDp-1");
    
    var siteMenuParentIdxs = new Array();
    
    var tmpMenuIdx = "00000000000000000000";
    
    var check = 20;
    
    for(var i=0; i<siteMenuDepth; i++){
        
        check = check - 2;
        
        tmpMenuIdx = tmpMenuIdx.substring(0, check);
        
        siteMenuParentIdxs[i] = siteIdx+"_"+siteMenuIdxs.substring(0, ((i*2)+2)) + tmpMenuIdx;
    }
    
    $(top_ul).find("a").each(function(index, item) { 

        var siteMenuIdxHref = $(item).attr("data-seed");

        if(siteMenuIdxHref != "" && siteMenuIdxs !=""){

            if($.inArray(siteMenuIdxHref, siteMenuParentIdxs) >-1){
                
                if(menuType == "T"){
                    $(item).parent().addClass("topMenuOn");
                }else{
                    $(item).children().attr("src", $(item).children().attr("src").replace("off", "on"));
                }
            }
        }
    });
    
    var sub_ul = $(".subMDp-1");

    $(sub_ul).find("li > ul").hide();
    
    $(sub_ul).find("a").each(function(index, item) { 

        var siteMenuIdxHref = $(item).attr("data-seed");

        if(siteMenuIdxHref != "" && siteMenuIdxs !=""){

            if($.inArray(siteMenuIdxHref, siteMenuParentIdxs) >-1){
                
                if(menuType == "T"){
                    $(item).parent().addClass("subMenuOn");
                }else{
                    $(item).children().attr("src", $(item).children().attr("src").replace("off", "on"));
                }

                $(item).parents("ul").show();

                if($(item).parent("ul").children().text() != ""){
                    $(item).parent("ul").children().show();
                }
            }
        }
    });
}

function jf_activeMenu(pageType, activeMenuMWidth, activeMenuSWidth){

    var activeMenuWidth = "";

    if(pageType == "main"){
        activeMenuWidth = activeMenuMWidth;
    }else if(pageType == "sub"){
        activeMenuWidth = activeMenuSWidth;
    }

    if(activeMenuWidth != ""){

        if(activeMenuWidth > $("body").width()){
            var top_ul = $(".gnbDp-1");
            $(top_ul).find("li").each(function(index, item) { 
                var childrenUlSize = $(item).children("ul").size();
                if(childrenUlSize > 0){
                    var url = $(item).children("a").attr("href");
                    $(item).children("a").attr("href", "#");
                }
            });
        }else{
            var top_ul = $(".gnbDp-1");
            $(top_ul).find("li").each(function(index, item) { 
                var childrenUl = $(item).children("ul");
                if(childrenUl != ""){
                    var url = $(item).children("a").attr("data-url");
                    $(item).children("a").attr("href", url);
                }
            });
        }
    }
}

function jf_menuAuth(seedMenuAuths, pageType){

    var seedMenuAuth = seedMenuAuths.split(",");

    var top_ul = $(".gnbDp-1");
    
    $(top_ul).find("a").each(function(index, item) { 

        var siteMenuAuths = $(item).attr("data-auth").split(",");

        if(siteMenuAuths[0] == "N"){
            
            var chkCnt = 0;
            
            for(var m=0; m<siteMenuAuths.length; m++){
                if(siteMenuAuths[m+1] == "Y" && seedMenuAuth[m] == "Y"){
                    chkCnt += 1;
                }
            }
            
            if(chkCnt==0){
                $(item).parent().remove();
            }
        }

    });

    $(top_ul).find("ul").each(function(index, item) { 

        if($(item).find("li").size() == 0){
            $(item).remove();
        }

    });
    
    if(pageType == "sub"){
        
        var sub_ul = $(".subMDp-1");
        
        $(sub_ul).find("a").each(function(index, item) { 
    
            var siteMenuAuths = $(item).attr("data-auth").split(",");
            
            if(siteMenuAuths[0] == "N"){

                var chkCnt = 0;
                
                for(var m=0; m<siteMenuAuths.length; m++){
                    if(siteMenuAuths[m+1] == "Y" && seedMenuAuth[m] == "Y"){
                        chkCnt += 1;
                    }
                }
                
                if(chkCnt==0){
                    $(item).parent().remove();
                }
            }
    
        });
    
        $(sub_ul).find("ul").each(function(index, item) { 
    
            if($(item).find("li").size() == 0){
                $(item).remove();
            }
    
        });
    }
}

function jf_windowOpenCenter(url, title, w, h){

    var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
    var dualScreenTop = window.screenTop != undefined ? window.screenTop : screen.top;
    width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
    height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;
    var left = ((width / 2) - (w / 2)) + dualScreenLeft;
    var top = ((height / 2) - (h / 2)) + dualScreenTop;
    
    var newWindow = window.open(url, title, 'scrollbars=yes, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
    
    if (window.focus) {
        newWindow.focus();
    }
}