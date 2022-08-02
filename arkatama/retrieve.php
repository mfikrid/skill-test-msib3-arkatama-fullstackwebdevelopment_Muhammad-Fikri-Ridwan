<?php
    require ("koneksi.php");
    $perintah = "select * from tbl_resto";
    $eksekusi = mysqli_query($konek, $perintah);
    $cek = mysqli_affected_rows($konek); 

    if ($cek > 0){
        $response["kode"] = 1;
        $response["pesan"]="Data Tersedia";
        $response["data"]=array();

        while($ambil = mysqli_fetch_object($eksekusi)){
            $Ar["id"] = $ambil -> id;
            $Ar["nama"] = $ambil -> nama;
            $Ar["umur"] = $ambil -> umur;
            $Ar["kota"]= $ambil -> kota;

            array_push($response["data"], $Ar);
        }
    }else{
        $response["kode"] = 0;
        $response["pesan"]="Data Tidak Tersedia";
    }

    echo json_encode($response);
    mysqli_close($konek);
?>