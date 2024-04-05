<?php
    session_start();
    require "../../koneksi.php";

    if (!isset($_SESSION['id'])) {
        echo "<script>alert('Silahkan Login Terlebih dahulu');window.location='../../login/';</script>";
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/profil.css">
    <title>Profil</title>
</head>
<body>
    <div class="action">
        <button class="back" onclick="window.history.back();">Kembali</button>
    </div>
    <div class="container">
        <div class="putih">
            <img class="foto_profil" src="../../aset/profil/01.png" alt="">
        </div>
        <div class="data">
            <input type="text" name="nama" value="Joko Purnomo" id="">
            <input type="text" name="username" value="jkp" id="">
            <input type="password" name="password" value="password" id="">
        </div>
    </div>
</body>
</html> 