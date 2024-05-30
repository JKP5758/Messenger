<?php
    session_start();
    require "../../koneksi.php";

    $id = $_SESSION['id'];
    $token = htmlspecialchars($_POST['token']);
    $pengirim = htmlspecialchars($_POST['pengirim']);
    $penerima = htmlspecialchars($_POST['penerima']);
    $pesan = htmlspecialchars($_POST['isi_pesan']);
    $jam = htmlspecialchars($_POST['jam']);
    $tanggal = htmlspecialchars($_POST['tanggal']);

    $query = mysqli_query($koneksi, "INSERT INTO `data_pesan` (`id`, `token`, `pengirim`, `penerima`, `pesan`, `jam`, `tanggal`) VALUES (NULL, '$token', '$pengirim', '$penerima', '$pesan', '$jam', '$tanggal')");
    echo mysqli_query($koneksi,"UPDATE relasi SET update_id = '$id' WHERE relasi.token = '$token'");


    //echo "INSERT INTO `data_pesan` (`id`, `token`, `pengirim`, `penerima`, `pesan`, `jam`, `tanggal`) VALUES (NULL, '$token', '$pengirim', '$penerima', '$pesan', '$jam', '$tanggal')";

    if ($query) {
        // Redirect pengguna ke halaman sebelumnya setelah penyisipan data ke database
        header("Location: {$_SERVER['HTTP_REFERER']}");
        exit;
    } else {
        // Penanganan kesalahan jika kueri gagal dieksekusi
        echo "Terjadi kesalahan saat menyimpan pesan.";
    }