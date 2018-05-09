var createCanvasImage = function(selector, divWidth){
			
	// 원본이미지 
	var originalImg = $(selector),
		
	containerW = divWidth,

	// 넘겨진 원본 이미지 정보를 토대로 캔버스 생성
	convertImageToCanvas = function(image) {

		// 캔버스 생성
		var canvas = document.createElement("canvas");
		// set canvas width 
		canvas.width = containerW; 
		// set canvas height
		canvas.height = image.naturalHeight;
		// set canvas alt
		canvas.alt = image.alt; 
		// set canvas title
		canvas.title = image.title; 
			
			// 이미지를 자를 영역의 시작 x좌표
		var sourceX = ( image.naturalWidth - canvas.width ) / 2,
			// 이미지를 자를 영역의 시작 y좌표
			sourceY = 0,
			// 이미지를 자를 영역 넓이
			sourceWidth = canvas.width,
			// 이미지를 자를 영역 높이
			sourceHeight = canvas.height,
			// 자른 이미지가 그려지는 x좌표
			destWidth = sourceWidth,
			// 자른 이미지가 그려지는 y좌표
			destHeight = sourceHeight,	
			// 자른 이미지의 넓이
			destX = canvas.width / 2 - destWidth / 2,
			// 자른 이미지의 높이
			destY = canvas.height / 2 - destHeight / 2;
			
			// 캔버스 그리기
			canvas.getContext("2d").drawImage(
				image, sourceX, sourceY, sourceWidth, sourceHeight, destX, destY, destWidth, destHeight
			);		
			
		return canvas;
	},	
	// 캔버스 정보를 받아 새로운 이미지 반환 
	convertCanvasToImage = function( canvas ) {

		var image = new Image();

		image.src = canvas.toDataURL("image/png");
		image.alt = canvas.alt;
		image.title = canvas.title;

		return image;
	};
	
	originalImg.each(function( idx, image ){
		// 캔버스 생성
		var canvas = convertImageToCanvas( image ),
		// 이미지 생성 
		newImages = convertCanvasToImage( canvas );
		// 기존 이미지를 새로 생성한 이미지로 교체 
		$(image).replaceWith( newImages );
	});
}	