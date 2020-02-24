<?php 
session_start();
include 'db_config.php';


if(isset($_POST['postalcode']) && isset($_POST['cityname'])){
   $postalcode=$_POST['postalcode'];
   $cityname=$_POST['cityname'];
   $email=$_SESSION['user_email'];
    $query="UPDATE users  SET current_postal_code='$postalcode' , current_city='$cityname' where email='$email'";
    $run=mysqli_query($con,$query);
    
   $query2="insert into places (postalcode,user_id,post_id,place_name) values('$postalcode','')";
   $run2=mysqli_query($con,$query2);


}else{
    echo "noset";
}



?>