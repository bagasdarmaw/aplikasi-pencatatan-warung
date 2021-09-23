<?php
include 'koneksi.php';
// mengecek tombol sudak diklik
if (isset($_POST['simpanUser'])) {

    // ambil data dari form
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];

    // querry
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
