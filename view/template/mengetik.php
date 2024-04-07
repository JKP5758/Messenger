<form id="myForm" action="../chat/proses.php" method="post">
    <div class="container pesan">
        <input type="hidden" name="token" value="<?=$token?>">
        <input type="hidden" name="pengirim" value="<?=$id?>">
        <input type="hidden" name="penerima" value="<?=$partner?>">
        <textarea id="kirim_pesan" name="isi_pesan" placeholder="Ketik di sini..." oninput="autoResize()"></textarea>
        <input type="hidden" id="jam" name="jam" value="">
        <input type="hidden" id="tanggal" name="tanggal" value="">
        <button type="submit" id="submit_button"><span class="fas fa-paper-plane"></span></button>
    </div>
</form>

<script src="../../javascript/chat.js"></script>
