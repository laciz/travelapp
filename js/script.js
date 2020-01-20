/*document.getElementById("features_tab").style.borderLeft="1px solid white";
document.getElementById("about_us_tab").style.borderLeft="1px solid white";
document.getElementById("contact_tab").style.borderLeft="1px solid white";
*/

function register_window(a){
    var c=a; 
    if(c == 1){
         document.getElementById("register").style.display="grid";
         document.getElementById("header_col").style.filter="blur(5px)";
         document.getElementById("header_col_2").style.filter="blur(5px)";
         document.getElementById("features_container").style.filter="blur(5px)";
         document.getElementById("about_col").style.filter="blur(5px)";
        document.getElementById("login_container").style.display="none";
        // document.body.style.overflow="hidden";
     }
     if(c == 2){
        document.getElementById("register").style.display="none";
        document.getElementById("header_col").style.filter="";
         document.getElementById("header_col_2").style.filter="";
         document.getElementById("features_container").style.filter="";
         document.getElementById("about_col").style.filter="";
         document.getElementById("login_container").style.display="none";
         document.body.style.overflow="";
     }

     if(c == 3){
         document.getElementById("login_container").style.display="grid";
         document.getElementById("header_col").style.filter="";
         document.getElementById("header_col_2").style.filter="";
         document.getElementById("features_container").style.filter="";
         document.getElementById("about_col").style.filter="";
         document.getElementById("register").style.display="none";

     }
     }
/*
function check_form(){
    var name=document.getElementById("form_name_input").value;
    var lastname=document.getElementById("form_lastname_input").value;
    var username=document.getElementById("form_username_input").value;
    var password_one=document.getElementById("form_password_one").value;
    var password_two=document.getElementById("form_password_two").value;
    var email=document.getElementById("form_email_input").value;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var numbers = /^[0-9]+$/;

    if((name.length <3) || (name.match(numbers))){
        document.getElementById("form_name_input").style.border="3px solid  red";
        return false;
    }
    if (lastname.length <3 && lastname.match(numbers)){
        document.getElementById("form_lastname_input").style.border="3px solid  red";
        return false;
    }
    if (username.length <6){
        document.getElementById("form_username_input").style.border="3px solid  red";
        return false;
    }
    if ((password_one.length <6) ||  (password_two.length <6) || (password_one!==password_two)){
        document.getElementById("form_password_one").style.border="3px solid  red";
        document.getElementById("form_password_two").style.border="3px solid  red";
        return false;
    }
    if (email.match(mailformat)==null){
        document.getElementById("form_email_input").style.border="3px solid  red";
        return false;
    }

}
*/
function user_register(){
    var xmlhttp = new XMLHttpRequest();

        xmlhttp.onreadystatechange=function(){
            document.getElementById("register_user").innerHTML=xmlhttp.responseText;
            document.getElementById("register").style.height="200px";
            document.getElementById("register_text").innerHTML="Siker!";

        };



    var name=document.getElementById("form_name_input").value;
    var lastname=document.getElementById("form_lastname_input").value;
    var username=document.getElementById("form_username_input").value;
    var password_one=document.getElementById("form_password_one").value;
    var password_two=document.getElementById("form_password_two").value;
    var email=document.getElementById("form_email_input").value;



    var params = "form_name_input="+name+"&form_lastname_input="+lastname+"&form_username_input="+username+"&form_password_one="+password_one+"&form_password_two="+password_two+"&form_email_input="+email+"";
    xmlhttp.open('POST', 'functions/register/register.php ', true);
    xmlhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xmlhttp.send(params);

}


document.getElementById("form_name_input").onchange = function() {firstName()};
document.getElementById("form_lastname_input").onchange = function() {lastName()};
document.getElementById("form_username_input").onchange = function() {userName()};
document.getElementById("form_email_input").onchange = function() {emailAdress()};
document.getElementById("form_password_one").onchange = function() {password()};
document.getElementById("form_password_two").onchange = function() {password()};

