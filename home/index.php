<?php 
session_start();
include '../functions/db_config.php';
if (!isset($_SESSION['user_email'])){
   
header("location:../index.html");
}


$email=$_SESSION['user_email'];
?>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="initial-scale=1.0, width=device-width" />
    <title>Travel</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../style/style.css">
    <script src="https://kit.fontawesome.com/ec2a35f277.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://js.api.here.com/v3/3.1/mapsjs-ui.css" />
    <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-core.js"></script>
    <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-service.js"></script>
    <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-ui.js"></script>
    <script type="text/javascript" src="https://js.api.here.com/v3/3.1/mapsjs-mapevents.js"></script>
    <script type="text/javascript" src='../js/credentials.js'></script>
   
  
</head>
<body onload="getCoords()">









</div>

<div class='container-fluid' id='map_container'>
 <div class='row' id='map_row'>

  <div class='col-xl-12 col-lg-12 col-md-12 col-sm-12' id='categories'>
  <div class='row'>
  <div class='col-xl-3' id='userinfodiv'>
   <?php 
   $query="SELECT * from users where email='$email'";
   $run=mysqli_query($con,$query);
   $row=mysqli_fetch_array($run);
   $firstname=$row['firstname'];
   $lastname=$row['lastname'];
   $_SESSION['loggedin_user_id']=$row['user_id'];
   $_SESSION['postalcode']=$row['current_postal_code'];
   $_SESSION['current_city']=$row['current_city'];
   echo "<div id='profileinfo'><p><i class='fas fa-user-circle'></i> $firstname $lastname</p></div>";   
   ?>
  
  </div>
   <div class='col-xl-6 col-md-6 col-sm-12' id='btns'>

  <button type="button" class="btn btn-outline-primary" id='goingout' ><i class="fas fa-hotel"></i>Going out</button>
  <button type="button" class="btn btn-outline-primary" id='shopping'><i class="fas fa-cocktail"></i>Shopping</button>
  <button type="button" class="btn btn-outline-primary" id='transport'><i class="fas fa-film"></i>Transport</button>
  <button type="button" class="btn btn-outline-primary" id='museum'><i class="fas fa-taxi"></i>Museum</button>
  <button type="button" class="btn btn-outline-primary" id='com' onclick='resize_window(2)'><i class="fas fa-users"></i>Community</button>

  </div>
  
  <div class='col-xl-3' id='logoutdiv'>
  <button type="button" class="btn btn-danger" id='logoutbtn'><i class="fas fa-sign-out-alt"></i><a href='../functions/logout.php'>Logout</a></button></div>
  
</div>
<div class='col-xl-8 col-md-8 col-sm-8' id='community'>

<i class="fas fa-window-minimize" id='minimize' onclick='resize_window(1)'></i>
    <h6>Community activities near you</h5>
    <p>Upload a picture about places near you</p>
    <form name='insertpost' method='POST' enctype="multipart/form-data">
<div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text">Upload</span>
  </div>
 
  <div class="custom-file">
    <input type="file" class="custom-file-input"  name="files[]" accept="image/*">
    <label class="custom-file-label" for="imgupload">Choose file</label>
  </div>
</div>
<button type="button" class="btn btn-primary" id='upload_photo'>Submit Photo</button>
<div class="form-group">
<br>
   
    
  </div>
</form>
<div class='col-xl-8' id='posts'>
 
  </div>
</div> 



  </div>
 

 <div class='col-xl-12' id='map'>
  
</div> <!-- <div class='col-xl-8 col-md-8 ' id='places'>
<h6>Places near you..</h5>
    <p>Rate them or add to favorites</p>
 
 </div>  -->
</div>
<script src="../js/ajax.js"></script>
<script src="../js/resize.js"></script>
<script src="../js/map.js"></script>
<!---<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCvxZxRKtebaJbmFG7yasHxiNn7Dnl3zUE&callback=myMap">
</script>-->

</body>
</html>