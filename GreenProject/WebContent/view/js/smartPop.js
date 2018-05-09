if( typeof Object.create !== 'function' ){
	Object.create = function( obj ){
		function F(){}
		F.prototype = obj;
		return new F();
	};
}

;(function( window, document, $, undefined ){

	var Modal = {
		init : function( options ){
			var self = this;

			self.url = ( typeof options === 'string' ) ? options : options.url;
			self.title = ( typeof options === 'string' ) ? options : options.title;

			self.options = $.extend( {}, $.SeedModal.options, ( typeof options === 'string' ) ? {} : options );

			// 전체박스
			self.SeedModalEl = $('<div />',{'id' : 'SeedModal', 'class' : 'seed-hide'}).append('<span class="rolling"></span>');
			// 아이프레임 박스
			//width size
			self.width = options.width;
			self.SeedIframeBoxEl = $('<div />').addClass('iframe-box seed-hide').css('width',self.width).click(false);

			// 아이프레임 헤더
			self.SeedIframeHeader = $('<div />').addClass('iframe-header');
			// 아이프레임
			self.SeedIframeEl = $('<iframe />').attr({id : 'SeedIframe', frameBorder: 0, scrolling: 'no', height : 'auto' });

			self.isScrollVisible = false;

			this.display().done(function(){

				self.load();

				self.SeedModalEl.find('.rolling').fadeOut(function(){
					$(this).remove();
				});

				if( typeof self.options.callback === 'function' ){
					self.options.callback();
					return;
				}
			});
			// refresh event
			self.SeedIframeEl.load(function(){ self.calcHeight(); });

			return this;
		},
		load : function(){
			var self = this;
			this.SeedIframeBoxEl.addClass('seed-open');
			$('body, html').addClass('scroll-hidden');

			$(window).on('resize.calcHeight', function(){
				self.calcHeight();
			}).resize();

/*			if(self.options.focus){
                if( self.options.focus == '#SeedModal' ){
                    console.log( $('#SeedModal').find( '.iframe-header' ) );
                    $('#SeedModal').find( '.iframe-header' ).attr('tabIndex','-1').focus();
                }else{
                    console.log('끝')
                    $(this.SeedIframeEl).contents().find( self.options.focus ).focus();
                }
            }*/

            if(self.options.focus){
                $(this.SeedIframeEl).contents().find( self.options.focus ).attr('tabIndex','-1').focus();
            }

			this.tabResize();
		},
		close : function(){
			var self = this;
			var modal =
			this.SeedModalEl.add( this.SeedIframeBoxEl )
				.removeClass('seed-open')
				.one('transitionend webkittransitionend otransitionend mstransitionend', function(){
					callback();
				});
				if( !$.support.transition ){
					setTimeout(function(){
						callback();
					}, 400);
				}
			;
			function callback(){
				$('body, html').removeClass('scroll-hidden');
				self.tabResize();
				modal.remove();
				$(window).off('resize.calcHeight');
			}
		},
		fetch : function(){
			return this.SeedIframeEl.attr({
				src : this.url,
				title : this.title
			});
		},
		display : function(){
			var deferred = $.Deferred();
			var self = this;

			$('body')
				.append(
					this.SeedModalEl.click(function(){ if( self.options.close ){ self.close(); }  })
					.append(
							this.SeedIframeBoxEl
							.append(
								this.SeedIframeHeader
									.append(
										$('<strong>'+ this.options.title +'</strong>')
									)
									.append(
										(function(){
											//if( !self.options.close ){ return ''; }
											return $('<button class="closeBtn">×</button>').click(function(){
												self.close.call( self );
											});
										}())
									)
							)
							.append(
								this.fetch().load(function(){
									setTimeout(function(){  deferred.resolve()  }, 250);
								})
							)
					)
				)
			;
			setTimeout(function(){
				self.SeedModalEl.addClass('seed-open');
			}, 25);

			return deferred.promise();
		},
		tabResize : function(){
			if( window.tabResize && typeof window.tabResize === 'function' ){
				window.tabResize();
			}
		},
		calcHeight : function(){

		  this.SeedIframeEl[0].height = 0;

		  var the_height=
		    this.SeedIframeEl[0].contentWindow.
		      document.body.scrollHeight + 50;

		  this.SeedIframeEl[0].height=
		      the_height;
		}
	}

	$.SeedModal = function( options ){
		var modal = Object.create( Modal );
		modal.init( options );
	}

	$.SeedModal.options = {
		url : 'http://www.global-it.kr/season2/index.do',
		title : 'SEED 3.0',
		callback : undefined,
		close : true
	}



}( window, document, $ ));
