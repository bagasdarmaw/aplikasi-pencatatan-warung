<?php
if (isset($_GET['id_pelanggan'])) {
    $id_pelanggan = $_GET['id_pelanggan'];
} else {
    die("Error. No ID Selected!");
}
include 'koneksi.php';
include 'fungsi.php';
$data = mysqli_query($koneksi, "SELECT * FROM pelanggan where id_pelanggan=$id_pelanggan");
$row = mysqli_fetch_array($data);

?>
<html>

<head>
    <title>Script PHP untuk Menampilkan Data dari Database Derdasarkan Id</title>
    <link rel="stylesheet" href="asset/css/bootstrap.min.css" />
    <link rel="stylesheet" href="asset/css/datatables.min.css">
</head>

<body>
    <div class="container" style="margin-top:3%">
        <h2>Detail Data pelanggan</h2>
        <p><i>Note: Dibawah ini adalah detail informasi pelanggan berdasarkan id_pelanggan</i> <b><?php echo $id_pelanggan ?></b></p>
        <table class="table" border="0">

            <tr>
                <td style="width: 10%;">Nama</td>
                <td>: <?php echo $row['nama'] ?></td>
            </tr>
            <tr>
                <td>Alamat</td>
                <td>: <?php echo $row['alamat'] ?></td>
            </tr>
        </table>
        <div class="container ">
            <div class="row ">
                <div class="col-4 d-grid gap-2 d-md-flex">
                    <a class="btn btn-success " data-bs-toggle="modal" data-bs-target="#modalEdit">Edit</a>
                </div>
                <div class="col-8 d-grid gap-2 d-md-flex justify-content-md-end">
                    <a class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#modalHutang">Hutang</a>
                    <a class="btn btn-secondary " data-bs-toggle="modal" data-bs-target="#modalBayar">Bayar</a>
                </div>
            </div>

        </div>

        <table class="table table-striped">
            <tr>
                <th>
                    No
                </th>
                <th>
                    Tanggal
                </th>
                <th>
                    Keterangan
                </th>
                <th>
                    hutang
                </th>
                <th>
                    bayar
                </th>
                <th>
                    total
                </th>
            </tr>
            <?php
            $no = 1;
            $data = mysqli_query($koneksi, " select  *
															from 
															transaksi
															where
															id_pelanggan = $id_pelanggan
															order by id_hutang asc");
            while ($rw = mysqli_fetch_array($data)) {
            ?>
                <tr class="table-active">
                    <td>
                        <?= $no++; ?>
                    </td>
                    <td>
                        <?= date('d-m-Y', strtotime($rw['tanggal'])); ?>
                    </td>
                    <td>
                        <?= $rw['keterangan']; ?>
                    </td>
                    <td>
                        <?php if ($rw['hutang'] == '') {
                        } else {
                            echo format_rupiah($rw['hutang']);
                        } ?>
                    </td>
                    <td>
                        <?php if ($rw['bayar'] == '') {
                        } else {
                            echo format_rupiah($rw['bayar']);
                        } ?>
                    </td>
                    <td>
                        <?php if ($rw['total'] == '') {
                        } else {
                            echo format_rupiah($rw['total']);
                        } ?>
                    </td>
                </tr>
            <?php
                $no++;
            }
            ?>

            <td>&nbsp; &nbsp;<a class="btn btn-dark" href="./">Kembali</a></td>

        </table>
    </div>
    <!-- MODAL HUTANG -->
    <div class="modal fade" id="modalHutang" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Catat Hutang</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form method="post" action="hutang.php">
                        <div class="mb-3">
                            <label class="col-form-label">ID Pelanggan</label>
                            <input type="text" class="form-control" id="id_pelanggan" name="id_pelanggan" value="<?php echo $row['id_pelanggan'] ?>" readonly>
                        </div>
                        <div class="mb-3">
                            <label class="col-form-label">Nama</label>
                            <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $row['nama'] ?>" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="">Tanggal</label>
                            <input type="date" name="tanggal" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="col-form-label">Keterangan</label>
                            <input type="text" class="form-control" id="keterangan" name="keterangan"></input>
                        </div>
                        <div class="mb-3">
                            <label class="col-form-label">Jumlah Hutang</label>
                            <input type="text" class="form-control" id="hutang" name="hutang" placeholder="Masukkan Nominal Hutang" onkeyup="convertToRupiah(this);"></input>
                        </div>
                        <button type="submit" name="simpanHutang" class="btn btn-primary">Simpan</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modalBayar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Bayar Hutang</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form method="post" action="bayar.php">
                        <div class="mb-3">
                            <label class="col-form-label">ID Pelanggan</label>
                            <input type="text" class="form-control" id="id_pelanggan" name="id_pelanggan" value="<?php echo $row['id_pelanggan'] ?>" readonly>
                        </div>
                        <div class="mb-3">
                            <label class="col-form-label">Nama</label>
                            <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $row['nama'] ?>" readonly>
                        </div>
                        <div class="mb-3">
                            <label for="">Tanggal</label>
                            <input type="date" name="tanggal" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="col-form-label">Keterangan</label>
                            <input type="text" class="form-control" id="keterangan" name="keterangan"></input>
                        </div>
                        <div class="mb-3">
                            <label class="col-form-label">Jumlah Bayar</label>
                            <input type="text" class="form-control" id="bayar" name="bayar" placeholder="Masukkan Nominal Pembayaran" onkeyup="convertToRupiah(this);"></input>
                        </div>
                        <button type="submit" name="simpanBayar" class="btn btn-primary">Simpan</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="asset/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="asset/js/rupiah.js"></script>
</body>

</html>