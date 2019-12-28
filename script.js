/*document.getElementById("features_tab").style.borderLeft="1px solid white";
document.getElementById("about_us_tab").style.borderLeft="1px solid white";
document.getElementById("contact_tab").style.borderLeft="1px solid white";
*/

function register_window(a){
    var c=a; 
    if(c == 1){
         document.getElementById("register_div").style.display="block";
         document.getElementById("header_col").style.filter="blur(5px)";
         document.getElementById("header_col_2").style.filter="blur(5px)";
         document.getElementById("features_container").style.filter="blur(5px)";
         document.getElementById("about_col").style.filter="blur(5px)";
         document.body.style.overflow="hidden";
     }
     if(c == 2){
        document.getElementById("register_div").style.display="none";
        document.getElementById("header_col").style.filter="";
         document.getElementById("header_col_2").style.filter="";
         document.getElementById("features_container").style.filter="";
         document.getElementById("about_col").style.filter="";
         document.body.style.overflow="";
     }
     }

function check_form(){
    var name=document.getElementById("name").value;
    var name_span=document.getElementById("name");
    if(name.length <3){
        name.innerHTML="anyaaaaaaaaa";
        return false;
    }
}