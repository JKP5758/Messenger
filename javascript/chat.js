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

// Validasi form
function validateForm() {
    var isi_pesan = document.forms["FormPesan"]["isi_pesan"].value;
    if (isi_pesan.trim() == "") {
        alert("Pesan tidak boleh kosong");
        return false; // Menghentikan pengiriman form
    }
    return true; // Mengizinkan pengiriman form
}

// Event listener untuk tombol Enter pada textarea
document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('kirim_pesan').addEventListener('keydown', function(event) {
        if (event.keyCode === 13 && !event.shiftKey && !isMobileDevice()) { // Tombol Enter tanpa Shift ditekan di perangkat non-mobile
            event.preventDefault(); // Mencegah baris baru ditambahkan ke textarea
            if (validateForm()) { // Validasi sebelum mengirim
                // Kirim formulir menggunakan JavaScript
                document.getElementById('myForm').submit();
            }
        }
    });

    // Event listener untuk tombol "Submit"
    document.getElementById('submit_button').addEventListener('click', function(event) {
        if (!validateForm()) { // Validasi sebelum mengirim
            event.preventDefault(); // Menghentikan pengiriman form jika tidak valid
        }
    });

    // Memanggil fungsi updateDateTime setiap detik
    setInterval(updateDateTime, 1000);
});

function updateDateTime() {
    var now = new Date();
    var jam = now.getHours().toString().padStart(2, '0') + '' + now.getMinutes().toString().padStart(2, '0') + '' + now.getSeconds().toString().padStart(2, '0');
    var tanggal = now.getFullYear().toString() + '' + (now.getMonth() + 1).toString().padStart(2, '0') + '' + now.getDate().toString().padStart(2, '0');

    document.getElementById('jam').value = jam;
    document.getElementById('tanggal').value = tanggal;
}