<?php
include '../db_config.php';
include '../functions.php';
if (isset($_POST['login_email']) && isset($_POST['login_password'])){

    $password=mysqli_real_escape_string($con,$_POST['login_password']);
    $email=mysqli_real_escape_string($con,$_POST['login_email']);

loginUser($password,$email);

}