<?php
    session_start();
    require "../../koneksi.php";

    if (!isset($_SESSION['id'])) {
        echo "<script>alert('Silahkan Login Terlebih dahulu');window.location='../../login/';</script>";
    }

    $username = $_SESSION['username'];
    $profil = "hide";
    $cari = "";


    if (isset($_GET['username'])) {
        $partner = htmlspecialchars($_GET['username']);
        $profil = "";
        $cari = "hide";

        $query = mysqli_query($koneksi, "SELECT id, nama, username, profil FROM user WHERE username = '$partner'");
        $row = mysqli_fetch_assoc($query);
        
    
        if (mysqli_num_rows($query) == 0) {
            echo "<script>alert('User tidak ditemukan');</script>";
            
        }

        if ($username == $partner) {
            $hide = "hide";
        } else {
            $hide = "";
        }
    
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/profil.css">
    <title>Tambah Chat</title>
</head>
<body>
    <div class="action">
        <button class="back" onclick="window.history.back();">Kembali</button>
    </div>

    <div class="cari <?=$cari?>">
        <form name="searchForm" action="" method="get" onsubmit="return validateForm()">
            <input type="search" style="min-width: 70%; background-color: white;" name="username" placeholder="Username">
            <input class="button" type="submit" style="min-width: 10%; background-color: #E3EEF2; font-weight: bold; color: #333333; transition: all 0.2s; " value="Cari 🔎">
        </form>
    </div>

    <div class="container <?=$profil?>">
        <div class="putih">
            <img class="foto_profil" src="../../aset/profil/<?=$row['profil']?>" alt="">
        </div>

        <form action="proses.php" method="post"></form>
        <div class="data">
            <form action="proses_tambah.php" method="post">
                <input type="hidden" name="id" value="<?=$row['id']?>">
                <input type="text" name="nama" value="<?=$row['nama']?>" id="">
                <input type="text" name="username" value="<?=$row['username']?>" id="">
                <input class="button <?=$hide?>" type="submit" value="Kirim Pesan ✉"  style="transition: all 0.2s; pointer-events: all;">
            </form>
            
        </div>
    </div>

    <script>
        function validateForm() {
            var username = document.forms["searchForm"]["username"].value;
            if (username == "") {
                alert("Username tidak boleh kosong");
                return false; // Menghentikan pengiriman form
            }
            return true; // Mengizinkan pengiriman form
        }
    </script>
</body>
</html>