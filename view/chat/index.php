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
    <link rel="stylesheet" href="../../css/chat.css">
    <link rel="stylesheet" href="../../css/template.css">
    <link rel="stylesheet" href="../../css/mengetik.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Chat</title>
</head>
<body>
    <?php
        require "../template/navbar_chat.php";
    ?>

    <div class="container">
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