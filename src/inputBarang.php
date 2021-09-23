<?php
include 'koneksi.php';
include 'fungsi.php';

// cek tombol sudah diklik
if (isset($_POST['simpanHarga'])) {

    // ambil data dari form['tabel database']
    $id_barang = $_POST['id_barang'];
    $nama_barang = $_POST['nama_barang'];
    $harga_beli = $_POST['harga_beli'];
    $harga_jual = $_POST['harga_jual'];
    $harga_jual_satuan = $_POST['harga_jual_satuan'];

    // querry
    $query = " INSERT INTO barang SET
								nama_barang = '$nama_barang',
								harga_beli = '$harga_beli',
                                harga_jual = '$harga_jual',
                                harga_jual_satuan = '$harga_jual_satuan'
								";

    // eksekusi query
    $hasil = mysqli_query($koneksi, $query);


    echo "<script> 
            alert('Data berhasil ditambah!');
            window.location = '../barang.php';
        </script>
    ";
}
