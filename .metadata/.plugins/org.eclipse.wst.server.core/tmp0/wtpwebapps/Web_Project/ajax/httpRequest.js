function getXMLHttpRequest() {
	if (window.ActiveXObject) {
		try {
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch(e) {
			try {
				return new ActiveXObject("Microsoft.XMLHTTP");
			} catch(e1) { return null; }
		}
	} else if (window.XMLHttpRequest) {
		return new XMLHttpRequest();
	} else {
		return null;
	}
}
var httpRequest = null;

function sendRequest(url, params, callback, method) {
	httpRequest = getXMLHttpRequest();
	var httpMethod = method ? method : 'GET';

	if (httpMethod != 'GET' && httpMethod != 'POST') {
		httpMethod = 'GET';
	}
	
	var httpParams = (params == null || params == '') ? null : params;
	var httpUrl = url;
	
	if (httpMethod == 'GET' && httpParams != null) {
		httpUrl = httpUrl + "?" + httpParams;
	}
	
	//비동기식이면 true
	httpRequest.open(httpMethod, httpUrl, true);
	httpRequest.setRequestHeader(
		'Content-Type', 'application/x-www-form-urlencoded');
	
	//서버로 부터 도착하면 사용
	httpRequest.onreadystatechange = callback; 
	httpRequest.send(httpMethod == 'POST' ? httpParams : null);
}