function firstName() {

    var name = document.getElementById("form_name_input");
    var name_span=document.getElementById("name_span");
    var numbers = /^[a-zA-Z\u00C0-\u00FF]+$/;
    if( (name.value.length<2) || (!numbers.test(name.value))){
       name_span.innerHTML="A neved nem tartalmazhat betüt és speciális karaktert(Minimum:2 karakter)" +
           "";
      // name_span.style.backgroundColor="red";
     name_span.style.color="red";

        document.getElementById("submit_button").addEventListener("click", function(event){
            event.preventDefault()
        });
    }else{
       name_span.innerHTML="Megfelelő név";
       name_span.style.color="darkgreen";
    }
}
function lastName(){
    var lastname = document.getElementById("form_lastname_input");
    var lastname_span=document.getElementById("lastname_span");
    var numbers = /^[a-zA-Z\u00C0-\u00FF]+$/;

    if( (lastname.value.length<2) || (!numbers.test(lastname.value))){
        lastname_span.innerHTML="A vezetékneved nem tartalmazhat betüt és speciális karaktert(Minimum:2 karakter)" +
            "";
       // lastname_span.style.backgroundColor="red";
        lastname_span.style.color="red";
        document.getElementById("submit_button").addEventListener("click", function(event){
            event.preventDefault()
        });
    }else{
        lastname_span.innerHTML="Megfelelő név";
       lastname_span.style.color="darkgreen";
    }

}

function userName(){
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange=function(){
       var username_span= document.getElementById("username_span");
       username_span.innerHTML=xmlhttp.responseText;



    };
    var username=document.getElementById("form_username_input").value;
    var params="form_username_input="+username+"";
    xmlhttp.open("POST",'functions/register/checkuser.php',true);
    xmlhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xmlhttp.send(params)
}
function emailAdress(){
    var email=document.getElementById("form_email_input").value;
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var email_span=document.getElementById("email_span");
    if (email.match(mailformat)==null){
        email_span.innerHTML="Nem megfelelő email formátum";
        email_span.style.color="red";
        document.getElementById("submit_button").addEventListener("click", function(event){
            event.preventDefault()
        });
    }else{
        email_span.innerHTML="Megfelelő email cím";
        email_span.style.color="darkgreen";
    }


}

function password(){
    var password_one=document.getElementById("form_password_one").value;
    var password_two=document.getElementById("form_password_two").value;

    var password_span=document.getElementById("password_two_span");
    var password_one_span=document.getElementById("password_one_span");

    if ((password_one.length <6) || (password_two.length <6)){
        password_span.innerHTML="A jelszó legalább 6 karaktert kell,hogy tartalmazzon";
        password_one_span.innerHTML="A jelszó legalább 6 karaktert kell,hogy tartalmazzon";
        password_span.style.color="red";
        password_one_span.style.color="red";

        document.getElementById("submit_button").addEventListener("click", function(event){
            event.preventDefault()
        });
    }

     else if(password_one!==password_two){

        password_span.innerHTML="A jelszavak nem egyeznek";
        password_one_span.innerHTML="A jelszavak nem egyeznek";
        password_span.style.color="red";
        password_one_span.style.color="red";
        document.getElementById("submit_button").addEventListener("click", function(event){
            event.preventDefault()
        });
    }

     else if (password_one===password_two){

            password_span.innerHTML="Megfelelő jelszó";
            password_one_span.innerHTML="Megfelelő jelszó";

            password_span.style.color="darkgreen";
            password_one_span.style.color="darkgreen";

    }



}

function loginUser(callback){

    var xmlhttp = new XMLHttpRequest();
xmlhttp.responseText="";

var response=xmlhttp.responseText;

    xmlhttp.onreadystatechange=function(){
      document.getElementById("login_span").innerHTML=xmlhttp.responseText;


    };

  var password=document.getElementById("login_password").value;
  var email=document.getElementById("login_email").value;



    var params = "login_email="+email+"&login_password="+password+"";
    xmlhttp.open('POST', 'functions/login/checklogin.php ', true);
    xmlhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xmlhttp.send(params);
}


var map, infoWindow;
function myMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center:{lat:-33,lng:151},
        zoom: 10
    });
    infoWindow = new google.maps.InfoWindow;

    if(navigator.geolocation){

        navigator.geolocation.getCurrentPosition(function(p){
            var position={
                lat:p.coords.latitude,
                lng:p.coords.longitude
            };

            infoWindow.setPosition(position);
            infoWindow.setContent("Itt tartozkodsz:");
            infoWindow.open(map);
            map.setCenter(position);
        })

    }else{
handleLocationError("Engedélyezd a geolokációt",map.center());
    }

  
}
function handleLocationError(content,position){
    infoWindow.setPosition(position);
    infoWindow.setContent(content);
    infoWindow.open(map);
}