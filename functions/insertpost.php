<?php 
session_start();
include 'db_config.php';
$user_loggedin_id="";
$postal_code="";
$post_city="";



if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_FILES['files'])) {
        $errors = [];
        $path = 'uploads/';
        $extensions = ['jpg', 'jpeg', 'png', ];

       

       
            $file_name = $_FILES['files']['name'][0];
            $file_tmp = $_FILES['files']['tmp_name'][0];
            $file_type = $_FILES['files']['type'][0];
            $file_size = $_FILES['files']['size'][0];
          $file_ext = strtolower(end(explode('.',$file_name)));

            $file = $path . $file_name;

           if (!in_array($file_ext, $extensions)) {
                $errors[] = 'Extension not allowed: ' . $file_name . ' ' . $file_type;
               
            }

            if ($file_size > 2097152) {
                $errors[] = 'File size exceeds limit: ' . $file_name . ' ' . $file_type;
               
            }

            if (empty($errors)) {
                move_uploaded_file($file_tmp, $file);
               $user_loggedin_id= $_SESSION['loggedin_user_id'];
               $postal_code=$_SESSION['postalcode'];
               $post_city=  $_SESSION['current_city'];
               
               
               $sql="INSERT into posts (`user_id`,`post_image`,`post_date`,`postal_code`,`post_city`)
                  values('$user_loggedin_id','$file_name',now(),'$postal_code','$post_city')";
                  $run=mysqli_query($con,$sql);

                  
            }
         
        
        

       if ($errors) print_r($errors);
    }
}


?>