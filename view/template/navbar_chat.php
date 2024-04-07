    <nav class="fix">
        <div class="logo">
            <!-- <a href="../dashboard"><h2>Messenger</h2></a> -->
            <a href="../profil?id=<?=$partner?>">
                <div class="profil_user">
                    <img class="foto_profil" src="../../aset/profil/<?=$hasil_data_partner['profil']?>" alt="Foto Profil">
                    <div class="data_nama">
                        <span class="nama"><?=$hasil_data_partner['nama']?></span>
                        <!-- <span class="username">jkp</span> -->
                    </div>
                </div>
            </a>
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
                        <li><a href="../dashboard">Dashboard</a></li>
                        <li><a href="">-</a></li>
                        <li><a href="../../login/logout.php">LogOut</a></li>
                    </ul>
                </div>   
            </li>
        </ul>
    </nav>