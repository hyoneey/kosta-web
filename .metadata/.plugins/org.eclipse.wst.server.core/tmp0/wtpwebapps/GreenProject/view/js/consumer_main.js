/**
 * 메인 스크립트
 */

$(function(){

    //ios 행복드림표지제 다운로드 제한
    var iOS = /iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream;
    if( iOS ){
        $(".dream_down").addClass("hide");
    }

    //계절별 bg
    //var month = new Data();

	var setProductSearch = function (type) {

		if(type) {

			$("input[id^=item_]").each(function (idx, item, self) {

				var thisName = "";

				if($(item).attr("id").indexOf(type) > -1) {
					thisName = "search";
				} else {
					thisName = "";
				}

				$(item).attr("name", thisName);
			});

			var column = "";

			if(type === "01") {
				column = "01";
			} else if(type === "02") {
				column = "03";
			}

			$("#colulmn").val("column");
			$("#seCode").val(type);
		}
	};

	setProductSearch("01");

    //리콜
    var recall_cert_list = $('.recall_cert_area > ul > li');
    $('.recall_cert_area > ul > li').on('click', function(){
        recall_cert_list.removeClass('active');
        $(this).addClass('active');
    });

    //피해예방주의보
    var mini_bbs_slider_01 = $('.main_mini_bbs_01').bxSlider({
        mode : 'vertical',
        pager: false,
        controls : false,
        infiniteLoop : false
    });

    $('#btn_mini_bbs_slider_prev_01').on('click', function(){
        mini_bbs_slider_01.goToPrevSlide();
    });
    $('#btn_mini_bbs_slider_next_01').on('click', function(){
        mini_bbs_slider_01.goToNextSlide();
    });

    //공지사항
    var mini_bbs_slider_02 = $('.main_mini_bbs_02').bxSlider({
        mode : 'vertical',
        pager: false,
        controls : false,
        infiniteLoop : false,
        auto : true
    });

    $('#btn_mini_bbs_slider_prev_02').on('click', function(){
        mini_bbs_slider_02.goToPrevSlide();
    });
    $('#btn_mini_bbs_slider_next_02').on('click', function(){
        mini_bbs_slider_02.goToNextSlide();
    });

    //카드뉴스

    var card_slider = $('.card_slider').bxSlider({
        pager: false,
        controls : false,
        infiniteLoop : false,
        slideWidth : 220,
        minSlides : 3,
        maxSlides : 3,
        moveSlides : 3,
        slideMargin : 58
    });

    function bxSlider_card(){
        var width = $(window).width();
        if (width > 1139) {
            card_slider.reloadSlider({
                pager: false,
                controls : false,
                infiniteLoop : false,
                slideWidth : 220,
                minSlides : 3,
                maxSlides : 3,
                moveSlides : 3,
                slideMargin : 1000
            });
        } else if (width >= 640 && width <= 768) {
            card_slider.reloadSlider({
                pager: false,
                controls : false,
                infiniteLoop : false,
                slideWidth : 220,
                minSlides : 2,
                maxSlides : 2,
                moveSlides : 2,
                slideMargin : 40
            });
        } else if (width < 639) {
            card_slider.reloadSlider({
                pager: false,
                controls : false,
                infiniteLoop : false,
                slideWidth : 232,
                minSlides : 2,
                maxSlides : 2,
                moveSlides : 2,
                slideMargin : 20
            });
        }
    }

    var qucik_menu_white_slider = $('.qucik_menu_white_wrap > ul').bxSlider();
    qucik_menu_white_slider.destroySlider();

    function bxSlider_qucik_menu(){
        var width = $(document).width();
        //console.log(width)
        if (width >= 1001) {
            qucik_menu_white_slider.destroySlider();
        } else if (width >= 769 && width <= 1000) {
            qucik_menu_white_slider.reloadSlider({
                pager: false,
                controls : false,
                infiniteLoop : false,
                slideWidth : 184,
                minSlides : 5,
                maxSlides : 5,
                moveSlides : 1,
                slideMargin : 0
            });
        } else if (width >= 640 && width <= 768) {
            qucik_menu_white_slider.reloadSlider({
                pager: false,
                controls : false,
                infiniteLoop : false,
                slideWidth : 184,
                minSlides : 3,
                maxSlides : 3,
                moveSlides : 1,
                slideMargin : 0
            });
        } else if (width <= 639) {
            qucik_menu_white_slider.reloadSlider({
                pager: false,
                controls : false,
                infiniteLoop : false,
                slideWidth : 184,
                minSlides : 2,
                maxSlides : 2,
                moveSlides : 1,
                slideMargin : 0
            });
        }
    }

    //mini_infograph infograph02
    //스토리로보는 세계
    var mini_infograph = $(".mini_infograph.infograph02 ul").bxSlider({
        pager: true,
        controls : false,
        infiniteLoop : true,
        //slideWidth : 275,
        minSlides : 1,
        maxSlides : 1,
        moveSlides : 1,
        slideMargin : 0,
        auto : true,
        autoHover : true
    })


    var resizeTimeout;
    $(window).on('orientationonchange load resize', function(){
        clearTimeout(resizeTimeout)

        resizeTimeout = setTimeout(function(){
            var width =$(window).width();
            bxSlider_qucik_menu();
            bxSlider_card();


            var mainVisualDotSize = $('.visual_80 .owl-dots').width();
            mainVisualDotSize = mainVisualDotSize + 54;
            //console.log(mainVisualDotSize);
            $('.visual_80 .visual_80_play, .visual_80 .visual_80_stop').css('left',mainVisualDotSize);

            $(".card_news_slider_wrap").css("overflow","visible");



            if (width <= 1139) {
                var card_top_padding = $('.card_news_slider_wrap dl dt .card_news_bg').outerHeight(true);
                $('.card_news_slider_wrap dl').css('padding-top',card_top_padding);
                var infographics_list_h = $('.infographics_list li')[0].getBoundingClientRect().height;

                infographics_list_h = parseInt(infographics_list_h);
                //console.log(infographics_list_h);
                //$('.infographics_list li a').css('padding-top',infographics_list_h);
                // setTimeout(function(){
                //     $(".infographics_list .mini_infograph a").css('height', $(".popup_zone").height() );
                // },300)


                if (width >= 769 && width <= 1139) {
                    //$('.popup_zone').css('height',infographics_list_h);
                    //$('.infographics_list').css('height',infographics_list_h);
                    var recall_cert_area_w = $('.recall_cert_area')[0].getBoundingClientRect().width;
                    recall_cert_area_w = recall_cert_area_w - 48;

                    setTimeout(function(){
                        $(".infographics_list .mini_infograph a").css('height', $(".popup_zone").height() );
                    },300)


                } else {
                    $('.popup_zone').removeAttr('style');
                    $('.infographics_list .mini_infograph a').removeAttr('style');
                }

                if (width <= 879) {
                    var recall_cert_area_sum;
                    var recall_cert_area_w = $('.recall_cert_area')[0].getBoundingClientRect().width;
                    recall_cert_area_w = recall_cert_area_w - 40;
                    var recall_cert_area_div_h = $('.recall_cert_area > ul > .active > div')[0].getBoundingClientRect().height;
                    var cat_list_h = $('.cat_list').outerHeight(true);
                    //recall_cert_area_sum = (recall_cert_area_div_h + cat_list_h) + 110;
                    //$('.recall_cert_area').css('height',recall_cert_area_sum);
                } else {
                    $('.recall_cert_area').removeAttr('style');
                }
                //console.log(recall_cert_area_w);
                $('.recall_cert_area > ul > li > div').css('width',recall_cert_area_w);
            } else {
                $('.popup_zone, .recall_cert_area, .recall_cert_area > ul > li > div').removeAttr('style');
                $('.infographics_list .mini_infograph a').removeAttr('style');
                $(".infographics_list .mini_infograph a").css('height', 270 );
            }
        },100);
    });

    $('#btn_card_news_prev').on('click', function(){
        card_slider.goToPrevSlide();
    });
    $('#btn_card_news_next').on('click', function(){
        card_slider.goToNextSlide();
    });

    $('.card_slider dd').each(function(index, element){
        $clamp(element, { clamp : 2 });
    });

    //하단 인포그래픽 타이틀
    $(".infograph01 a").prepend("<strong class='bbs_tit'>인포그래픽</strong>");
    $(".infograph02 a").each(function(idx,el){
        if( idx == 0 || idx == 2 ){
            $(el).prepend("<strong class='bbs_tit'>웹툰으로 보는 사례</strong>")
        }else {
            $(el).prepend("<strong class='bbs_tit'>스토리로 보는 사례</strong>")
        }
    });

    //상품조회 서비스
    $('.product_search_area_list  li button').on('click', function (e) {

        var inx = $(this).closest('li').index();
        var thisNo = $(this).attr("id").split("_")[1];

        setProductSearch(thisNo);

        $('.product_item_box .item').removeClass('on');
        $('.product_item_box .item').eq(inx).addClass('on');

        $('.product_search_area_list  li').removeClass('on');
        $(this).closest('li').addClass('on');
    })


});
