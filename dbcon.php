<?php


$host ="localhost";
$user ="root";
$password= "";
$dbname = "labcare";


$con = mysqli_connect($host, $user, $password, $dbname);

if (!$con) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
}
?>