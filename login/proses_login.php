<?php
session_start();
require '../koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = htmlspecialchars($_POST['username']);
    $password = htmlspecialchars($_POST['password']);

    $query = "SELECT id, username, password FROM user WHERE username = ?";
    $stmt = $koneksi->prepare($query);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($id, $db_username, $hashed_password);
        $stmt->fetch();

        if (password_verify($password, $hashed_password)) {
            $_SESSION['id'] = $id;
            $_SESSION['username'] = $db_username;
            header("Location: ../view/dashboard");
            exit();
        } else {
            echo "<script>alert('Username / Password Salah'); window.location.href = '../login';</script>";
        }
    } else {
        echo "<script>alert('Username tidak ditemukan'); window.location.href = '../login';</script>";
    }

    $stmt->close();
    $koneksi->close();
}
    ?> 