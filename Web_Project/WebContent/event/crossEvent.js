var cross = {};
cross.Event = {};

cross.Event.addListener = function(element,name,handler,capture){
	capture = capture | false; // 캡쳐가 있으면 캡쳐값 없으면  false값
	
	if(element.addEventListener){
		//표준브라우저
		element.addEventListener(name,handler,capture);
	}else{
		//구형 IE
		element.addEventListener('on'+name, handler);
	}
	
}

cross.Event.stopBubble = function(event){
	if(event.stopPropagation){ //표준브라우저에서 이벤트 버블링을 방지하는 함수
		event.stopPropagation();
	}else{ //구형일경우
		event.cancelable = true;
	}
}