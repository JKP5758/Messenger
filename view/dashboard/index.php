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
    <link rel="stylesheet" href="../../css/dashboard.css">
    <link rel="stylesheet" href="../../css/template.css">
    <title>Messenger</title>
</head>
<body>
    <?php
        require "../template/navbar.php";
    ?>

    <div class="container">
        <a href="">
            <div class="people">
                <img class="foto_profil" src="../../aset/profil/01.png" alt="Foto Profil">
                <div class="nama_pesan">
                    <!-- <span class="nama">joko Purnomo</span> -->
                    <input type="text" value="Joko Purnomo" class="nama" id="" readonly>
                    <input type="text" value="lorem adhiusgdwajhdn oaiwhd anp awd aowijda" class="pesan" id="" readonly>
                </div>
                <div class="waktu">
                    <input type="text" value="19.00" class="jam" id="" readonly>
                </div>
            </div>
        </a>
        <a href="">
            <div class="people">
                <img class="foto_profil" src="../../aset/profil/01.png" alt="Foto Profil">
                <div class="nama_pesan">
                    <!-- <span class="nama">joko Purnomo</span> -->
                    <input type="text" value="Joko Purnomo" class="nama" id="" readonly>
                    <input type="text" value="lorem adhiusgdwajhdn oaiwhd anp awd aowijda" class="pesan" id="" readonly>
                </div>
                <div class="waktu">
                    <input type="text" value="19.00" class="jam" id="" readonly>
                </div>
            </div>
        </a>
    </div>
</body>
</html>