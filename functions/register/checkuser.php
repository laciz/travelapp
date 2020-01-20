<?php
session_start();
include '../db_config.php';


 if(isset($_POST['form_username_input'])){

     $username=$_POST['form_username_input'];
     $query="SELECT * from users where username='$username'";
     $run=mysqli_query($con,$query);

     if(mysqli_num_rows($run) > 0) {
         echo "<h5>A felhasználónév már létezik,válassz másikat</h5>

    <script>document.getElementById(\"submit_button\").addEventListener(\"click\", function(event){
            event.preventDefault()
        });</script>";
     }else{
         echo "<h6>Megfelelő felhasználónév</h6>";
     }





 }else{
     header("location:../../index.html");

 }


