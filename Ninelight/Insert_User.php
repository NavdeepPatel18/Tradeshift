<?php

session_start();
include 'DBConfig.php';

$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);

if ($conn->connect_error) {

   die("Connection failed: " . $conn->connect_error);
}

$json = file_get_contents('php://input');
$obj = json_decode($json, true);

$adder_id = $_SESSION['user'];
$first_name = $obj['first_name'];
$last_name = $obj['last_name'];
$user_name = $obj['user_name'];
$email_id = $obj['email_id'];
$password = $obj['password'];
$phone_no = $obj['phone_no'];
$area_street = $obj['area_street'];
$village = $obj['village'];
$city = $obj['city']='city';
$district = $obj['district'];
$state = $obj['state'];
$country = $obj['country'];
$pincode = $obj['pincode'];
$shop_name = $obj['shop_name'];

$salt = "nnwdy120014094099135";
$pass = $password . $salt;
$enc = base64_encode($pass);

if (!isset($adder_id)) {
   $json = json_encode('Login again');
   echo $json;
} else {
   $find_adder_id = "select * from user_list where user_name='$adder_id' or email_id='$adder_id'";
   $adder_id_result = $conn->query($find_adder_id);
   $row_adder_id = $adder_id_result->fetch_array();

   if (isset($row_adder_id)) {
      if ($row_adder_id[2] == 3) {
         while (true) {
            $user_id = "DIS" . rand(10000, 99999);
            $Sql_Query = "select * from user_list where user_id='$user_id'";
            $result = $conn->query($Sql_Query);
            if ($result->num_rows === 0) {
               break;
            }
         }

         $user_type = 2;
         $Sql_dis = $conn->query("INSERT INTO user_list (`user_id`, `adder_id`, `user_type`, `first_name`, `last_name`, `user_name`, `email_id`, `password`, `phone_no`, `area_street`, `village`, `city`, `district`, `state`, `country`, `pincode`, `shop_name`) values('$user_id','$row_adder_id[0]',$user_type,'$first_name','$last_name','$user_name','$email_id','$enc',$phone_no,'$area_street','$village','$city','$district','$state','$country',$pincode,'$shop_name')");
   
         if ($Sql_dis) {
            $MSG = 'Distributor add Successfully.';
            $json = json_encode($MSG);
            echo $json;
         } else {
            // echo mysqli_error($conn);
            $json = json_encode('Distributor does not add please try again');
            echo $json;
         }
      } else if ($row_adder_id[2] == 2) {
         while (true) {
            $user_id = "SHO" . rand(10000, 99999);
            $Sql_Query = "select * from user_list where user_id='$user_id'";
            $result = $conn->query($Sql_Query);

            if ($result->num_rows === 0) {
               break;
            }
         }

         $user_type = 1;

         $Sql_sho = $conn->query("INSERT INTO user_list (`user_id`, `adder_id`, `user_type`, `first_name`, `last_name`, `user_name`, `email_id`, `password`, `phone_no`, `area_street`, `village`, `city`, `district`, `state`, `country`, `pincode`, `shop_name`)values('$user_id','$row_adder_id[0]',$user_type,'$first_name','$last_name','$user_name','$email_id','$enc',$phone_no,'$area_street','$village','$city','$district','$state','$country',$pincode,'$shop_name')");
         
         if ($Sql_sho) {
            $MSG = 'shopkeeper add Successfully.';
            $json = json_encode($MSG);
            echo $json;
         } else {
            $json = json_encode('Shopkeeper does not add please try again');
            echo $json;
         }
      } else {
         $json = json_encode('You are not authenticated');
         echo $json;
      }
   } else {
      echo 'Login again';
   }
}
mysqli_close($conn);
?>
