<div class="container pesan">
    <textarea id="kirim_pesan" placeholder="Ketik di sini..." oninput="autoResize()"></textarea>
    <span class="fas fa-paper-plane"></span>
</div>

<script>
    // Fungsi untuk mengatur tinggi textarea secara otomatis
    function autoResize() {
        var textarea = document.getElementById('kirim_pesan');
        textarea.style.height = 'auto';
        textarea.style.height = textarea.scrollHeight + 'px';
    }
</script>