// Fungsi untuk mengatur tinggi textarea secara otomatis
function autoResize() {
    var textarea = document.getElementById('kirim_pesan');
    textarea.style.height = 'auto';
    textarea.style.height = textarea.scrollHeight + 'px';
}
// Deteksi apakah perangkat adalah perangkat mobile
function isMobileDevice() {
    return (typeof window.orientation !== "undefined") || (navigator.userAgent.indexOf('IEMobile') !== -1);
}

// Event listener untuk tombol Enter pada textarea
document.getElementById('kirim_pesan').addEventListener('keydown', function(event) {
    if (event.keyCode === 13 && !event.shiftKey && !isMobileDevice()) { // Tombol Enter tanpa Shift ditekan di perangkat non-mobile
        event.preventDefault(); // Mencegah baris baru ditambahkan ke textarea
        
        // Kirim formulir menggunakan JavaScript
        document.getElementById('myForm').submit();
    }
});

// Event listener untuk tombol "Submit"
document.getElementById('submit_button').addEventListener('click', function() {
    // Kirim formulir menggunakan JavaScript
    document.getElementById('myForm').submit();
});
