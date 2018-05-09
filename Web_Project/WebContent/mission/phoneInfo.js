function PhoneInfo(name,phone,birth){
		this.name = name;
		this.phone = phone;
		this.birth = birth;
	}
	
	
PhoneInfo.prototype = {
		getName : function() { return name; },
		getPhone : function() { return phone; },
		getBirth : function() { return birth; },
		setName : function(name){
			this.name = name;
		},
		setPhone : function(phone){
			this.phone = phone;
		},
		setBirth : function(birth){
			this.birth = birth;
		},
		toString : function(){
			return "이름: " +this.name + "\t번호: " + this.phone + "\t생일: " + this.birth;
		}
		
}	
