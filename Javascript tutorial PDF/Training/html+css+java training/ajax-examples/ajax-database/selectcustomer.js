// JavaScript Document
var xmlHttp
function showCustomer(str) {
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
      if (xmlHttp.readyState==4) { document.getElementById("txtHint").innerHTML=xmlHttp.responseText;
      }
}
function GetXmlHttpObject() {
    var xmlHttp=null;
    try {
               xmlHttp=new XMLHttpRequest();
       }
	catch (e) {
               try {
               xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
               }
               catch (e) {
               		xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
               }
       }
return xmlHttp;
}
