<?php
    session_start();
    require "../koneksi.php";

    //  Mengambil data dari Form
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Data user
    $query_user = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username' AND password='$password'");
    $cek_user = mysqli_num_rows($query_user);
    $baris_user = mysqli_fetch_assoc($query_user);

    if ($cek_petugas > 0) {
        $_SESSION['username'] = $baris_petugas['nama_petugas'];
        $_SESSION['leveluser'] = $baris_petugas['leveluser'];
        header("location: ../view/dashboard.php");
    } else {
        echo "<script> alert('Username / Password Salah'); window.location.href = 'login.php';</script> ";
    }

    ?> 