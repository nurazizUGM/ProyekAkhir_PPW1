<?php
$server = "127.0.0.1";
$username = "root";
$password = "123";
$database = "proyek_akhir_s2";

$conn = mysqli_connect($server, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
