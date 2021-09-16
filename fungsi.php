<?php

function format_rupiah($angka)
{
    $rupiah = number_format($angka, 0, ',', '.');
    return $rupiah;
}

function reset_rupiah($rupiah)
{
    $pecah = explode('.', $rupiah);
    $return        = implode('', $pecah);
    return  $return;
}

// function content($m)
// {
//  $cek = trim($m);
//  if($cek == "") { $file = "index.php"; }
//  if($cek == "about") { $file = "about.php"; }
//  if($cek == "international") { $file = "international.php"; }
//  if($cek == "national") { $file = "national.php"; }
//  return $file;
// }