<div class="container">

        <?php
            $query_pesan = mysqli_query($koneksi, "SELECT * FROM `data_pesan` WHERE token = '$token' ORDER BY id");
            while ($pesan = mysqli_fetch_assoc($query_pesan)) {

                if ($pesan['pengirim'] == $id) {
                    $profil = $row['profil'];
                    $nama = $row['nama'];
                    $self = "self";
                } else {
                    $profil = $hasil_data_partner['profil'];
                    $nama = $hasil_data_partner['nama'];
                    $self = "";
                }

                $jam = substr($pesan['jam'], 0, 5); 
        ?>

                <div class="data_pesan <?=$self?>">
                    <img class="foto_profil mini" src="../../aset/profil/<?=$profil?>" alt="Foto Profil">
                    <div class="isi_pesan">
                        <span class="nama"><?=$nama?></span>
                        <p class="pesan"><?=$pesan['pesan']?></p>
                        <span class="jam"><?=$jam?></span>
                    </div>
                </div>

        <?php
            }
        ?>

    </div>

    