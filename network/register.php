<?php

include 'connection.php';
include 'utils.php';

$username = $_POST['username'];
$fullname = $_POST['fullname'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = $_POST['password'];
$confirmpassword = $_POST['confirm-password'];
$id = uniqid('user_', true);

$hashPassword = hashText($password);

$sql = "INSERT INTO user (idUser, fullname, username, email, phone, password) VALUES ('$id', '$fullname', '$username', '$email', '$phone', '$hashPassword')";

if ($conn->query($sql) === TRUE) {
    echo "Data mahasiswa berhasil disimpan";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>
