<?php

$header='From:navdeeppatel.1852@gmail.com' . "\r\n" . 'MIME-Version: 1.0' . "\r\n" . 'Content-Type: text/html; charset=utf-8';
//the subject
$sub = "Your subject";
//the message
$msg = "Your message";
//recipient email here
$rec = "navdeeppatel.1852@gmail.com";
//send email
$result=mail($rec,$sub,$msg,$header);
var_dump($result);
// include 'DBConfig.php';
 
// // Create connection
// $conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);
 
// if ($conn->connect_error) {
 
//  die("Connection failed: " . $conn->connect_error);
// }

// $Sql_Query="select email_id from user_list where user_id='$user_id'";

// $to      = mysqli_query($conn,$Sql_Query); // Send email to our user
// $email = 'navdeeppatel.1852@gmail.com';
// $to=$email;
// $subject = 'treadeshift email Verification'; // Give the email a subject 
// $message = '
 
// Thanks for signing up!
// Your account has been created
// you can login with the following one time verification code.

// ------------------------
// Username: abc
// verification-code: xyz
// ------------------------
 
 
// '; // Our message above including the link
                     
// $headers = 'From:nawabpatel1805@gmail.com' . "\r\n"; // Set from headers
// mail($to, $subject, $message); // Send our email
 
// $conn->close();
?>