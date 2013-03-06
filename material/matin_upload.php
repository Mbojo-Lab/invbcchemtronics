<?php
require_once "../models/abspath.php";
require_once "pdocon.php";
require_once "function.php";
// menggunakan class phpExcelReader
include "excel_reader2.php";
// koneksi ke mysql
mysql_connect("localhost", "root", "");
mysql_select_db("chemtronics_invbc");
 
// membaca file excel yang diupload
$data = new Spreadsheet_Excel_Reader($_FILES['userfile']['tmp_name']);
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<?php echo $basedir ?>themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<?php echo $basedir ?>themes/icon.css">
<link rel="stylesheet" type="text/css" href="<?php echo $basedir ?>themes/main.css">
<script type="text/javascript" src="<?php echo $basedir ?>models/jquery.min.js"></script>
</head>
<body> 
<?php 
// membaca jumlah baris dari data excel
$baris = $data->rowcount($sheet_index=0);
 
// nilai awal counter untuk jumlah data yang sukses dan yang gagal diimport
$sukses = 0;
$gagal = 0;

// import data excel mulai baris ke-5 (karena baris kelima adalah nama kolom)

for ($i=5; $i<=$baris; $i++){
// membaca data (kolom A)
$mat_id = $data->val($i, 1);
// membaca data (kolom D)
$matin_date = $data->val($i, 5);
// membaca data (kolom F)
$Sat = $data->val($i, 7);
// membaca data (kolom G)
$qty = nformatr2($data->val($i, 8));
// membaca data (kolom H)
$price = nformatr2($data->val($i, 9));
// membaca data (kolom P)
$matin_id = intval(substr($data->val($i, 17),'-10'));
$matin_no = $data->val($i, 17);
// membaca data (kolom Q)
$child_no = $data->val($i, 18);
// membaca data (kolom T)
$po_no = $data->val($i, 21);
// membaca data NoPolisi (kolom Z)
$supplier = $data->val($i, 26);

// setelah data dibaca, sisipkan ke dalam tabel dokumen
//mysql_query("DELETE FROM mat_inchdr WHERE matin_date='$matin_date' AND matin_no='$matin_no' ");
$q= "INSERT INTO mat_inchdr (matin_id,matin_date,mat_type,matin_no,po_no,supplier) VALUES ('$matin_id','$matin_date','1','$matin_no','$po_no','$supplier')";
$hasil = mysql_query($q);

// setelah data dibaca, sisipkan ke dalam tabel barang
$q2= "INSERT INTO mat_incdet (matin_id,child_no,mat_id,qty,price) VALUES ('$matin_id','$child_no','$mat_id','$qty','$price')";
$hasil2 = mysql_query($q2);
//echo "$baris==> $q<br>";
//echo "$baris==> $q2<br><br>";
// jika proses insert data sukses, maka counter $sukses bertambah
// jika gagal, maka counter $gagal yang bertambah
if ($hasil) $sukses++;
else $gagal++;

$child_no++;
}
?>
<div id="w" class="easyui-window"  collapsible="false" minimizable="false" maximizable="false" title="RESULT" style="width:400px;height:150px; padding:10px;"> 
<?php 
// tampilan status sukses dan gagal
echo "<h3>Proses upload data selesai.</h3>";
//echo "<p>Jumlah data yang sukses di upload : ".$sukses."<br>";
//echo "Jumlah data yang gagal di upload : ".$gagal."</p>";
?>
</div>
</body>
</html>