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
    }
    #removepost{
        text-align:center;
    }
</style>
<body>

 <div class='container-fluid'>

 <div class='row'>

 <div class='col-xl-12 col-md-12 col-sm-6 col-xs-2' id='removepost'>
     <h5>Remove posts </h5>
     <table>
<?php
$sql="SELECT * from posts";
$run=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($run)){
$post_id=$row['post_id'];
$user_id=$row['user_id'];
$post_image=$row['post_image'];
$post_date=$row['post_date'];
$post_city=$row['post_city'];

echo "<tr><td>Post ID: $post_id</td>
<td>User ID$user_id</td>
<td>Post IMAGE $post_image</td>
<td>Post DATE: $post_date</td>
<td>Post CITY: $post_city</td>
<td><a href='remove.php?id=$post_id'>Remove</a></td>
</tr>";

}

?>
    </table>
    <a href='logout.php'>Logout</a>


 </div>

 </div>

 </div>

</body>