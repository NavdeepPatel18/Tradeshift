<?php

session_start();
include 'DBConfig.php';

$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);

if ($conn->connect_error)
   die("Connection failed: " . $conn->connect_error);

$json = file_get_contents('php://input');
$obj = json_decode($json, true);

$adder_id = $_SESSION['user'];
$category_id;
$category_name = $obj['category_name'];


if (!isset($adder_id)) {
   $json = json_encode('Login again');
   echo $json;
} else {
   while (true) {
      $category_id = "CAT" . rand(100, 999);
      $Sql_Query = "select * from category where category_id='$category_id'";
      $result = $conn->query($Sql_Query);
      if ($result->num_rows == 0) {
         break;
      }
   }

   $Sql_Query = "select * from category where category_name='$category_name'";
   $result_check = $conn->query($Sql_Query);
   if ($result_check->num_rows == 0) {
      $Sql_Query = "insert into category VALUES('$category_id','$category_name')";

      if (mysqli_query($conn, $Sql_Query)) {
         $MSG = 'Record Successfully Inserted Into MySQL Database.';
         $json = json_encode($MSG);
         echo $json;
      } else {
         echo json_encode('Try Again');
      }
   } else {
      $MSG = 'Category alredy exists';
      $json = json_encode($MSG);
      echo $json;
   }
}
mysqli_close($conn);
?>