<?php
function validasiInput($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama = validasiInput($_POST["nama"]);
    $email = validasiInput($_POST["email"]);
    $pesan = validasiInput($_POST["pesan"]);

    // Validasi email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "Format email tidak valid";
    } else {
        // Proses data yang sudah divalidasi
        echo "Nama: " . $nama . "<br>";
        echo "Email: " . $email . "<br>";
        echo "Pesan: " . $pesan;
    }
}
?>