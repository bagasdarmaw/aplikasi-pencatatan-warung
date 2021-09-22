<?php
include 'src\koneksi.php';
include 'src\fungsi.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="asset/css/bootstrap.min.css" />
</head>

<body>
    <div class="container" style="margin-top:3%">
        <div class="row">
            <div class=" col-md-10 offset-md-2">
                <?php
                include "nav.php"
                ?>
                <div class="container" style="margin-top:3%">
                    <p>
                    <h3>Menambah Pelanggan</h3>
                    </p>
                    <br>
                    <form role="form" method="post" action="src\inputPelanggan.php">
                        <div class="form-group">
                            <label>Nama</label>
                            <input class="form-control" name="nama" autofocus>
                        </div>
                        <div class="form-group">
                            <label>Alamat</label>
                            <textarea name="alamat" class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" name="simpanUser" class="btn btn-primary pull-right">Simpan</button>
                        <a href="index.php" class="btn btn-success pull-right" style="margin-right:1%;">Batal</a>
                    </form>
                    <script src="asset/js/bootstrap.min.js"></script>
                </div>
            </div>
        </div>
</body>

</html>