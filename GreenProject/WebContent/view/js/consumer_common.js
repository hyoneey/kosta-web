/**
 * 공통 스크립트
 */

$(function(){
	msieversion();
	var resizeTimeout;
	var real_doc_h;
	var real_win_w;
	var real_win_h;
	var mobile_break_point;
	var url = $(location).attr('pathname');
	//console.log(url);

	WebFont.load({
		active : function(){
			sessionStorage.fonts = true;
		},
		custom: {
			families: ['Open Sans', 'Nanum Gothic', 'NanumSquare']
			//urls: ['/site/consumer/css/common.css']
		}
	});


	//모바일구분
	$("body").append("<p class='mobile_break_point'></p>");

	$(window).on('touchmove','.scroll-none', function(e){
		e.preventDefault();
	});

	//통합검색 이동
	/*
		$('.btn_total_search').on('click', function(){
			location.href = '/user/extra/consumer/totalSearch/totalSearch/jsp/Page.do?siteMenuIdx=441';
		});
	*/
	// gnb




	//gnb 태그 감싸기 , 타이틀 입력하기
	var gnbTitle, gnbSubTitle, gnbDepth_02_line_01, gnbDepth_02_line_02;

	$("#consumer_gnb > ul > li > ul").wrap('<div class="consumer_gnb_sub_wrap"><div class="center_wrapper"></div></div>');
	$("#consumer_gnb > ul > li > a").append('<em class="bar"></em>');
	$("#consumer_gnb .consumer_gnb_sub_wrap .center_wrapper").prepend('<div class="gnb_tit"><h4>'+ gnbTitle + '</h4><span>'+ gnbSubTitle +'</span></div>');
	//$("#consumer_gnb .consumer_gnb_sub_wrap").wrap("<div class='gnb-tit-wrap'></div>").find('ul').show()

	$("#consumer_gnb").css('overflow','visible');

	function deviceCheck(dv){

		$("#consumer_gnb .gnbDp-1 > li").each(function(idx, el){

			gnbTitle = $(el).children('a').text();
			gnbDepth_02_line_01 = $(el).children().children().children().children('li:nth-child(-n+4)').hiLow('max');
			gnbDepth_02_line_02 = $(el).children().children().children().children('li:nth-child(n+5)').hiLow('max');

			if( idx == 0 ){
				//서비스 안내
				gnbSubTitle = '행복드림 열린소비자포털 이용안내 및 참여기관안내입니다.';
			}else if( idx == 1 ){
				//상품안전정보
				gnbSubTitle = '상품정보, 이력제, 리콜·인증정보 및 위해정보처리속보를 알려드립니다.';
			}else if( idx == 2 ){
				//소비자정보
				gnbSubTitle = '비교정보(비교공감/일반비교정보/소비자톡톡)와 가격정보 및 연계기관정보입니다.';
			}else if( idx == 3 ){
				//상담 및 피해/분쟁
				gnbSubTitle = '피해예방을 위한 자가진단 및 관련사례, 상담과 피해구제/분쟁조정신청이 가능한 통합상담신청';
			}else if( idx == 4 ){
				//알림소식
				gnbSubTitle = ' 행복드림의 소식과 이벤트, 설문조사, FAQ, 인포그래픽을 제공하고 있습니다.';
			}

			$(el).find('h4').addClass('txt_' + idx).text(gnbTitle);
			$(el).find('span').html(gnbSubTitle);
			$(el).children().children().children().children('li:nth-child(-n+4)').css('height', gnbDepth_02_line_01.height() );
			$(el).children().children().children().children('li:nth-child(n+5)').css('height', gnbDepth_02_line_02.height() );

			//2뎁쓰 라인 조정
			// if( $(el).find('li').length <= 4 ){
			//  $(el).find(".gnb-tit").next('ul').width(400);
			// }
		});
	}

	var over;
	$("#consumer_gnb > ul > li > a").on("mouseenter focusin",function(){

		var _this = $(this).closest('li');

		//is_moving = true;

		//이미 gnb 보일때
		if( $('#ui_gnb_block').is(":visible") ){

			$(".consumer_gnb_sub_wrap").removeClass('active');
			_this.find(".consumer_gnb_sub_wrap").addClass('active');

		}else{

			over = setTimeout(function(){

				$(".consumer_gnb_sub_wrap").removeClass('active');
				_this.find(".consumer_gnb_sub_wrap").addClass('active');
				$('#ui_gnb_block').css({
					opacity : 1,
					display : 'block'
				});

			},250)
		}
	});


	var memo_gnb_depth = $('.gnbDp-1 > li.topMenuOn');

	$(".nav_area").on("mouseleave",function(){

		clearTimeout(over);

		setTimeout(function(){
			$(".consumer_gnb_sub_wrap").removeClass('active');

			$('#ui_gnb_block').css({
				opacity : 0,
				display : 'none'
			});

			if (url == '/consumer/index.do') {
				$('.gnbDp-1 > li').removeClass('topMenuOn');
			} else {
				$('.gnbDp-1 > li').removeClass('topMenuOn');
				memo_gnb_depth.addClass('topMenuOn');
			}
		},250);


	});

	$('#consumer_gnb .gnbDp-1-5 .gnbDp-2 > li:last-child > a').on("focusout",function(){
		clearTimeout(over);

		setTimeout(function(){
			$(".consumer_gnb_sub_wrap").removeClass('active');

			$('#ui_gnb_block').css({
				opacity : 0,
				display : 'none'
			});

			if (url == '/consumer/index.do') {
				$('.gnbDp-1 > li').removeClass('topMenuOn');
			} else {
				$('.gnbDp-1 > li').removeClass('topMenuOn');
				memo_gnb_depth.addClass('topMenuOn');
			}
		},250);
	});


	$("#consumer_gnb .gnbDp-1 > li").on('mouseenter keyup', function(){
		$(this).addClass('topMenuOn').siblings().removeClass('topMenuOn');
	});

	//탭키 포커스
	$(".btn_sitemap").on("focusin",function(){

		$(".consumer_gnb_sub_wrap").removeClass("active");

		$('#ui_gnb_block').css({
			opacity : 0,
			display : 'none'
		});
		if (url == '/consumer/index.do') {
			$('.gnbDp-1 > li').removeClass('topMenuOn');
		} else {
			$('.gnbDp-1 > li').removeClass('topMenuOn');
			memo_gnb_depth.addClass('topMenuOn');
		}
	});

	//모바일 메뉴
	$('#mobile_gnb_wrap .gnbDp-1 > li > a').on('click', function(){
		if (!$(this).siblings('ul').is(':visible')) {
			$('#mobile_gnb_wrap .gnbDp-1 > li').removeClass('on topMenuOn');
			$('#mobile_gnb_wrap .gnbDp-1 > li > ul').slideUp();
			$(this).parent('li').addClass('on topMenuOn').children('ul').slideDown();
		} else {
			$('#mobile_gnb_wrap .gnbDp-1 > li').removeClass('on topMenuOn');
			$('#mobile_gnb_wrap .gnbDp-1 > li > ul').slideUp();
		}
	});


	/*$('#mobile_gnb_wrap .gnbDp-1 > li > ul > li').on('click', function(){
		if (!$(this).children('ul').is(':visible')) {
			$('#mobile_gnb_wrap .gnbDp-1 > li > ul > li').removeClass('on topMenuOn');
			$('#mobile_gnb_wrap .gnbDp-1 > li > ul > li > ul').slideUp();
			$(this).addClass('on topMenuOn').children('ul').slideDown();
		} else {
			$('#mobile_gnb_wrap .gnbDp-1 > li > ul > li').removeClass('on topMenuOn');
			$('#mobile_gnb_wrap .gnbDp-1 > li > ul > li > ul').slideUp();
		}
	});*/

	$('#mobile_gnb_wrap .mobile_gnb_innner ul li:has(ul)').each(function(){
	   $(this).children('a').addClass('has-sub').attr('href','javascript:;');
	});

	//모바일 메뉴
	$('.gnbDp-2 > li > a').on('click', function(){
		if( $(this).hasClass('has-sub') ){
			if( $(this).closest('li').hasClass('topMenuOn') ){
				$('.gnbDp-2 > li').removeClass('on topMenuOn')
			}else{
				$('.gnbDp-2 > li').removeClass('on topMenuOn')
				$(this).closest('li').addClass('on topMenuOn')
			}
		}
	});

	// 모바일 메뉴 열기
	$('.btn_gnb_view').on('click', function(){
		$('body').addClass('scroll-none').css('height', real_win_h);
		$('#mobile_gnb_wrap').addClass('active').css('height', real_win_h);
	});

	// 모바일 메뉴 닫기
	$('#btn_m_menu_close').on('click', function(){
		$('body, #mobile_gnb_wrap').removeClass('scroll-none').removeAttr('style');
		$('#mobile_gnb_wrap').removeClass('active');
	});

	//통합검색 모달 배경
	$(document).on('opening','.total_modal_search_wrap',function(){
		$(".remodal-wrapper").append("<button data-remodal-action='cancel' class='btn_total_modal_close'>닫기</button>");
		$(".remodal-overlay, .remodal-wrapper").addClass('bg_modal_total_search');
	});

	$(document).on('opened','.total_modal_search_wrap',function(){
		$(".input_modal_total_search").focus();
	});

	$(document).on('closing','.total_modal_search_wrap',function(){
		$('.btn_total_modal_close').remove();
		$(".remodal-overlay, .remodal-wrapper").removeClass('bg_modal_total_search');

	});

	//사이트맵
	$(document).on('opened','.sitemap_wrap',function(){
		$(".sitemap_close").focus();
	});

	//외국어
	$(document).on('opened','.foreign_wrap',function(){
		$(".consumer_modal_close").focus();
	});

	$(document).on('click','.btn_modal_open', function(){
		$('.iframe-header').trigger('click');
	});


	//$(".btn_modal_open").tabIndex( "#SeedModal" );
	//리모달 포커스
	$(document).on('opened', function(){
		/*$(this).find('a[href!="#"]') && $(this).find('a[href!="http"]') && $(this).find('a[href!="/"]')*/

/*        setTimeout(function(){
			$('button[data-remodal-action]').click()
		}, 1000)*/

		//$('div[data-remodal-id]').focus()

	});

	//크롬에서 브라우저에 저장한 id pass 노출현상 처리
	// if (navigator.userAgent.toLowerCase().indexOf('chrome') > = 0) {
	// 	$(window).load(function(){
	// 		$('input:-webkit-autofill').each(function(){
	// 			$(this).val().remove();
	// 		});
	// 	});
	// }

	//foreign
	$(document).on('click','.foreign_body .tabNavi button', function(){
		var li = $(this).closest('li');
		idx = li.index();

		li.siblings().removeClass('tabOn');
		li.addClass('tabOn');
		$('.consumer_modal_body .foreign .box > div').removeClass('on');
		$('.consumer_modal_body .foreign .box').eq( idx ).find("> div").addClass('on');

	});


	//$(window).on('orientationonchange load resize', function(){
	$(window).on('orientationonchange load resize', function(){
		clearTimeout(resizeTimeout)
		resizeTimeout = setTimeout(function(){
			viewportsizeGet();
			//$('#mobile_gnb_wrap .mobile_gnb_innner').css('height', real_win_h);

			if (real_win_w > 768) {
				var ui_box_info_style_01_tit = $('.ui_box_info_style_01 > dl > dt').outerWidth(true);
				$('.ui_box_info_style_01 > dl > dd').css('margin-left', ui_box_info_style_01_tit);
				$('.consumer_calrender_wrap > .tbl table tbody td').css('height', '109px');
			} else {
				$('.ui_box_info_style_01 > dl > dd').css('margin-left', 0);
				var consumer_calrender_H = $('.consumer_calrender_wrap .tbl table tbody td').hiLow('max');
				$('.consumer_calrender_wrap > .tbl table tbody td').css('height', consumer_calrender_H);
			}



		},100);

		$(".tbl .no_data, .tbl .colspan_change, .tbl_mypage .no_data, .tbl_mypage .colspan_change").each(function(idx, el){

			if (!mobile_break_point) {
				var no_data_cell_num = $(el).closest('tbody').prev('thead').find('> tr > th').length;
			} else {
				var no_data_cell_num = $(el).closest('tbody').prev('thead').find('> tr > th:not(.mobile_hidden)').length;
			}

			$(el).attr('colspan', no_data_cell_num);
		});

		//리사이즈할때 모바일 메뉴 닫기
		if( $('#mobile_gnb_wrap').hasClass("active") ){
			setTimeout(function(){
				$('body, #mobile_gnb_wrap').removeClass('scroll-none').removeAttr('style');
				$('#mobile_gnb_wrap').removeClass('active');
			},300);
		}

		//소비자톡톡- 이용후기
		if ( $(".tbl.list.td_showhide .btn_detail_view").hasClass('on') ) {
			$('.tbl.list.td_showhide .btn_detail_view').removeClass('on');
			$('.tbl.list.td_showhide tbody tr').removeClass('on');
			$('.tbl.list.td_showhide .view_txt').css('display','none').removeClass('on');
		}


		//전체메뉴 사이트맵
		//태블릿일때
		if(  !$(".btn_sitemap").is(":visible") ){
			$(".sitemap_close").trigger("click");
		}

		$('.consumer_calrender_wrap .tbl table tbody td:nth-child(5) .all_txt_view_wrap, .consumer_calrender_wrap .tbl table tbody td:nth-child(6) .all_txt_view_wrap, .consumer_calrender_wrap .tbl table tbody td:nth-child(7) .all_txt_view_wrap').addClass('posMove');



		//gnb inner 높이
		var gnbCount = 0;
		if( $(".nav_area").is(":visible") ){
			++gnbCount;
			if(gnbCount){
				//리사이징할때 안불러오기
				if( $("#consumer_gnb .gnbDp-2 > li.gnbDp-2-13").height() == '365' ){
					return false;
				}
				//함수실행
				deviceCheck('pc');
			}
		}else {
			return false;
		}

	})


	// 페이지 바로가기
	$('#skip a').on('click', function(){
		var txt = $(this).attr('href');
		txt = txt.replace(/\#/g,''); //특정문자 제거
		document.getElementById(txt).tabIndex = -1;
		document.getElementById(txt).focus();
		return false;
	});

	// 해피 브라우저 닫기
	$('.btn_browserupgrade_close').on('click',function(){
		$('.browserupgrade').slideUp({duration:500, easing:"easeInOutQuart"});
	});

	// youtue 동영상 감싸기
	$('iframe[src^="https://www.youtube.com/"]').wrap('<div class="youtubeWrap"></div>');

	// placeholder 효과 label
	var iText = $('.item > .i_label').next('.i_text');
	$('.item > .i_label').css('position', 'absolute');
	iText.focus(function(){
		$(this).prev('.i_label').css('visibility', 'hidden');
	}).blur(function(){
		if ($(this).val() == '') {
			$(this).prev('.i_label').css('visibility', 'visible');
		} else {
			$(this).prev('.i_label').css('visibility', 'hidden');
		}
	}).change(function(){
		if ($(this).val() == '') {
			$(this).prev('.i_label').css('visibility', 'hidden');
		} else {
			$(this).prev('.i_label').css('visibility', 'visible');
		}
	}).blur();

	// 관련기관
	$('.related_area_inner button').on('click', function(){
		if ($('.related_area_inner ul').is(':visible')) {
			$('.related_area_inner button').removeClass('on');
			$('.related_area_inner ul').css('display','none');
		} else {
			$('.related_area_inner button').addClass('on');
			$('.related_area_inner ul').css('display','block');
		}
	});


	if ( $('.tabNavi').length ) {
		$('.tabNavi').each(function(index, el){
			var tabNavi_child_count = $(el).find('li').length;
			//console.log(tabNavi_child_count);
			$(el).attr('data-col',tabNavi_child_count);
		});
	}

	if ( $('.tabNavi.consumer_compare').length ) {
		$('.tabNavi.consumer_compare li:last-child').addClass('btn_consumer_compare');
	}

	//if ( $('.tabNavi.con_show_hide').length ) {
		$(document).on('click', '.tabNavi.con_show_hide > li', function(){
			if ($('.con_show_hide_wrap > .con_show_hide_content').find('> .tabNavi_sub_wrap')) {
				$('.con_show_hide_sub_wrap > .con_show_hide_content').removeClass('active');
				$('.tabNavi_sub_wrap.con_show_hide_sub > .tabNavi_sub > li').removeClass('tabOn')
				$('.tabNavi_sub_wrap.con_show_hide_sub > .tabNavi_sub > li:first-child').addClass('tabOn')
				$('.con_show_hide_sub_wrap .con_show_hide_content:first-child').addClass('active');
			}
			var i = $(this).index();
			$(this).addClass('tabOn').siblings('li').removeClass('tabOn');
			$('.con_show_hide_wrap > .con_show_hide_content').removeClass('active');
			$('.con_show_hide_wrap > .con_show_hide_content').eq(i).addClass('active');
			$(window).resize();
			//setTimeout(function(){
			pagination();
			//},1000)
		});
	//}



	if ( $('.ui_form_box_wrap.has_tab').length ) {

		$('.goods_info_search_wrap > ul > li').on('click', function(){
			$('.goods_info_search_wrap > ul > li').removeClass('active');
			$(this).addClass('active');

			$(".goods_info_search_wrap > ul").css({
				'margin-bottom' :  $(".goods_info_search_wrap .active .goods_search_form").height() + 20
			})
		});

		//마진값 변경
		$(window).on('resize',function(){

			setTimeout(function(){
				var goods_info_search_height = $(".goods_info_search_wrap .active .goods_search_form").height();
				$(".goods_info_search_wrap > ul").css({
					'margin-bottom' :  goods_info_search_height + 20
				});
			},300);

		}).resize();
	}

	if ( $('.ui_form_box_wrap.goods_history_tab').length ) {

		//마진값 변경
		$(window).on('resize',function(){
			$(".goods_history_search_wrap > ul").css({
				'padding-bottom' :  $(".goods_history_search_wrap .active .form_wrap_inner").height() + 20
			})

		}).resize();



		//$('.goods_history_search_wrap > ul > li').on('click', function(){
			//$('.goods_history_search_wrap > ul > li').removeClass('active');
			// var li_num = $(this).index();
			// if (li_num == 1) {
			//     $('.ui_form_box_wrap.goods_history_tab').addClass('tree_hidden');
			//     $('.goods_history_search_wrap > ul').removeClass('search_op_03');
			//     $('.goods_history_search_wrap > ul').addClass('search_op_02');
			// } else if (li_num == 2) {
			//     $('.ui_form_box_wrap.goods_history_tab').removeClass('tree_hidden');
			//     $('.goods_history_search_wrap > ul').removeClass('search_op_02');
			//     $('.goods_history_search_wrap > ul').addClass('search_op_03');
			// } else {
			//     $('.ui_form_box_wrap.goods_history_tab').addClass('tree_hidden');
			//     $('.goods_history_search_wrap > ul').removeClass('search_op_02');
			//     $('.goods_history_search_wrap > ul').removeClass('search_op_03');
			// }
			//$(this).addClass('active');
		//});
	}

	if ( $('input[type="radio"]').length ) {
		$(':radio').on('change', function(){
			var real_parent = $(this).parent().attr('class');
			//console.log(real_parent);
			var real_id = $(this).attr('id');
			$('.'+ real_parent + ' label').removeClass('on');
			$('.'+ real_parent + ' label[for="' + real_id + '"]').addClass('on');
		});
	}


	/*if ( $('.tbl.list.td_showhide_vote .goods_review_vote_wrap').length ) {*/

		$(document).on('click', '.tbl.list.td_showhide_vote .goods_review_vote_wrap', function(){
			if ($(this).hasClass('on')) {
				$('.tbl.list.td_showhide_vote tr').removeClass('on');
				$('.tbl.list.td_showhide_vote .goods_review_vote_wrap').removeClass('on');
			} else {
				$('.tbl.list.td_showhide_vote tr').removeClass('on');
				$('.tbl.list.td_showhide_vote .goods_review_vote_wrap').removeClass('on');
				$(this).addClass('on').parents('tr').addClass('on');
			}
		});
		$(document).on('click', '.vote_up, .vote_down', function(e){
			e.stopPropagation();
		});

	/*}*/

	function pagination(){
		var pagination = $('.ui_pagination_wrap .ui_pagination_inner > ul');
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
					slideMargin: 0,
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
					slideMargin: 0,
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
				// if (currentDivice == 'mobile640') {
				//     tab_border_color_change();
				// } else {
				//     $('.goods_history_search_wrap > ul > li:nth-child(2) > button').removeAttr('style');
				//     $('.goods_history_search_wrap > ul > li:nth-child(3) > button').removeAttr('style');
				// }

				if( !!paginations.destroySlider ){
					paginations.destroySlider();
				}

				paginations.bxSlider( bxOpts[currentDivice] );
				items = paginations.find('li');
				current = paginations.find('strong').parent().index();

				if( current >= 5 ){
					$('.bx-next').hide();
				} else if ( current <= 4 ){
					$('.bx-prev').hide();
				}

				if( current > 4 ){
					setTimeout(function(){
						$('.bx-next').click();
					});
				}
			}).resize();

		});
	}

	if( $('.ui_pagination_wrap .ui_pagination_inner > ul').length ){
		pagination();
	};

	//if ( $('.tabNavi_sub_wrap.con_show_hide_sub').length ) {
		$(document).on('click', '.tabNavi_sub_wrap.con_show_hide_sub > .tabNavi_sub > li', function(){

			var i = $(this).index();
			$(this).addClass('tabOn').siblings('li').removeClass('tabOn');
			$('.con_show_hide_sub_wrap > .con_show_hide_content').removeClass('active');
			$(this).parents('.tabNavi_sub_wrap').next('.con_show_hide_sub_wrap').children('.con_show_hide_content').eq(i).addClass('active');
			$(window).resize();
			pagination();
		});
	//}

	//if ( $('.tbl.list.td_showhide').length ) {
		if (!$('.tbl.list.td_showhide tbody tr:last-child').is(':visible')) {
			$('.tbl.list.td_showhide tbody tr:last-child').prev('tr').children('td').css('border-bottom','0');
		}
		$(document).on('click','.tbl.list.td_showhide .btn_detail_view', function(){
			$(".tbl.td_showhide .mobile_hidden").is(":visible") ? $(".colspan_change").attr('colspan',5) : $(".colspan_change").attr('colspan',2);

			if ($(this).hasClass('on')) {
				$('.tbl.list.td_showhide .btn_detail_view').removeClass('on');
				$('.tbl.list.td_showhide tbody tr').removeClass('on');
				$('.tbl.list.td_showhide .view_txt').css('display','none').removeClass('on');
			} else {
				$('.tbl.list.td_showhide .btn_detail_view').removeClass('on');
				$('.tbl.list.td_showhide tbody tr').removeClass('on');
				$('.tbl.list.td_showhide .view_txt').css('display','none').removeClass('on');
				$(this).addClass('on');
				$(this).parents('tr').addClass('on');
				$(this).parents('tr').next('tr').addClass('on');
				$(this).parents('tr').next('tr').css('display', 'table-row');
			}
		});
	//}

	//페이징 가로 사이즈
	//$('.neo_pagination a, .neo_pagination strong').css('width',getMaxChildWidth($('.neo_pagination')));
	//$('.pagination a').css('width', getMaxChildWidth($('.pagination-wrapper')));


	//페이지 상단으로 이동
	$(window).scroll(function(){
		if( $(this).scrollTop() > 100 ){
			$('.topGo').fadeIn();
		}else{
			$('.topGo').fadeOut();
		}
	});

	$('.topGo').on('click', function(){
		$('html, body').animate({
			scrollTop:0},
			800,'easeInOutCirc');
	})

	//도큐멘트 높이 윈도우 높이 사이즈 체크
	function viewportsizeGet(){
		real_doc_h = getDocHeight();
		real_win_w = $(window).width();
		real_win_h = $(window).outerHeight();
		mobile_break_point = $(".mobile_break_point").is(":visible");

		return real_doc_h, real_win_w, real_win_h, mobile_break_point;
	}

	$(document).tabIndex( ".provision_wrap" );
});


