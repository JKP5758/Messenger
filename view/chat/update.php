<?php

    if (!isset($_SESSION['id'])) {
        session_start();
    }
    
    
    require "../../koneksi.php";

    $token = htmlspecialchars($_GET['token']);

    $query_update = mysqli_query($koneksi, "SELECT * FROM relasi WHERE token = '$token'");
    $hasil_update = mysqli_fetch_assoc($query_update);

    // echo "Query error: " . mysqli_error($koneksi);
    // echo $hasil_update['update_id'];

    if ($hasil_update['update_id'] != $_SESSION['id'] && $hasil_update['update_id'] != 0){

        echo mysqli_query($koneksi,"UPDATE relasi SET update_id = '0' WHERE relasi.token = '$token'");
        
        echo '<script type="text/javascript">
            window.location.reload();
            scrollToBottom();
          </script>';
        // echo "<br>Data tidak sama".$token;
    }
?>
