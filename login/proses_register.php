<?php
session_start();
require "../koneksi.php";

// Mengambil data dari Form
$nama = htmlspecialchars($_POST['name']);
$username = htmlspecialchars($_POST['username']);
$password = htmlspecialchars($_POST['password']);
$target_dir = "../aset/profil/"; // Direktori tempat file akan disimpan
$target_file = $target_dir . basename($_FILES["file"]["name"]);

// Enkripsi password
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
    echo "File ". basename($_FILES["file"]["name"]). " telah berhasil diunggah.";

    $file_name = basename($_FILES["file"]["name"]);
    
    $query = "INSERT INTO user (username, nama, password, profil) VALUES (?, ?, ?, ?)";
    $stmt = $koneksi->prepare($query);
    $stmt->bind_param("ssss", $username, $nama, $hashed_password, $file_name);

    if ($stmt->execute()) {
        // Registrasi berhasil, arahkan pengguna ke halaman tertentu
        header("Location: {$_SERVER['HTTP_REFERER']}");
        exit(); // Pastikan kode setelah header tidak dijalankan
    } else {
        echo "Terjadi kesalahan: " . $stmt->error;
    }
} else {
    echo "Maaf, terjadi kesalahan saat mengunggah file Anda.";
}
?> 
