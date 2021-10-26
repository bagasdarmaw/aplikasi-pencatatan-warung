<?php
session_start();
include 'koneksi.php';
include 'fungsi.php';


if (isset($_POST['simpanHutang'])) {
    $id_pelanggan = $_POST['id_pelanggan'];
    $tanggal = date('Y-m-d', strtotime($_POST['tanggal']));
    $keterangan = $_POST['keterangan'];
    $hutang = reset_rupiah($_POST['hutang']);

    $data = mysqli_query($koneksi, "select bayar,
    hutang,
    sum(bayar) as jumlah_pembayaran,
    sum(hutang) as jumlah_hutang
    from
    transaksi where
    id_pelanggan = $id_pelanggan");

    $row = mysqli_fetch_array($data);
    $total = $row['jumlah_hutang'] - $row['jumlah_pembayaran'] + $hutang;

    $query = " INSERT INTO transaksi (id_pelanggan, hutang, tanggal, keterangan, total) VALUES 
    ('$id_pelanggan',
    '$hutang',
    '$tanggal',
    '$keterangan',
    '$total')";

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
    </script>";
    }
}
