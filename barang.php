<?php
include 'src\koneksi.php';
include 'src\fungsi.php';
?>

<html lang="en">

<head>
    <link rel="stylesheet" href="asset/css/bootstrap.min.css" />
    <link rel="stylesheet" href="asset/css/datatables.css">
    <link rel="stylesheet" href="asset/css/jquery.dataTables.min.css">

</head>

<body>
    <div class="container" style="margin-top:3%">
        <div class="row">
            <div class=" col-md-12">
                <?php
                include "nav.php"
                ?>
                <div class="container" style="margin-top:3%">
                    <div class="row">
                        <div class=" col-4 d-md-flex">
                            <p>List Barang & harga</p>
                        </div>
                        <div class="col-8 d-md-flex justify-content-md-end">
                            <a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#tambahBarang">Tambah Barang</a>
                        </div>
                    </div>
                </div>
                <br>
                <!-- TABEL -->
                <table id="example" class="table table-striped table-bordered" style="margin-top:3%; width:100%">
                    <thead>
                        <tr>
                            <th width="5%">NO</th>
                            <th width="30%">Barang</th>
                            <th width="12%">Kategori</th>
                            <th width="12%">Harga Beli</th>
                            <th width="12%">Harga Jual</th>
                            <th width="12%">Harga Jual Satuan</th>
                            <th width="14%">Opsi</th>
                        </tr>
                        <tr>
                            <th width="5%"></th>
                            <th width="30%"></th>
                            <th width="12%"></th>
                            <th width="12%"></th>
                            <th width="12%"></th>
                            <th width="12%"></th>
                            <th width="14%"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $no = 1;
                        $data = mysqli_query($koneksi, " SELECT * FROM barang INNER JOIN jenis_barang ON barang.id_jenis = jenis_barang.id_jenis");

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
                                    <?= $rw['jenis_barang']; ?>
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
                                    <!-- tombol untuk membuka modal info -->
                                    <a class="btn btn-warning btn-sm" data-bs-toggle="modal" data-bs-target="#editBarang<?php echo $rw['id_barang']; ?>">Edit</a>
                                    <!-- tombol untuk menghapus data pada tabel -->
                                    <a href="src\hapusBarang.php?id_barang=<?= $rw['id_barang']; ?>" onclick="return deleteconfig()"><span class="btn btn-danger btn-sm">Hapus</span></a>

                                    <!-- MODAL EDIT BARANG -->
                                    <div class="modal fade" id="editBarang<?php echo $rw['id_barang']; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                                        <div class="mb-3">
                                                            <label class="col-form-label">Kategori</label>
                                                            <select id="jenisBarang" name="jenis_barang" class="form-control" required>
                                                                <?php
                                                                $sql_kategori = mysqli_query($koneksi, " SELECT * FROM jenis_barang");
                                                                while ($data_kategori = mysqli_fetch_array($sql_kategori)) {
                                                                    if ($rw['id_jenis'] == $data_kategori['id_jenis']) {
                                                                        $select = "selected";
                                                                    } else {
                                                                        $select = "";
                                                                    }
                                                                    echo "<option value='$data_kategori[id_jenis]' $select>$data_kategori[jenis_barang]</option>";
                                                                }
                                                                ?>
                                                            </select>
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

            <!-- MODAL Tambah BARANG -->
            <div class="modal fade" id="tambahBarang" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Input Barang</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form method="post" action="src/inputBarang.php">
                                <div class="mb-3">
                                    <label class="col-form-label">Nama Barang</label>
                                    <input type="text" class="form-control" id="namaBarang" name="nama_barang" placeholder="Masukkan Nama yang Ingin Diinput"></input>
                                </div>
                                <div class="mb-3">
                                    <label class="col-form-label">Kategori</label>
                                    <select id="jenisBarang" name="jenis_barang" class="form-control" required>
                                        <option value="">- Pilih -</option>
                                        <?php
                                        $sql_kategori = mysqli_query($koneksi, " SELECT * FROM jenis_barang") or die(mysqli_error($koneksi));
                                        while ($data_kategori = mysqli_fetch_array($sql_kategori)) {
                                            echo '<option value="' . $data_kategori['id_jenis'] . '">' .
                                                $data_kategori['jenis_barang'] . '</option>';
                                        }
                                        ?>
                                    </select>
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
        </div>
    </div>


    <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="asset/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="asset/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="asset/js/datatables.js"></script>
    <script type="text/javascript" src="asset/js/rupiah.js"></script>


    <!-- PILIHAN KONFIRMASI HAPUS DATA -->
    <script type="text/javascript">
        function deleteconfig() {
            var tujuan = $(this).attr('id_barang');
            var hapusin = confirm("Apakah Anda yakin ingin menghapus data ini?");
            if (hapusin == true) {
                window.location.href = tujuan;
            }
            return hapusin;
        }
    </script>
    <script>
        $(document).ready(function() {
            var table = $('#example').DataTable({
                orderCellsTop: true,
                initComplete: function() {
                    this.api().columns([2.2]).every(function() {
                        var column = this;
                        console.log(this.index())
                        var select = $('<select><option value=""></option></select>')
                            .appendTo($('thead tr:eq(1) th:eq(' + this.index() + ')'))
                            .on('change', function() {
                                var val = $.fn.dataTable.util.escapeRegex(
                                    $(this).val()
                                );

                                column
                                    .search(val ? '^' + val + '$' : '', true, false)
                                    .draw();
                            });

                        column.data().unique().sort().each(function(d, j) {
                            select.append('<option value="' + d + '">' + d + '</option>')
                        });
                    });
                }
            });
        });
    </script>
</body>

</html>