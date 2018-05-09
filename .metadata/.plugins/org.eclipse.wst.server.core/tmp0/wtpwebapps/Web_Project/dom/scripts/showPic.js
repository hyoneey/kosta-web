	function showPic(obj){
		//getAttribute는 속성값을 뽑아옴
		var source = obj.getAttribute("href");
		var placeholder = document.getElementById("placeholder"); //이미지태그
		placeholder.setAttribute("src",source);
		
 		var text = obj.getAttribute("title");
		var description = document.getElementById("description");
		
		if(description.firstChild.nodeType == 3){ //nodetype 3은 텍스트타입
			description.firstChild.nodeValue = text;
		}
		
		return false;
		
	}
	
	function prepareGallery(){
		var imagegallery = document.getElementById("imagegallery");
		var links = imagegallery.getElementsByTagName("a"); //태그네임은 배열을 사용하기 위해
		
		for(var i=0; i<links.length; i++){
			links[i].onclick = function () { //function을 해주는 이유는 this를 넘겨주기 위해서 사용. 
				return showPic(this);
			}
		}
	}
	
	
/*	<img id="placeholder" src="images/placeholder.gif" alt="myImage"/>
	<p id="description">Choose an image</p>*/
	
	
	function preparePlacehorder(){
		var img = document.createElement("img");
		img.setAttribute("id", "placeholder");
		img.setAttribute("src",  "images/placeholder.gif");
		img.setAttribute("alt",  "myImage");
		
		//parent노드는 body 이고, 바디의 마지막 노드는 body끝 전
		var imagegallery = document.getElementById("imagegallery");
		imagegallery.parentNode.appendChild(img);
		
		var p = document.createElement("p");
		p.setAttribute("id", "description");
		
		
		var dtext = document.createTextNode("Choose an image");
		p.appendChild(dtext);
		
		//이미지 위에 글자를 넣어줌 => insertBefore(새로 넣고자 하는 태그, 기준점)
		imagegallery.parentNode.insertBefore(p, img);
	}
		
	window.onload = function(){
			prepareGallery();
			preparePlacehorder();
		}
		
		