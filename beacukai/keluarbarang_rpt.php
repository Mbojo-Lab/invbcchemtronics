<?php
require_once "../models/abspath.php";
require_once "sessions.php";
require_once "pdocon.php";
require_once "function.php";
require_once "toxls.php";

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 25;
$offset = ($page-1)*$rows;
$result = array();

$DokKdBc=$_REQUEST['DokKdBc'];
$UrJnsDok=getUrJnsDok($DokKdBc);
$dtdari=$_REQUEST['dtdari'];
$dtsampai=$_REQUEST['dtsampai'];

$q = "SELECT *,DATE_FORMAT(matout_date,'%d/%m/%Y') AS matout_date,FORMAT(qty,2) AS Fqty,FORMAT(qty*price,2) AS FHrgSerah, a.cust AS cust
	  FROM mat_outhdr a 
	  INNER JOIN mat_outdet b ON b.matout_id=a.matout_id 
	  INNER JOIN jenis_dok c ON c.KdJnsDok=a.KdJnsDok 
	  LEFT JOIN mst_barang d ON d.KdBarang=b.mat_id "; 
if ($DokKdBc != ""){  
	$q .= "WHERE a.KdJnsDok LIKE '%$DokKdBc%' ";
} else {
	$q .= "WHERE a.KdJnsDok IN ('7','9','4','3') ";
}

if($dtdari != '' && $dtsampai != ''):
	$q .= "AND TgDaf BETWEEN '".dmys2ymd($dtdari)."' AND '".dmys2ymd($dtsampai)."' ";
endif;

$q .= "ORDER BY a.KdJnsDok,NoDaf, TgDaf";

$rec = $pdo->query($q);
$rs = $rec->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="Author" content="Kikin Kusumah" />
<style type="text/css" media="all">	
#borderAll {
    border: 1px solid #000;	  	    
}
.p_spacing{
    margin-top:4px;
    margin-bottom:4px;
}
table.tablereport {	
    border: 1px solid #000;	
    border-collapse:collapse;
    margin:5px 0pt 10px;		
    font-size: 9pt;
	width:1120px;
    /*width: 8.27in;	
    height:11.69in;*/
	/*width:11.69in;*/
}
table.tablereport thead tr th{		
    border: 1px solid #000;		
    font-size: 9pt;		
    padding: 4px;
    vertical-align:middle;
}	
table.tablereport tbody tr td {
    border: 1px solid #000;		
    font-size: 9pt;		
    padding: 4px;
    vertical-align:top;
}
table.tablereport tfoot tr td {
    border: 1px solid #000;		
    font-size: 9pt;		
    padding: 4px;
    vertical-align:top;
}
.borderall{
    border:1px #000 solid !important;
}
.noborder{
    border:1px #FFF solid !important;
}
.nobordertlr{
	border-top:hidden !important;
    border-left:hidden !important;
    border-right:hidden !important;    
	border-bottom:1px solid #000 !important;
}

.noborderlrb{
    border-left:hidden !important;
    border-right:hidden !important;
    border-bottom:hidden !important;
}
.nobordertr{
    border-top:hidden !important;
    border-right:hidden !important;
}
.nobordert{
    border-top:hidden !important;	
}
.noborderright{
    border-right:hidden !important;
}
.noborderbtm{
    border-bottom:hidden !important;
}
.noborderrb{
    border-right:hidden !important;
    border-bottom:hidden !important;
}	
</style>
<body>
<h5>LAPORAN PENGELUARAN BARANG PER DOKUMEN <?php echo $UrJnsDok ?><br>KAWASAN BERIKAT <?php echo $_SESSION['c_name'] ?><br>LAPORAN PENGELUARAN BARANG PER DOKUMEN <?php echo $UrJnsDok ?><br>PERIODE <?php echo $dtdari." S.D ".$dtsampai ?></h5>
<table cellpadding="1" cellspacing="0" class="tablereport">
<thead>
<tr>
  <th width="26" rowspan="2">No.</th>
  <th width="69" rowspan="2">Jenis<br>Dokumen</th>
  <th colspan="2">Dokumen Pabean</th>
  <th colspan="2">Bukti/Dokumen Pengeluaran</th>
  <th width="189" rowspan="2">Pembeli/Penerima</th>
  <th width="79" rowspan="2">Kode Barang</th>
  <th width="260" rowspan="2">Nama Barang</th>
  <th width="41" rowspan="2">Sat</th>
  <th width="64" rowspan="2">Jumlah</th>
  <th width="111" rowspan="2">Nilai Barang</th>
</tr>
<tr>
  <th width="62">Nomor</th>
  <th width="65">Tanggal</th>
  <th width="63">Nomor</th>
  <th width="65">Tanggal</th>
</tr>
</thead>
<tbody>
<?php $i=1; foreach ($rs as $r): ?>
<tr>
  <td align="center"><?php echo $i ?></td>
  <td><?php echo $r['UrJnsDok'] ?></td>
  <td align="center"><?php echo $r['NoDaf'] ?></td>
  <td align="center"><?php echo $r['TgDaf'] ?></td>
  <td align="center"><?php echo $r['matout_no'] ?></td>
  <td align="center"><?php echo $r['matout_date'] ?></td>
  <td valign="top"><?php echo $r['cust'] ?></td>
  <td><?php echo $r['KdBarang'] ?></td>
  <td valign="top"><?php echo $r['NmBarang'] ?></td>
  <td align="center"><?php echo $r['Sat'] ?></td>
  <td align="right"><?php echo $r['Fqty'] ?></td>
  <td align="right"><?php echo $r['FHrgSerah'] ?></td>
</tr>
<?php $i++; endforeach; ?>
</tbody>
</table>
</body>
</html>