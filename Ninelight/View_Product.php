<?php

session_start();

include 'DBConfig.php';
$conn = new mysqli($HostName, $HostUser, $HostPass, $DatabaseName);

if ($conn->connect_error) {

    die("Connection failed: " . $conn->connect_error);
}

$json = file_get_contents('php://input');

$obj = json_decode($json, true);
$category_id = $obj['id'];



$adder_id = $_SESSION['user'];
if (!isset($_SESSION['user'])) {
    $json = json_encode('Login again');
    echo $json;
} else {

    $find_adder_id = "select * from user_list where user_name='$adder_id' or email_id='$adder_id'";
    $adder_id_result = $conn->query($find_adder_id);
    $row_adder_id = $adder_id_result->fetch_array();

    if (isset($row_adder_id)) {
        if ($row_adder_id[2] == 2) {

            $sql = "SELECT * FROM product where category_id='$category_id'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row[] = $result->fetch_assoc()) {
                    $tem = $row;
                    $json = json_encode($tem);
                }

                echo $json;
            } else {
                echo "No Results Found.";
            }
        } else if ($row_adder_id[2] == 1) {
            $sql = "SELECT * FROM product where category_id='$category_id'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row[] = $result->fetch_assoc()) {
                    $tem = $row;
                    $json = json_encode($tem);
                }

                echo $json;
            } else {
                echo "No Results Found.";
            }
        } else {
            $json = json_encode('You are not authenticated');
            echo $json;
        }
    } else {
        echo 'Login again';
    }
}

$conn->close();
?>