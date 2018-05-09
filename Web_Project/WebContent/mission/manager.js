var phoneArr = [];
var result;

function Manager(){
	//1.입력
	this.addInfo = function(){
		var name = String(prompt('이름을 입력'));
		var phone = String(prompt('번호 입력'));
		var birth = String(prompt('생일 입력'));
		
		phoneArr.push(new PhoneInfo(name,phone,birth));
//		alert('이름: '+ name + ' 번호: '+ phone +' 생일 : '+birth+' 저장되었습니다.');
	}
	
	//2.출력
	this.phoneList = function(){
		for(var i in phoneArr){
		//	document.write(phoneArr[i].toString()+"<br>");
			alert(phoneArr[i].toString());
		}
	}
	
	//3.검색
	this.searchPhone = function(){
		var name = prompt('검색할 이름');
		var index = -1;
		
		for(var i in phoneArr){
			if(phoneArr[i].name == name){
				index=1;
				alert(phoneArr[i].toString());	
			}
		}
		
		if(index < 0){
			alert("대상 없음");
		}	
}
	
	//4.수정
	this.updatePhone = function(){
		var name = prompt('수정할 이름을 입력하시오.');
		var index = -1;
		
		for(var i in phoneArr){
			if(phoneArr[i].name == name){
				index = i;
			}
		}
		
		if(index < 0){
			alert("대상 없음");
		}else{
			var phone = prompt('전화번호 입력');
			phoneArr[index].setPhone(phone);
		}		
	}
	
	//5.삭제
	this.deletePhone = function(){
		var name = String(prompt('삭제할 이름을 입력하시오.'));
		
		var index = -1;
			
		for(var i in phoneArr){
			if(phoneArr[i].name == name){
					index = i;
					phoneArr.splice(index, 1);
				}
			}
			
			if(index < 0){
				alert("검색한 이름이 존재하지 않습니다.");
			}				
	}
}

var m = new Manager();

window.onload = function(){
	result = document.getElementById("result");
	
	while(true){
		var menu = Number(prompt('1.입력 2.출력 3.검색 4.수정 5.삭제 6.종료'));
		
		switch(menu){
		case 1:
			m.addInfo();
			break;
		case 2:
			m.phoneList();
			break;
		case 3:
			m.searchPhone();
			break;
		case 4:
			m.updatePhone();
			break;
		case 5:
			m.deletePhone();
			break;
		case 6:
			alert('프로그램 종료');
			return;
		}
	}
}