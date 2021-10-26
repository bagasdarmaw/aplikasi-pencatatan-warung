<?php
include 'src\koneksi.php';
?>


<html lang="en">

<head>
	<link rel="stylesheet" href="asset/css/bootstrap.min.css" />
	<link rel="stylesheet" href="asset/css/datatables.css">
	<link rel="stylesheet" href="asset/css/jquery.dataTables.min.css">
	<script type="text/javascript" src="asset/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="asset/js/jquery.dataTables.js"></script>
</head>

<!-- PILIHAN KONFIRMASI HAPUS DATA -->


<body>
	<div class="container" style="margin-top:3%">
		<div class="row">
			<div class=" col-md-10 offset-md-2">
				<!-- TITTLE & NAV -->
				<?php
				include "nav.php"
				?>

				<br>
				<!-- TABEL -->
				<table id="example" class="table table-striped table-bordered" style="width:100%">
					<thead>
						<tr>
							<th width="5%">NO</th>
							<th>Nama</th>
							<th>Alamat</th>
							<th width="20%">Opsi</th>
						</tr>
					</thead>
					<!-- keluaran TABEL -->
					<tbody>
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

									<a href="src\hapusPelanggan.php?id_pelanggan=<?= $row['id_pelanggan']; ?>" onclick="return deleteconfig()"><span class="btn btn-danger">Hapus</span></a>
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
	<script type="text/javascript">
		function deleteconfig() {
			var tujuan = $(this).attr('id_pelanggan');
			var hapusin = confirm("Apakah Anda yakin ingin menghapus data ini?");
			if (hapusin == true) {
				window.location.href = tujuan;
			}
			return hapusin;
		}
	</script>
	<script>
		$('#example').DataTable();
	</script>
</body>

</html>