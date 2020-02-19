<?php
include '../db_config.php';
include '../functions.php';
if (isset($_POST['login_email']) && isset($_POST['login_password'])){

    $password=mysqli_real_escape_string($con,$_POST['login_password']);
    $email=mysqli_real_escape_string($con,$_POST['login_email']);


    $con;
    $salt="schoolproject";
   $pass=md5($password);
    $query="SELECT * from users where email='$email' and password='$pass' and active='1'";
    $run=mysqli_query($con,$query);
    $row=mysqli_fetch_array($run);

    
    if (mysqli_num_rows($run) > 0){
      
  $_SESSION['user_email']=$email;

  
  header("location:../../home/index.php");
      
    }else{
        header("location:../../index.html");
      
    }

}
else{
    echo "noset";
}