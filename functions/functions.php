<?php
session_start();

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

    $to      = $email; 
    $subject = 'Signup | Verification'; 
    $message = '
 
 


Thanks for signing up!
Your account has been created, you can login with the following credentials after you have activated your account by pressing the url below.
 
------------------------
Username: '.$username.'

------------------------
 
Please click this link to activate your account:
http://localhost/travel/verify.php?email='.$email.'&hash='.$hash.'
 
'; 




    $headers = 'From:noreply@yourwebsite.com' . "\r\n"; 
    mail($to, $subject, $message,$headers); 

}



