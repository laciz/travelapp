function showpost(userid){
var uid=userid;
var xhttp=new XMLHttpRequest();

xhttp.onreadystatechange=function(){

document.getElementById("post").innerHTML=xhttp.responseText;

}
var param="uid="+uid+"";
xhttp.open("POST",'getpost.php');
xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

xhttp.send(param);


}