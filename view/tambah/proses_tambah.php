<?php
    session_start();
    require "../../koneksi.php";

    if (!isset($_SESSION['id'])) {
        echo "<script>alert('Silahkan Login Terlebih dahulu');window.location='../../login/';</script>";
    }

    $id = $_SESSION['id'];
    $id_partner = $_POST['id'];
     
    $query_check = mysqli_query($koneksi, "SELECT * FROM relasi WHERE (id_user1 = '$id' AND id_user2 = '$id_partner') OR (id_user1 = '$id_partner' AND id_user2 = '$id')");

    if (mysqli_num_rows($query_check) == 0) {
        $query = mysqli_query($koneksi, "INSERT INTO `relasi` (`token`, `id_user1`, `id_user2`, `update_id`) VALUES (NULL, '$id', '$id_partner', '')");

        if ($query) {
            $query_chat = mysqli_query($koneksi, "SELECT * FROM relasi WHERE (id_user1 = '$id' AND id_user2 = '$id_partner') OR (id_user1 = '$id_partner' AND id_user2 = '$id')");
            $row = mysqli_fetch_assoc($query_chat);
            $token = $row['token'];
            // Query berhasil dieksekusi, arahkan pengguna ke halaman dashboard
            header("Location: ../chat?token=$token");
            exit; // Penting untuk menghentikan eksekusi skrip PHP setelah mengatur header
        } else {
            // Query gagal dieksekusi, tampilkan pesan kesalahan atau lakukan tindakan lain sesuai kebutuhan
            echo "Error: " . mysqli_error($koneksi);
        }
    } else {
        $row = mysqli_fetch_assoc($query_check);
        $token = $row['token'];
        header("Location: ../chat/?token=$token");
    }

?>