<?php

session_start();

include 'DBConfig.php';

// Create connection
$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);

if ($conn->connect_error) {
 
 die("Connection failed: " . $conn->connect_error);
} 

$json = file_get_contents('php://input');

$obj = json_decode($json,true);

$user = $_SESSION['user'];

$find_adder_id = "select * from user_list where user_name='$user' or email_id='$user'";
$adder_id_result = $conn->query($find_adder_id);
$row_adder_id = $adder_id_result->fetch_array();

$sql = "SELECT * FROM cart where user_id='$row_adder_id[0]'";



$result = $conn->query($sql);

if ($result->num_rows >0) {
 
 
 while($row[] = $result->fetch_assoc()) {
 
 $tem = $row;
 	
 $json = json_encode($tem);

 }
 
} else {

    $tem = 'NO';
 	
    $json = json_encode($tem);
}
 echo $json;
$conn->close();
?>