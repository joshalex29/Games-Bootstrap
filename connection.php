<?php
    $host="localhost";
    $user="root";
    $pass="";
    $db="games";

    $connection = new mysqli($host, $user, $pass, $db, 3307);
    if ($connection->connect_error){
        die("Connection failed: ".$connection->connect_error);
    }
?>