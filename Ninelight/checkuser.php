<?php

session_start();
include 'DBConfig.php';

$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);
 
if ($conn->connect_error) {
 
 die("Connection failed: " . $conn->connect_error);
} 

$json = file_get_contents('php://input');
$obj = json_decode($json,true);

$email = $obj['email_id'];
$password = $obj['password'];

$salt= "nnwdy120014094099135";
$pass=$password.$salt;
$enc=base64_encode($pass);

$Sql_Query = "select * from user_list where email_id = '$email' and password = '$enc' ";
$check = mysqli_fetch_array(mysqli_query($conn,$Sql_Query));


if(isset($check)){
    $SuccessLoginMsg = 'Data Matched';
    $SuccessLoginJson = json_encode($SuccessLoginMsg);
    echo $SuccessLoginJson ;
    $_SESSION['user']=$email;
}
else{
    $Sql_Query = "select * from user_list where user_name = '$email' and password = '$enc' ";
    $check = mysqli_fetch_array(mysqli_query($conn,$Sql_Query));

    if(isset($check)){
        $SuccessLoginMsg = 'Data Matched';
        $SuccessLoginJson = json_encode($SuccessLoginMsg);
        echo $SuccessLoginJson ;
        $_SESSION['user']=$email; 
    }
    else{
        $InvalidMSG = 'Invalid Username or Password Please Try Again' ;
        $InvalidMSGJSon = json_encode($InvalidMSG);
        echo $InvalidMSGJSon ;
    }
}
mysqli_close($conn);
?>