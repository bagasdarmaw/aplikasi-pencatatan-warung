<?php
include 'koneksi.php';
if (isset($_GET['id_pelanggan'])) {
    $id_pelanggan = $_GET['id_pelanggan'];
} else {
    die("Error. No ID Selected!");
}

$query = "DELETE FROM pelanggan where id_pelanggan=$id_pelanggan";

mysqli_query($koneksi, $query);

echo "<script> 
            location.replace(document.referrer);
        </script>
    ";
