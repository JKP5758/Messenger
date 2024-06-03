<?php
    session_start();
    require "../../koneksi.php";

    if (!isset($_SESSION['id'])) {
        echo "<script>alert('Silahkan Login Terlebih dahulu');window.location='../../login/';</script>";
    }

    $id = $_SESSION["id"];

    $partner = $_GET['id'];

    if ($id == $partner) {
        $query = mysqli_query($koneksi, "SELECT * FROM user WHERE id = '$id'");
        $row = mysqli_fetch_assoc($query);

        $hide = "";
    } else {
        $query = mysqli_query($koneksi, "SELECT nama, username, profil FROM user WHERE id = '$partner'");
        $row = mysqli_fetch_assoc($query);
        $row['password'] = 'none';
        $hide = "hide";
    }
    
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/profil.css">
    <link rel="icon" href="../../aset/img/favicon.png" type="image/png">
    <title>Profil</title>
</head>
<body>
    <div class="action">
        <button class="back" onclick="window.history.back();">Kembali</button>
    </div>
    <div class="container">
        <div class="putih">
            <img class="foto_profil" src="../../aset/profil/<?=$row['profil']?>" alt="">
        </div>
        <div class="data">
            <input type="text" name="nama" value="<?=$row['nama']?>" id="">
            <input type="text" name="username" value="<?=$row['username']?>" id="">
            <input class="<?=$hide?>" type="password" name="password" value="<?=$row['password']?>" id="">
        </div>
    </div>
</body>
</html> 