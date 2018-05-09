/**
 * 서브 스크립트
 */

$(function(){
    $('#mobile_gnb_wrap .gnbDp-1 > .topMenuOn').addClass('on');

    $('.txt_break, .subMDp-1.subPos-04 .subMDp-1-4.subMenuOn .subMDp-2 li a').wordBreakKeepAll();
    //현재 위치 마지막 메뉴 strong 변환
    $('.now_position li:last-child').addClass('last');
    $('.now_position .last a').replaceWith('<strong>' + $('.now_position .last a').text() + '</strong');

    //서브메뉴
    $('.subMDp-1 > li:has(ul)').each(function(){
        $(this).children('a').addClass('arrow').attr('href','javascript:;');
    });

    $('.subMDp-1 > li:has(ul) > a').on('click', function(){
        $('.subMDp-1 > li').removeClass('subMenuOn');
        $('.subMDp-1 > li > ul').slideUp('fast');
        if ($(this).siblings('ul').is(':visible')) {
            $(this).parents('li').removeClass('subMenuOn');
            $(this).siblings('ul').slideUp('fast');
        } else {
            $(this).parents('li').addClass('subMenuOn');
            $(this).siblings('ul').slideDown('fast');
        }
    });

    $('.tbl.bb_style .tbl_list_content > a > dl > dd').each(function(index, element){
        $clamp(element, { clamp : 3 });
    });

    $('.tbl.bb_style .tbl_list_content > a > dl > .line_clamp2').each(function(index, element){
        $clamp(element, { clamp : 2 });
    });

    //달력
    datePickerController.createDatePicker({
        formElements:{
            "ex_date_start":"%Y-%m-%d"
        }
    });
    datePickerController.createDatePicker({
        formElements:{
            "ex_date_end":"%Y-%m-%d"
        }
    });
    datePickerController.createDatePicker({
        formElements:{
            "ex_date_01_start":"%Y-%m-%d"
        }
    });
    datePickerController.createDatePicker({
        formElements:{
            "ex_date_01_end":"%Y-%m-%d"
        }
    });

    $('.goods_info_search_wrap > ul > li > .goods_search_form > .form_wrap > .form_wrap_inner.line_02 .btn_cat_search').on('click', function(){
        if ($('.tree_search_wrap').is(':visible')) {
            $('.goods_info_search_wrap > ul > li > .goods_search_form > .form_wrap > .form_wrap_inner.line_02 .btn_cat_search').removeClass('on');
            $('.ui_form_box_wrap').removeClass('on');
            $('.tree_search_wrap').css('display','none');
        } else {
            $('.goods_info_search_wrap > ul > li > .goods_search_form > .form_wrap > .form_wrap_inner.line_02 .btn_cat_search').addClass('on');
            $('.ui_form_box_wrap').addClass('on');
            $('.tree_search_wrap').css('display','block');
        }
    });

    $('#btn_treemenu_close').on('click', function(){
        $('.goods_info_search_wrap > ul > li > .goods_search_form > .form_wrap > .form_wrap_inner.line_02 .btn_cat_search').removeClass('on');
        $('.ui_form_box_wrap').removeClass('on');
        $('.tree_search_wrap').css('display','none');
    });

    $('.ui_form_box_wrap .goods_history_search_wrap .two_colum .left_area .line_03 .btn_cat_search').on('click', function(){
        if ($('.tree_search_wrap').is(':visible')) {
            $('.ui_form_box_wrap .goods_history_search_wrap .two_colum .left_area .line_03 .btn_cat_search').removeClass('on');
            $('.tree_search_wrap').css('display','none');
        } else {
            $('.ui_form_box_wrap .goods_history_search_wrap .two_colum .left_area .line_03 .btn_cat_search').addClass('on');
            $('.tree_search_wrap').css('display','block');
        }
    });

});

//서브 탑 비주얼
function jf_subTopVisual(siteMenuIdxs){
    var visualChangeClass = '';
    var visualSlogun = '';
    //var visualSlogunEng = '';
    var mainDepth = siteMenuIdxs.substring(0,2);
    var subDepth = siteMenuIdxs.substring(0,6);

    switch (mainDepth) {
        case '01' :
            visualChangeClass = 'sub_visual_01';
            visualSlogun = '열린소비자포털 행복드림의 이용안내 및 참여기관안내입니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '02' :
            visualChangeClass = 'sub_visual_02';
            visualSlogun = '상품정보, 이력제, 리콜·인증정보 및 위해정보처리속보를 알려드립니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '03' :
            visualChangeClass = 'sub_visual_03';
            visualSlogun = '비교정보(비교공감/일반비교정보/소비자톡톡)와 가격정보 및 연계기관정보입니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '04' :
            visualChangeClass = 'sub_visual_04';
            visualSlogun = '피해예방을 위한 자가진단 및 관련사례, 상담과 피해구제/분쟁조정신청이 가능한 통합상담신청';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '05' :
            visualChangeClass = 'sub_visual_05';
            visualSlogun = '행복드림의 소식과 이벤트, 설문조사, FAQ, 인포그래픽을 제공하고 있습니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '06' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림의 퍼블리싱 가이드입니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '07' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림은 상품에 대한 국민의 알 권리와 편의를 위해 노력합니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '08' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림은 상품에 대한 국민의 알 권리와 편의를 위해 노력합니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '09' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림은 상품에 대한 국민의 알 권리와 편의를 위해 노력합니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '10' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림은 상품에 대한 국민의 알 권리와 편의를 위해 노력합니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '11' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림은 상품에 대한 국민의 알 권리와 편의를 위해 노력합니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '12' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림은 상품에 대한 국민의 알 권리와 편의를 위해 노력합니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '13' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림은 상품에 대한 국민의 알 권리와 편의를 위해 노력합니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '14' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림은 상품에 대한 국민의 알 권리와 편의를 위해 노력합니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
        case '15' :
            visualChangeClass = 'sub_visual_06';
            visualSlogun = '열린소비자포털 행복드림은 상품에 대한 국민의 알 권리와 편의를 위해 노력합니다.';
            //visualSlogunEng = 'Product safety infomation';
        break;
    }

    $('.sub_visual').addClass(visualChangeClass);
    $('.sub_slogun').text(visualSlogun);
    //$('.sub_slogun').append('<small>' + visualSlogunEng + '</small>');
}

