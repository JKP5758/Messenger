<?php
    session_start();
    require "../../koneksi.php";

    if (!isset($_SESSION['id'])) {
        echo "<script>alert('Silahkan Login Terlebih dahulu');window.location='../../login/';</script>";
    }

    $id = $_SESSION["id"];
    $token = $_GET['token'];

    $query_relasi = mysqli_query($koneksi, "SELECT * FROM `relasi` WHERE token = $token");
    $hasil_relasi = mysqli_fetch_assoc($query_relasi);
    if ($id == $hasil_relasi['id_user1'] ) {
        $partner = $hasil_relasi['id_user2'];
    } else {
        $partner = $hasil_relasi['id_user1'];
    }

    $query_data_partner = mysqli_query($koneksi, "SELECT nama, profil FROM `user` WHERE id = '$partner'");
    $hasil_data_partner = mysqli_fetch_assoc($query_data_partner);

    $query = mysqli_query($koneksi, "SELECT username, nama, profil FROM user WHERE id = '$id'");
    $row = mysqli_fetch_assoc($query)
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/chat.css">
    <link rel="stylesheet" href="../../css/template.css">
    <link rel="stylesheet" href="../../css/mengetik.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title><?=$hasil_data_partner['nama']?></title>
</head>
<body>
    <?php
        require "../template/navbar_chat.php";
    ?>

    <div class="container">

        <?php

        ?>

        <div class="data_pesan">
            <img class="foto_profil mini" src="../../aset/profil/01.png" alt="Foto Profil">
            <div class="isi_pesan">
                <span class="nama">Joko Purnomo</span>
                <p class="pesan">Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur, veniam dicta saepe excepturi, dolores optio beatae eaque suscipit ducimus, deserunt ab nam reprehenderit quis quae molestiae laudantium laboriosam fugit magni.</p>
                <span class="jam">19.00</span>
            </div>
        </div>

        <div class="data_pesan self">
            <img class="foto_profil mini" src="../../aset/profil/01.png" alt="Foto Profil">
            <div class="isi_pesan">
                <span class="nama">Joko Purnomo</span>
                <p class="pesan">Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur, veniam dicta saepe excepturi, dolores optio beatae eaque suscipit ducimus, deserunt ab nam reprehenderit quis quae molestiae laudantium laboriosam fugit magni.</p>
                <span class="jam">19.00</span>
            </div>
        </div>
    </div>

    <?php
        require "../template/mengetik.php";
    ?>
</body>
</html>