<?php 
session_start();
include '../functions/db_config.php';

if(!isset($_SESSION['admin'])){
    header("location:index.html");
}

?>


<!DOCTYPE html>
<html>
<head>
    <title>Administration</title>
    <meta charset="utf-8">
    <meta name="description" content="Admin panel for school project job">

   
    <link href="https://cdn.lineicons.com/1.0.1/LineIcons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ec2a35f277.js" crossorigin="anonymous"></script>
    <script src='script.js'></script>

   

</head>
<style>
    td,tr{
        border:1px solid black;
        background-color:orange;
        padding:5px;
    }
    table{
        margin:0 auto;
        padding:10px;
        margin: 0 auto;
    padding: 10px;
    width: 100%;
    }
    #removepost{
        text-align:center;
    }

    h5{
        display:inline-block;
        padding-right: 15px;
        font-size: 15px;
        border-right: 1px solid black;
    padding: 5px;
    }
    #userpost{
        margin-top:15px;

    }
    #post{
        background-color:red;
        color:white;
    }
    *{
        text-align: center;
    }
    
</style>
<body>

 <div class='container-fluid'>

 <div class='row'>
  <div class='col-xl-12'>
      <table>
   <?php 
   $sql="SELECT count(post_id) c from posts";
   $run=mysqli_query($con,$sql);
   $row=mysqli_fetch_array($run);
   
   $num=$row['c'];
    
    $sql2="SELECT count(post_id) b  
    FROM posts
    WHERE posts.post_date > DATE_SUB(NOW(), INTERVAL 24 HOUR)";

$run2=mysqli_query($con,$sql2);
$row2=mysqli_fetch_array($run2);

$num2=$row2['b'];

$query3="SELECT count(user_id) a from users";
$run3=mysqli_query($con,$query3);
$row3=mysqli_fetch_array($run3);
$num4=$row3['a'];


echo "<h5>Total posts:  $num</h5> ";
echo "<h5>Submitted last 24 hour:  $num2</h5>";
echo "<h5>Total users:  $num4</h5>";

   ?>
</table>
<a href='logout.php'>Logout</a>
  </div>
 <div class='col-xl-12 col-md-12 col-sm-12 col-xs-12' id='users'>
    <table>
        
    <?php 
    
    $query="SELECT * from users";
    $run=mysqli_query($con,$query);
    $uid="";
    $uname="";
    while($result=mysqli_fetch_array($run)){
     $uid=$result['user_id'];
     $uname=$result['username'];

     echo "<tr> <td><i class='fas fa-user-circle'></i> $uname</td>
     <td><button onclick='showpost($uid)'>Show posted images</button></td>
     <td><a href='activate.php?id=$uid'>Activate user</a></td>
     <td><a href='deleteuser.php?id=$uid'>Delete user</a></td></tr>";

    }
    
    ?>
  </table>

 </div>

 <div class='col-xl-12 col-md-12 col-sm-12 col-xs-12' id='userpost'>
    <table id='post'>



    </table>



   


 </div>

 </div>

 </div>

</body>