// 높이값 높은것 낮은것 알아오기
// ex) var business_box_H = $('.business_box > li').hiLow('max');
$.fn.hiLow = function( arg ){
	var height = this.map(function( idx, el ){
		return $(el).height();
	}).get();
	return this.height( Math[(arg !== 'min') ? 'max' : 'min'].apply( null,height ) );
}

// 높이값 가져오기
function getDocHeight() {
	var D = document;
	return Math.max(
		D.body.scrollHeight, D.documentElement.scrollHeight,
		D.body.offsetHeight, D.documentElement.offsetHeight,
		D.body.clientHeight, D.documentElement.clientHeight
	)
}

// 중앙 팝업창 띄우기
function PopupCenter(url, title, w, h) {
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

// 중앙 팝업닫기
function popupCloseWin() {
	self.opener = self;
	window.close();
}

// 페이징 사이즈
// ex) $('.neo_pagination a, .neo_pagination strong').css('width',getMaxChildWidth($('.neo_pagination')));
function getMaxChildWidth(sel) {
	max = 0;
	$(sel).find('a').each(function(){
		var c_width = parseInt($(this).width());
		if (c_width <= 15) {
			max = 15;
		} else {
			if (c_width > max) {
				max = c_width;
			}
		}
	});
	return max;
}


// 탭 인덱스
// ex) $("#check1").tabIndex( ".member_step01_perd" );
$.fn.tabIndex = function( obj ){
	$(this).focusin(function(){
		$(obj).attr('tabindex',0);
	});
	$(obj).focusout(function(){
		$(this).removeAttr('tabindex');
	});
};

//browser check
function msieversion(){
	var ua = window.navigator.userAgent;
	var msie = ua.indexOf('MSIE ');
	if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
		$('html').addClass('ie-hate');
	}
	return false;
}
