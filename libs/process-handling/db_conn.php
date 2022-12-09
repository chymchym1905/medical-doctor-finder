<?php

$serverName = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "mdfinder";

$conn = mysqli_connect($serverName, $dbUsername, $dbPassword,$dbName,3308);

if(!$conn){
    die("Connect failed: " . mysqli_connect_error());
}

