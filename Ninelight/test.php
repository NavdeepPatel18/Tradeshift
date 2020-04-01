<?php 
    $password="12345678";
    $salt= "nnwdy120014094099135"; 
    $pass=$password.$salt;
    $enc=base64_encode($pass);
    echo $enc;
?>