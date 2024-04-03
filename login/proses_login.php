<?php
    session_start();
    require "../koneksi.php";

    //  Mengambil data dari Form
    $username = htmlspecialchars($_POST['username']);
    $password = htmlspecialchars($_POST['password']);

    // Data user
    $query_user = mysqli_query($koneksi, "SELECT * FROM user WHERE username='$username' AND password='$password'");
    $cek_user = mysqli_num_rows($query_user);
    $data_user = mysqli_fetch_assoc($query_user);

    if ($cek_user > 0) {
        $_SESSION['id'] = $data_user['id'];
        header("location: ../view/dashboard");
    } else {
        echo "<script> alert('Username / Password Salah'); window.location.href = '../login';</script> ";
    }

    ?> 