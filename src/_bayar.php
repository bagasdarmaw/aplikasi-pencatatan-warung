<?php
session_start();
include 'koneksi.php';
include 'fungsi.php';


if (isset($_POST['simpanBayar'])) {
    $id_pelanggan = $_POST['id_pelanggan'];
    $tanggal = date('Y-m-d', strtotime($_POST['tanggal']));
    $keterangan = $_POST['keterangan'];
    $bayar = reset_rupiah($_POST['bayar']);

    $data = mysqli_query($koneksi, "select bayar,
    hutang,
    sum(bayar) as jumlah_pembayaran,
    sum(hutang) as jumlah_hutang
    from
    transaksi where
    id_pelanggan = $id_pelanggan");

    $row = mysqli_fetch_array($data);
    $total = $row['jumlah_hutang'] - $row['jumlah_pembayaran'] - $bayar;

    $query = " INSERT INTO transaksi (id_pelanggan, bayar, tanggal, keterangan, total) VALUES ('$id_pelanggan',
    '$bayar',
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
// '<script type="text/javascript" src="asset/js/rupiah.js"></script>';
