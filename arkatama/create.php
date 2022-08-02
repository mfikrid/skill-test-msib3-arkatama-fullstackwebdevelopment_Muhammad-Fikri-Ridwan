<?php
    require("koneksi.php");

    $response = array();

    if ($_SERVER ['REQUEST_METHOD']=='POST'){
        $nama = $_POST["nama"];
        $alamat = $_POST["umur"];
        $telp = $_POST["kota"];


        $perintah = "INSERT INTO tbl_resto (nama, umur, kota) VALUES ('$nama','$umur','$kota')";
        $eksekusi = mysqli_query($konek, $perintah);
        $cek = mysqli_affected_rows($konek);

        if ($cek > 0){
            $response["kode"]=1;
            $response["pesan"]="Simpan Data Berhasil";

        }else{
            $response["kode"]=0;
            $response["pesan"]="Simpan Data Gagal";
        }
    
    }
    else{
        $response["kode"]=0;
        $response["pesan"]="Tidak Ada Post Data";
    }
    echo json_encode($response);
    mysqli_close($konek);

?>