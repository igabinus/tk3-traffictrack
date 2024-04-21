<?php

$host = "localhost";
$user = "username";
$password = "pass123";
$database = "traffictrack";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
die("Koneksi gagal: " . $conn->connect_error);
}

?>