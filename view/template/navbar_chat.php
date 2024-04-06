    <nav class="fix">
        <div class="logo">
            <!-- <a href="../dashboard"><h2>Messenger</h2></a> -->
                <div class="profil_user">
                    <img class="foto_profil" src="../../aset/profil/<?=$hasil_data_partner['profil']?>" alt="Foto Profil">
                    <div class="data_nama">
                        <span class="nama"><?=$hasil_data_partner['nama']?></span>
                        <!-- <span class="username">jkp</span> -->
                    </div>
                </div>
       
        </div>
        
        <ul>
            <li>
                <div class="menu-icon">
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                </div>
                <div class="dropdown">
                    <ul>
                        <li><a href="../profil?id=<?=$partner?>">Profil</a></li>
                        <li><a href="">-</a></li>
                        <li><a href="">-</a></li>
                        <li><a href="../../login/logout.php">LogOut</a></li>
                    </ul>
                </div>   
            </li>
        </ul>
    </nav>