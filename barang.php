<?php
include 'src\koneksi.php';
include 'src\fungsi.php';

?>

<html>

<head>
    <link rel="stylesheet" href="asset/css/bootstrap.min.css" />
    <link rel="stylesheet" href="asset/css/datatables.css">
    <link rel="stylesheet" href="asset/css/jquery.dataTables.min.css">
    <script type="text/javascript" src="asset/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="asset/js/jquery.dataTables.js"></script>
</head>

<!-- PILIHAN KONFIRMASI HAPUS DATA -->
<script type="text/javascript">
    function deleteconfig() {
        var tujuan = $(this).attr('id_barang');
        var hapusin = confirm("Apakah Anda yakin ingin menghapus data ini?");
        if (hapusin == true) {
            window.location.href = tujuan;
        } else {
            alert("Data Batal dihapus");
        }
        return hapusin;
    }
</script>

<body>
    <div class="container" style="margin-top:3%">
        <div class="row">
            <div class=" col-md-10 offset-md-2">
                <?php
                include "nav.php"
                ?>
                <div class="container" style="margin-top:3%">
                    <div class="row">
                        <div class=" fw-bolder col-8" style="margin-top: 6px;"> List Barang & harga</div>
                        <div class="btn btn-primary col-4" data-bs-toggle="modal" data-bs-target="#tambahBrg">Tambah Barang</div>
                    </div>
                </div>
                <br>
                <!-- TABEL -->
                <table id="example" class="table table-striped table-bordered" style="margin-top:3%; width:100%">
                    <thead>
                        <tr>
                            <th width="5%">NO</th>
                            <th width="28.2%">Barang</th>
                            <th width="16.6%">Harga Beli</th>
                            <th width="16.6%">Harga Jual</th>
                            <th width="16.6%">Harga Jual Satuan</th>
                            <th width="14.8%">Opsi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        $data = mysqli_query($koneksi, " SELECT * FROM barang ");

                        while ($rw = mysqli_fetch_array($data)) {
                        ?>
                            <tr>
                                <td>
                                    <?= $no++; ?>
                                </td>
                                <td>
                                    <?= $rw['nama_barang']; ?>
                                </td>
                                <td>
                                    <?= $rw['harga_beli']; ?>
                                </td>
                                <td>
                                    <?= $rw['harga_jual']; ?>
                                </td>
                                <td>
                                    <?= $rw['harga_jual_satuan']; ?>
                                </td>
                                <td>
                                    <a class="btn btn-info btn-sm" data-bs-toggle="modal" data-bs-target="#editBrg<?php echo $rw['id_barang']; ?>">Edit</a>

                                    <a href="src\hapusBarang.php?id_barang=<?= $rw['id_barang']; ?>" onclick="return deleteconfig()"><span class="btn btn-danger btn-sm">Hapus</span></a>

                                    <!-- MODAL Tambah BARANG -->
                                    <div class="modal fade" id="tambahBrg" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Input Barang</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form method="post" action="src\inputBarang.php">
                                                        <div class="mb-3">
                                                            <label class="col-form-label">Nama Barang</label>
                                                            <input type="text" class="form-control" id="namaBarang" name="nama_barang" placeholder="Masukkan Nama yang Ingin Diinput"></input>
                                                        </div>
                                                        <div class=" mb-3">
                                                            <label class="col-form-label">Harga Beli</label>
                                                            <input type="text" class="form-control" id="hargaBeli" name="harga_beli" placeholder="Harga Beli" onkeyup="convertToRupiah(this);"></input>
                                                        </div>
                                                        <div class=" mb-3">
                                                            <label class="col-form-label">Harga Jual</label>
                                                            <input type="text" class="form-control" id="hargaJual" name="harga_jual" placeholder="Harga Jual" onkeyup="convertToRupiah(this);"></input>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="col-form-label">Harga Jual Satuan</label>
                                                            <input type="text" class="form-control" id="hargaJualsatuan" name="harga_jual_satuan" placeholder="Harga Jual Satuan" onkeyup="convertToRupiah(this);"></input>
                                                        </div>
                                                        <button type="submit" name="simpanHarga" class="btn btn-primary">Simpan</button>
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- MODAL EDIT BARANG -->
                                    <div class="modal fade" id="editBrg<?php echo $rw['id_barang']; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Edit Barang</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form method="post" action="src\editBarang.php">
                                                        <input type="hidden" name="id_barang" value="<?php echo $rw['id_barang'] ?>">
                                                        <div class="mb-3">
                                                            <label class="col-form-label">Nama Barang</label>
                                                            <input type="text" class="form-control" id="namaBarang" name="nama_barang" value="<?php echo $rw['nama_barang'] ?>"></input>
                                                        </div>
                                                        <div class=" mb-3">
                                                            <label class="col-form-label">Harga Beli</label>
                                                            <input type="text" class="form-control" id="hargaBeli" name="harga_beli" value="<?php echo $rw['harga_beli'] ?>" onkeyup="convertToRupiah(this);"></input>
                                                        </div>
                                                        <div class=" mb-3">
                                                            <label class="col-form-label">Harga Jual</label>
                                                            <input type="text" class="form-control" id="hargaJual" name="harga_jual" value="<?php echo $rw['harga_jual'] ?>" onkeyup="convertToRupiah(this);"></input>
                                                        </div>
                                                        <div class="mb-3">
                                                            <label class="col-form-label">Harga Jual Satuan</label>
                                                            <input type="text" class="form-control" id="hargaJualsatuan" name="harga_jual_satuan" value="<?php echo $rw['harga_jual_satuan'] ?>" onkeyup="convertToRupiah(this);"></input>
                                                        </div>
                                                        <button type="submit" name="simpanEdit" class="btn btn-primary">Simpan Perubahan</button>
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="asset/js/datatables.js"></script>
    <script type="text/javascript" src="asset/js/rupiah.js"></script>
    <script>
        $('#example').DataTable();
    </script>
</body>

</html>