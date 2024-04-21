<?php

include 'connection.php';
include 'utils.php';

$username = $_POST['username'];
$password = $_POST['password'];

$hashPassword = hashText($password);

$sql = "SELECT * FROM user WHERE username = '$username' AND password = '$hashPassword'";

$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    header("Location: /tk3-traffictrack/view/dashboard/dashboard.html");
    exit;
} else {
    echo "0 results";
}

?>