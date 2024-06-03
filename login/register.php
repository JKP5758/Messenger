<?php
    session_start();
    require "../koneksi.php";

    if (isset($_SESSION['id'])) {
        if ($_SESSION['id'] != 1){
            echo "<script> alert('Kamu Tidak Memiliki Akses'); window.location.href = '../login';</script> ";
        }
    } else {
        echo "<script> alert('Kamu Tidak Memiliki Akses'); window.location.href = '../login';</script> ";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="icon" href="../aset/img/favicon.png" type="image/png">
    <title>Register</title>
</head>
<body>
    <div class="container">
        <form action="proses_register.php" method="POST" enctype="multipart/form-data">
            <h2>Register</h2>
            <div class="input-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-group">
                <label for="file">Foto Profil</label>
                <input type="file" name="file" id="file">
            </div>
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>