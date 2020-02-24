<?php 


session_start();
include '../functions/db_config.php';

if(!isset($_SESSION['admin'])){
    header("location:index.html");
}

if(isset($_GET['id'])){
    $id=$_GET['id'];
    $sql="DELETE from users where user_id='$id'";
    $run=mysqli_query($con,$sql);

   header("location: administration.php");


}




?>