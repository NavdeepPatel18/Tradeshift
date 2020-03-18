<?php

session_start();
include 'DBConfig.php';

$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);

if ($conn->connect_error)
   die("Connection failed: " . $conn->connect_error);

$json = file_get_contents('php://input');
$obj = json_decode($json, true);

$adder_id = $_SESSION['user'];
$product_id;
$category_name = $obj['category_name'];
$product_name = $obj['product_name'];
$product_weight = $obj['product_weight'];
$product_price_distributor = $obj['product_price_distributor'];
$product_price_shopkeeper = $obj['product_price_shopkeeper'];


if (!isset($adder_id)) {
   $json = json_encode('Login again');
   echo $json;
} else {
   while (true) {
      $product_id = "PRO" . rand(100, 999);
      $Sql_Query = "select * from product where product_id='$product_id'";
      $result = $conn->query($Sql_Query);
      if ($result->num_rows == 0) {
         break;
      }
   }



   $Sql_Query = "select * from product where product_name='$product_name' AND product_weight='$product_weight'";
   $result_check = $conn->query($Sql_Query);
   if ($result_check->num_rows == 0) {
      $Sql_category_query = "select * from category where category_name='$category_name'";
      $category_result = $conn->query($Sql_category_query);
      $row_category_id = $category_result->fetch_array();

      $Sql_Query = "insert into product (product_id,category_id,product_name,product_weight,product_price_distributor,product_price_shopkeeper)VALUES('$product_id','$row_category_id[0]','$product_name','$product_weight','$product_price_distributor','$product_price_shopkeeper')";
      if (mysqli_query($conn, $Sql_Query)) {
         $MSG = 'Record Successfully Inserted Into MySQL Database.';
         $json = json_encode($MSG);
         echo $json;
      } else {
         echo json_encode('Try Again');
      }
   } else {
      $MSG = 'product alredy exists';
      $json = json_encode($MSG);
      echo $json;
   }
}
mysqli_close($conn);
