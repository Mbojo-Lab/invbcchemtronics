<?php
require_once "../abspath.php";
require_once "pdocon.php";
require_once "function.php";

$req = $_REQUEST["req"];

if ($req=='menu'){
	$pilcari = $_REQUEST["pilcari"];
	$txtcari = $_REQUEST["txtcari"];
	
	$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
	$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 25;
	$offset = ($page-1)*$rows;
	$result = array();
	
	$q = "SELECT *,DATE_FORMAT(matout_date,'%d/%m/%Y') AS matout_date,DATE_FORMAT(TgDaf,'%d/%m/%Y') AS TgDaf, a.notes AS notes, a.ref_no
		  FROM mat_outhdr a 
		  INNER JOIN mst_out_type c ON c.matout_type=a.matout_type 
		  WHERE a.mat_type NOT IN ('0','11','12') ";
	if ($pilcari != ""){		  
		if ($pilcari == "matout_date"){		  
			$q .= "AND $pilcari LIKE '%".dmys2ymd($txtcari)."%' ";	  
		} else {
			$q .= "AND $pilcari LIKE '%$txtcari%' ";	  
		}
	}  
	$q .= "ORDER BY matout_no, matout_date ASC";
	
	$runtot=$pdo->query($q);
	$rstot=$runtot->fetchAll(PDO::FETCH_ASSOC);

	$q .= " LIMIT $offset,$rows";
	$run=$pdo->query($q);
	$rs=$run->fetchAll(PDO::FETCH_ASSOC);

	$result["total"] = count($rstot);
	$result["rows"] = $rs;

	echo json_encode($result);
	
} else if ($req=='list') {	
	$matout_id = $_REQUEST["matout_id"];
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, NmBarang AS NmBarang2,twhmp,HsNo AS HsNo2,Sat AS Sat2,IF(qty>0,FORMAT(qty, 2),0) AS qty,IF(weight>0,FORMAT(weight, 2),0) AS weight,IF(price>0,FORMAT(a.price, 4),0) AS price,FORMAT(a.qty*a.price, 2) AS amount
		  FROM mat_outdet a 
		  LEFT JOIN mst_barang b ON KdBarang = mat_id 
		  WHERE matout_id='$matout_id' 
		  ORDER BY child_no ASC";
	
	$run=$pdo->query($q);	
	$rs=$run->fetchAll(PDO::FETCH_ASSOC);
	echo json_encode($rs);	  
		  
} else if ($req=='wo') {
	$q = "SELECT *,DATE_FORMAT(wo_date,'%d/%m/%Y') AS wo_date,DATE_FORMAT(expplan_date,'%d/%m/%Y') AS expplan_date
		  FROM ppic_wohdr a
		  ORDER BY wo_no, wo_date ASC";
		  
	$run=$pdo->query($q);	
	$rs=$run->fetchAll(PDO::FETCH_ASSOC);
	echo json_encode($rs);	  
		  
} else if ($req=='dgDet') {
	$key = $_REQUEST["q"];
	
	$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
	$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 25;
	$offset = ($page-1)*$rows;
	$result = array();
	
	$q = "SELECT KdBarang AS KdBarang3,KdBarang AS KdBarang2, NmBarang AS NmBarang2,twhmp,HsNo AS HsNo2,Sat AS Sat2
		  FROM mst_barang a 
		  LEFT JOIN mst_jenisbarang b ON KdJnsBarang=TpBarang 
		  WHERE TpBarang NOT IN ('0','11') ";
	
	if ($key != ''){
		$q .= " AND (KdBarang LIKE '%$key%' OR NmBarang LIKE '%$key%') ";
	}	 
	 
	$q .= "ORDER BY TpBarang,KdBarang ASC";
	
	$runtot=$pdo->query($q);
	$rstot=$runtot->fetchAll(PDO::FETCH_ASSOC);

	$q .= " LIMIT $offset,$rows";
	$run=$pdo->query($q);
	$rs=$run->fetchAll(PDO::FETCH_ASSOC);

	$result["total"] = count($rstot);
	$result["rows"] = $rs;

	echo json_encode($result);
	  	  
} else if ($req=='dgRef') {	
	$q = "SELECT *,DATE_FORMAT(wo_date,'%d/%m/%Y') AS wo_date
		  FROM ppic_wohdr a
		  ORDER BY wo_no, wo_date ASC";		  
	
	$run=$pdo->query($q);	
	$rs=$run->fetchAll(PDO::FETCH_ASSOC);
	echo json_encode($rs);	  
}

?>