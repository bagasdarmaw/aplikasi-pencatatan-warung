<?php
include 'koneksi.php';
?>

<html lang="en">

<head>
	<link rel="stylesheet" href="asset/css/bootstrap.min.css" />
	<link rel="stylesheet" href="asset/css/datatables.min.css">
</head>

<body>
	<div class="container" style="margin-top:3%">

		<div class="row">
			<div class=" col-md-10 offset-md-2">
				<center>
					<h2>Catat Hutang</h2>
				</center>

				<!-- NAV -->
				<nav class="navbar navbar-light bg-light">
					<div class="container-fluid">
						<a class="btn btn-primary" role="button" href="tambahUser.php">Tambah</a>
						<form class="d-flex">
							<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form>
					</div>
				</nav>

				<!-- TABEL -->
				<table class="table table-hover" style="width:100%">
					<tr>
						<th width="5%">NO</th>
						<th>Nama</th>
						<th>Alamat</th>
						<th width="20%">Opsi</th>
					</tr>

					<!-- keluaran TABEL -->
					<?php
					$no = 1;
					$data = mysqli_query($koneksi, " SELECT * FROM pelanggan order by id_pelanggan ASC");

					while ($row = mysqli_fetch_array($data)) {
					?>
						<tr>
							<td>
								<?= $no++; ?>
							</td>
							<td>
								<?= $row['nama']; ?>
							</td>
							<td>
								<?= $row['alamat']; ?>
							</td>
							<td>
								<a href="detail.php?id_pelanggan=<?= $row['id_pelanggan']; ?>" class="btn btn-warning">Detail</a>

								<a href="hapus.php?id<?= $row['id_pelanggan']; ?>" class="btn btn-danger">Hapus</a>
							</td>

						</tr>
					<?php
					}
					?>
				</table>
			</div>
		</div>

	</div>
	<script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="asset/js/datatables.min.js"></script>
	<script type="text/javascript" src="asset/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="asset/js/jquery-3.6.0.min.js"></script>
</body>

</html>