<?php
require_once "../models/abspath.php";
require_once "pdocon.php";
require_once "function.php";

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 25;
$offset = ($page-1)*$rows;
$result = array();

$DokKdBc=$_REQUEST['DokKdBc'];
$dtdari=$_REQUEST['dtdari'];
$dtsampai=$_REQUEST['dtsampai'];

$q = "SELECT *,DATE_FORMAT(matin_date,'%d/%m/%Y') AS matin_date,FORMAT(qty,2) AS Fqty,FORMAT(qty*price,2) AS FHrgSerah
	  FROM mat_inchdr a 
	  INNER JOIN mat_incdet b ON b.matin_id=a.matin_id 
	  INNER JOIN jenis_dok c ON c.KdJnsDok=a.KdJnsDok 
	  LEFT JOIN mst_barang d ON d.KdBarang=b.mat_id "; 
if ($DokKdBc != ""){  
	$q .= "WHERE a.KdJnsDok LIKE '%$DokKdBc%' ";
} else {
	$q .= "WHERE a.KdJnsDok IN ('1','8','6','5') ";
}

if($dtdari != '' && $dtsampai != ''):
	$q .= "AND TgDaf BETWEEN '".dmys2ymd($dtdari)."' AND '".dmys2ymd($dtsampai)."' ";
endif;

$q .= "ORDER BY a.KdJnsDok,NoDaf, TgDaf";

$runtot=$pdo->query($q);
$rstot=$runtot->fetchAll(PDO::FETCH_ASSOC);

$q .= " LIMIT $offset,$rows";
$run=$pdo->query($q);
$rs=$run->fetchAll(PDO::FETCH_ASSOC);

$result["total"] = count($rstot);
$result["rows"] = $rs;

echo json_encode($result);
?>