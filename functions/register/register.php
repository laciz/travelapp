<?php
include '../db_config.php';
include '../functions.php';
 /*if ( isset($_POST['form_name_input']) and isset($_POST['form_lastname_input']) and isset($_POST['form_username_input'])
    and isset($_POST['form_email_input']) and  isset($_POST['form_password_one'])
     and isset($_POST['form_password_two']))
   {*/

  $firstname=mysqli_real_escape_string($con,$_POST['form_name_input']);
    $lastname=mysqli_real_escape_string($con,$_POST['form_lastname_input']);
     $username=mysqli_real_escape_string($con,$_POST['form_username_input']);
   $email=mysqli_real_escape_string($con,$_POST['form_email_input']);
    $password_one=mysqli_real_escape_string($con,$_POST['form_password_one']);
    $password_two=mysqli_real_escape_string($con,$_POST['form_password_two']);

    $salt="schoolproject";

    $password=md5($password_one);

     $query="SELECT * from users where username='$username' and email='$email'";
     $run=mysqli_query($con,$query);

     if(mysqli_num_rows($run) > 0){
         header("location:../../index.html");
     }else{

         insert_User($firstname,$lastname,$username,$password,$email);

     }



/*
 }else{

 header("location:index.html");
 }

*/