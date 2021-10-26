<?php
include 'koneksi.php';
include 'fungsi.php';

// cek tombol sudah diklik
if (isset($_POST['simpanEdit'])) {

    // ambil data dari form['tabel database']
    $id_barang = $_POST['id_barang'];
    $nama_barang = $_POST['nama_barang'];
    $id_jenis = $_POST['jenis_barang'];
    $harga_beli = $_POST['harga_beli'];
    $harga_jual = $_POST['harga_jual'];
    $harga_jual_satuan = $_POST['harga_jual_satuan'];

    // querry
    $query = "UPDATE barang SET
								nama_barang = '$nama_barang',
                                jenis_barang = '$id_jenis',
								harga_beli = '$harga_beli',
                                harga_jual = '$harga_jual',
                                harga_jual_satuan = '$harga_jual_satuan'
                                WHERE id_barang = '$id_barang'";

    // eksekusi query
    $hasil = mysqli_query($koneksi, $query);


    echo "<script> 
            alert('Data berhasil DIUBAH');
            window.location = '../barang.php';
        </script>
    ";
}
