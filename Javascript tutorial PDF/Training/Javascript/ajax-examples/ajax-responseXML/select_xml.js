// JavaScript Document
var xmlHttp
function showDetails(str) { 
xmlHttp=GetXmlHttpObject();
if (xmlHttp==null) {
       alert ("Your browser does not support AJAX!");
       return;
}
var url="getcustomer.asp";
url=url+"?q="+str;
url=url+"&sid="+Math.random();
xmlHttp.onreadystatechange=stateChanged;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);
}
function stateChanged() {
if (xmlHttp.readyState==4) {
var xmlDoc=xmlHttp.responseXML.documentElement;

document.getElementById("age").innerHTML=
xmlDoc.getElementsByTagName("age")[0].childNodes[0].nodeValue;

document.getElementById("city").innerHTML=
xmlDoc.getElementsByTagName("city")[0].childNodes[0].nodeValue;

document.getElementById("value").innerHTML=
xmlDoc.getElementsByTagName("value")[0].childNodes[0].nodeValue;
}
}
function GetXmlHttpObject() {
var xmlHttp=null;
try {
       // Firefox, Opera 8.0+, Safari
       xmlHttp=new XMLHttpRequest();
}
	catch (e) {
      	 // Internet Explorer
       	try {
       	xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
       	}
       	catch (e) {
       	xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
       	}
	}
return xmlHttp;
}
