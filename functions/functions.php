<?php
include 'db_config.php';


function insert_User($firstname,$lastname,$username,$password,$email){

    global $con;


        $hash=md5(rand(0,1000));

        $query="INSERT into users (firstname,lastname,username,password,email,hash)
values('$firstname','$lastname','$username','$password','$email','$hash')";
        $run=mysqli_query($con,$query);


    if ($run) {
        echo "Sikeresen regisztráltál!<br>A megerősítő emailt elküldtük postafiókodba";
       echo "<br><br><button type=\"button\" class=\"btn btn-danger\" onclick=\"register_window(2)\">BEZÁR</button>";
        send_mail($username,$email,$hash);
    } else {
        echo "Error: " . $query . "<br>" . mysqli_error($con);
    }

}

function send_mail($username,$email,$hash){

    $to      = $email; // Send email to our user
    $subject = 'Signup | Verification'; // Give the email a subject
    $message = '
 
 


Thanks for signing up!
Your account has been created, you can login with the following credentials after you have activated your account by pressing the url below.
 
------------------------
Username: '.$username.'

------------------------
 
Please click this link to activate your account:
http://localhost:7080/travel/verify.php?email='.$email.'&hash='.$hash.'
 
'; // Our message above including the link




    $headers = 'From:noreply@yourwebsite.com' . "\r\n"; // Set from headers
    mail($to, $subject, $message,$headers); // Send our email

}


function loginUser($password,$email){

    global $con;
    $salt="schoolproject";
   $pass=md5($password);
    $query="SELECT * from users where email='$email' and password='$pass'";
    $run=mysqli_query($con,$query);
    $row=mysqli_fetch_array($run);

    $verified=$row['active'];
    if (mysqli_num_rows($run) > 0 && $verified==1){
        echo "bejelentkezes".
             " 
   ";

        header("location: index.php");

    }else{
        echo "<br><br><p style='color:darkred;'>" ."Helytelen felhasználónév vagy email cím". "</p>";

    }

}
