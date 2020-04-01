<?php

session_start();
include 'DBConfig.php';

$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);

if ($conn->connect_error) {

   die("Connection failed: " . $conn->connect_error);
}

$json = file_get_contents('php://input');
$obj = json_decode($json, true);

$user = $_SESSION['user'];

$find_adder_id = "select * from user_list where user_name='$user' or email_id='$user'";
$adder_id_result = $conn->query($find_adder_id);
$row_adder_id = $adder_id_result->fetch_array();


$product_id = $obj['product_id'];
$quantity = $obj['quantity'];
$total_price = $obj['total_price'];


$Sql_Query = "insert into cart (user_id, product_id, quantity, total_price)values('$row_adder_id[0]','$product_id','$quantity','$total_price')";

if (mysqli_query($conn, $Sql_Query)) {
   // If the record inserted successfully then show the message.
   $MSG = 'Successfully added to cart';
   // Converting the message into JSON format.
   $json = json_encode($MSG);
   // Echo the message.
   echo $json;
} else {
   echo json_encode('Try Again');
}
mysqli_close($conn);
