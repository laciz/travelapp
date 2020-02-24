<?php 
session_start();
$admin_email="admin@travelapp.project";
$admin_password="admin123";

if(isset($_POST['admin_email']) and isset($_POST['admin_password'])){

  $input_email=$_POST['admin_email'];
  $input_password=$_POST['admin_password'];


  if($admin_email == $input_email and $admin_password == $input_password){

 $_SESSION['admin']=$admin_email;

 header("location:administration.php");



  }else{
    header("location:index.html");
  }


}

?>