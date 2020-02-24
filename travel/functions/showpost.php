<?php 
session_start();
include 'db_config.php';

  $postalcode=$_SESSION['postalcode'];
  $posted_user_id="";
  $posted_user_name="";
  $posted_user_lastname="";
  $post_date="";
  $posted_city="";
  $date="";
  $image="";
 
  $sql="SELECT * from  posts where postal_code='$postalcode'";
  $run=mysqli_query($con,$sql);
  while($row2=mysqli_fetch_assoc($run)){
     $image=$row2['post_image'];
      $posted_city=$row2['post_city'];
      $date=$row2['post_date'];
      $posted_user_id=$row2["user_id"];
      $query="SELECT * from users where user_id='$posted_user_id'";
      $run2=mysqli_query($con,$query);
      $row3=mysqli_fetch_array($run2);
      $posted_user_name=$row3['firstname'];
      $posted_user_lastname=$row3['lastname'];
     
      echo "<div><p>$posted_user_name $posted_user_lastname <b>posted image near you in $posted_city</b> $date</p>";
     
      echo "<img src='../functions/uploads/$image'  width='75%'></div>";
  }
 
  ?>