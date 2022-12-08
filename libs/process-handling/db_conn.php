<?php

$serverName = "127.0.0.1";
$dbUsername = "root";
$dbPassword = "";
$dbName = "mdfinder";

$conn = mysqli_connect($serverName, $dbUsername, $dbPassword,$dbName);

if(!$conn){
    die("Connect failed: " . mysqli_connect_error());
}

