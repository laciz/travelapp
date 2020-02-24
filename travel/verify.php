<?php
include 'functions/db_config.php';
if(isset($_GET['email']) && !empty($_GET['email']) AND isset($_GET['hash']) && !empty($_GET['hash'])){
   
    $email = mysqli_escape_string($con,$_GET['email']);
    $hash = mysqli_escape_string($con,$_GET['hash']); 

    $search = mysqli_query($con,"SELECT email, hash, active FROM users WHERE email='".$email."' AND hash='".$hash."' AND active='0'") or die(mysqli_error());
    $match  = mysqli_num_rows($search);

    if($match > 0){
      
        mysqli_query($con,"UPDATE users SET active='1' WHERE email='".$email."' AND hash='".$hash."' AND active='0'") or die(mysqli_error());
       echo '<div class="statusmsg">Sikeresen aktiváltad fiókod,mostmár betudsz jelentkezni.</div>';
       echo "<a href='index.html'>Vissza a főoldalra</a>";
    }else{
     
        echo '<div class="statusmsg">error</div>';
    }

}else{

    echo '<div class="statusmsg">error</div>';
}