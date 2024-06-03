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
    <link rel="icon" href="../../aset/img/favicon.png" type="image/png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="../../javascript/chat.js"></script>
    <title><?=$hasil_data_partner['nama']?></title>
</head>
<body onload="scrollToBottom()">
    <?php
        require "../template/navbar_chat.php";
        require "chat.php";
        require "../template/mengetik.php";
    ?>

    <div id="data-container">
        <?php
            require "update.php";     
        ?>
    </div>



    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            function refreshData() {
                $.ajax({
                    url: '../chat/update.php?token=<?= $token ?>',
                    success: function(response) {
                        // Mengganti konten dari elemen dengan id "data-container" dengan respons dari data.php
                        $('#data-container').html(response);
                    }
                });
            }

            // Memanggil fungsi refreshData setiap 1 detik
            setInterval(refreshData, 2500);
        });
    </script>


    <div id="bottom">
        <!-- Ini jangan di hapus -->

    </div>

    <script>
        function scrollToBottom() {
            // Menggulir halaman ke bawah
            window.scrollTo(0,document.body.scrollHeight);
        }
    </script>

</body>
</html>