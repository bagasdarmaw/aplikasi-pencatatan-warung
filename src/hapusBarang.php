<?php
include 'koneksi.php';
if (isset($_GET['id_barang'])) {
    $id_barang = $_GET['id_barang'];
} else {
    die("Error. No ID Selected!");
}


$query = "DELETE FROM barang where id_barang=$id_barang";

mysqli_query($koneksi, $query);

echo "<script> 
            location.replace(document.referrer);
        </script>
    ";
