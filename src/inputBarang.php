<?php
include 'koneksi.php';
include 'fungsi.php';

// cek tombol sudah diklik
if (isset($_POST['simpanHarga'])) {

    // ambil data dari form['tabel database']
    $nama_barang = $_POST['nama_barang'];
    $id_jenis = $_POST['jenis_barang'];
    $harga_beli = $_POST['harga_beli'];
    $harga_jual = $_POST['harga_jual'];
    $harga_jual_satuan = $_POST['harga_jual_satuan'];

    // querry
    $query = " INSERT INTO barang (nama_barang, id_jenis, harga_beli, harga_jual, harga_jual_satuan) VALUES 
    (
    '$nama_barang', 
    '$id_jenis', 
    '$harga_beli', 
    '$harga_jual',
    '$harga_jual_satuan')";

    // eksekusi query
    $hasil = mysqli_query($koneksi, $query);
    if ($hasil) {
        echo "<script> 
            alert('Data berhasil ditambah!');
            location.replace(document.referrer);
        </script>";
    } else {
        echo "<script>
    alert('Data GAGAL DIMASUKKAN');
    window.location = '../barang.php';
    </script>";
    }
}
