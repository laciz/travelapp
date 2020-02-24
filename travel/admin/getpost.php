<?php 
session_start();
include '../functions/db_config.php';

if(!isset($_SESSION['admin'])){
    header("location:index.html");
}
include '../functions/db_config.php';
$uid="";
if(isset($_POST['uid'])){

$uid=$_POST['uid'];
$query="SELECT * from posts where user_id='$uid'";
$run=mysqli_query($con,$query);

if(mysqli_num_rows($run)> 0){

    while($result=mysqli_fetch_array($run)){

        $post_id=$result['post_id'];
        $post_image=$result['post_image'];
        $post_date=$result['post_date'];
       
        echo "<tr><td>POST ID: $post_id</td> <td><img src='../functions/uploads/$post_image' width='50%'></td><td>POST DATE: $post_date</td><td><a href='deletepost.php?id=$post_id'>Remove</a></td></tr>";
       
       
       }

}else{
    echo "This user has 0 posts";
}






}

?>