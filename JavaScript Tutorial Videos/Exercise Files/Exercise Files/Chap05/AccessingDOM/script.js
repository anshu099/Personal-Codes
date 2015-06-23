var mainTitle = document.getElementById("mainTitle");
console.log("this is element of type :",mainTitle.nodeType);
console.log("this is the Inner html : ",mainTitle.innerHTML);
console.log("this is childnode length :",mainTitle.childNodes.length);

var myList = document.getElementById("homeNav");
var Listitems = myList.getElementsByTagName("a");
console.log("Links in html : " , Listitems.length);
