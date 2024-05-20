<?php
$servername = "127.0.0.1";
$username_DB = "YOUR_USER";
$password_DB = "YOUR_PASSWORD";
$dbname = "tiempo_maya";

// Create connection
$conn = new mysqli($servername, $username_DB, $password_DB, $dbname, '3306');
if ($conn->connect_error) {
    echo 'Conexion fallida: ' . $conn->connect_error;
    die("Connection failed: " . $conn->connect_error);
} else {
    return $conn;
}
?>