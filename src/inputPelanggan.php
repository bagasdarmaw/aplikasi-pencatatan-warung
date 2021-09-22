<?php
include "koneksi.php";
if (isset($_POST['simpanUser'])) {
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];

    $query = " INSERT INTO pelanggan SET
								nama = '$nama',
								alamat = '$alamat'
								";

    // eksekusi query
    $hasil = mysqli_query($koneksi, $query);


    echo "<script> 
            alert('Data berhasil ditambah!');
            window.location = '../index.php';
        </script>
    ";
}
