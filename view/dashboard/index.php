<?php
    session_start();
    require "../../koneksi.php";

    if (!isset($_SESSION['id'])) {
        echo "<script>alert('Silahkan Login Terlebih dahulu');window.location='../../login/';</script>";
    }

    $id = $_SESSION["id"];

    $query = mysqli_query($koneksi, "SELECT username, nama, profil FROM user WHERE id = '$id'");
    $row = mysqli_fetch_assoc($query)
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

        $query_relasi = mysqli_query($koneksi, "SELECT * FROM `relasi` WHERE id_user1 = '$id' OR id_user2 = '$id';");
        

        while ($hasil_relasi = mysqli_fetch_assoc($query_relasi)) {

            if ($id == $hasil_relasi['id_user1'] ) {
                $partner = $hasil_relasi['id_user2'];
            } else {
                $partner = $hasil_relasi['id_user1'];
            }

            $query_data_partner = mysqli_query($koneksi, "SELECT nama, profil FROM `user` WHERE id = '$partner'");
            $hasil_data_partner = mysqli_fetch_assoc($query_data_partner);

            $token = $hasil_relasi['token'];
            $query_pesan = mysqli_query($koneksi, "SELECT * FROM `data_pesan` WHERE token = '$token' ORDER BY tanggal DESC LIMIT 1");
            $pesan = mysqli_fetch_assoc($query_pesan);

            $jam = substr($pesan['jam'], 0, 5);
    ?>
            <div class="container">
                <a href="../chat">
                    <div class="people">
                        <img class="foto_profil" src="../../aset/profil/<?=$hasil_data_partner['profil']?>" alt="Foto Profil">
                        <div class="nama_pesan">
                            <!-- <span class="nama">joko Purnomo</span> -->
                            <input type="text" value="<?=$hasil_data_partner['nama']?>" class="nama" id="" readonly>
                            <input type="text" value="<?=$pesan['pesan']?>" class="pesan" id="" readonly>
                        </div>
                        <div class="waktu">
                            <input type="text" value="<?=$jam?>" class="jam" id="" readonly>
                        </div>
                    </div>
                </a>
            </div>

    <?php       
        }
    ?>
</body>
</html>