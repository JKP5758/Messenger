    <nav>
        <div class="logo">
            <a href="../dashboard"><h2>Messenger</h2></a>
            
       
        </div>
        
        <ul>
            <li>
                <div class="profil">
                    <img class="foto_profil" src="../../aset/profil/<?= $row['profil']?>" alt="Foto Profil">
                    <div class="data_nama">
                        <span class="nama"><?= $row['nama']?></span>
                        <span class="username"><?= $row['username']?></span>
                    </div>
                </div>
                
                <div class="dropdown">
                    <ul>
                        <li><a href="../profil?id=<?=$id?>">Profil</a></li>
                        <li><a href="../tambah">Tambah Chat</a></li>
                        <li><a href="">-</a></li>
                        <li><a href="../../login/logout.php">LogOut</a></li>
                    </ul>
                </div>   
            </li>
        </ul>
    </nav>