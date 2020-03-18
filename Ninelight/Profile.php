<?php
include 'DBConfig.php';
include 'checkMain.php';
// Create connection
$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);
 
if ($conn->connect_error) {
 
 die("Connection failed: " . $conn->connect_error);
} 
 
$sql = "SELECT name FROM product where email_id='$email' and password='$password'";
 
$result = $conn->query($sql);
 
if ($result->num_rows >0) {
 
 
 
 

 
 $json = json_encode($result);
 
 
 
 
} else {
 echo "No Results Found.";
}
 echo $json;
$conn->close();
?>