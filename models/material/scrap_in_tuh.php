<?php 
require_once "../abspath.php";
require_once "sessions.php";
require_once "pdocon.php";
require_once "function.php";


//VARIABEL YANG DI POST
$matin_id=$_REQUEST['matin_id'];
$matin_no=$_REQUEST['matin_no'];
$matin_date=dmys2ymd($_REQUEST['matin_date']);
$supplier=$_REQUEST['supplier'];
$KdJnsDok=$_REQUEST['KdJnsDok'];
$NoDaf=$_REQUEST['NoDaf'];
$TgDaf=dmys2ymd($_REQUEST['TgDaf']);
$notes=$_REQUEST['notes'];
$currency=$_REQUEST['currency'];
$kurs=$_REQUEST['kurs'];
$tot_weight=$_REQUEST['tot_weight'];

//FORM LIST DATA MATERIAL
$nolist=explode("`", $_REQUEST['nolist']);
$KdBarang2=explode("`", $_REQUEST['KdBarang2']);
$qty=explode("`", $_REQUEST['qty']);
$weight=explode("`", $_REQUEST['weight']);
$price=explode("`", $_REQUEST['price']);
//$tot_weight=0;
$jmlnodet=sizeof($nolist)-1;
for ($i=0; $i<$jmlnodet; $i++){
	//$tot_weight += $qty[$i];
}

$aksi=$_REQUEST['aksi'];

$tgl=date('Y-m-d H:i:s');
$usr=$_SESSION['userName'];

$NmMenu="scrap in";

try {	
	$sql[] = "START TRANSACTION";
	if ($aksi=='t'){
		
		//TAMBAH HEADER
		$sql[] = "INSERT INTO mat_inchdr (
				  matin_id,mat_type,matin_no,matin_date,supplier,KdJnsDok,notes,NoDaf,TgDaf,currency,kurs,tot_weight 				  
				  ) VALUES (
				  '$matin_id','12','$matin_no','$matin_date','$supplier','$KdJnsDok','$notes','$NoDaf','$TgDaf','$currency','$kurs','$tot_weight'
				  )";	
		//AKHIR TAMBAH HEADER
		
		//TAMBAH DETAIL		
		for ($i=0; $i<$jmlnodet; $i++){			
		$sql[] = "INSERT INTO mat_incdet (
				  matin_id,child_no,mat_id,qty,weight,price
				  ) VALUES (
				  '$matin_id','$nolist[$i]','$KdBarang2[$i]','$qty[$i]','$weight[$i]','$price[$i]'
				  )";	
		}//AKHIR TAMBAH DETAIL
		
		$ketlog="Add $NmMenu $matin_id";
				
		$msg = "Save Success.";
		$errmsg = "Save FAILED!";
				
	} else if ($aksi=='u'){
		//HAPUS DULU SEMUA
		$sql[]="DELETE FROM mat_inchdr WHERE matin_id='$matin_id'";
		//$sql[]="DELETE FROM mat_incdet WHERE matin_id='$matin_id'";
		//UBAH HEADER
		$sql[] = "INSERT INTO mat_inchdr (
				  matin_id,mat_type,matin_no,matin_date,supplier,KdJnsDok,notes,NoDaf,TgDaf,currency,kurs,tot_weight 				  
				  ) VALUES (
				  '$matin_id','12','$matin_no','$matin_date','$supplier','$KdJnsDok','$notes','$NoDaf','$TgDaf','$currency','$kurs','$tot_weight'
				  )";	
		//AKHIR UBAH HEADER		
		//UBAH DETAIL	
		$jmlnodet=sizeof($nolist)-1;		
		for ($i=0; $i<$jmlnodet; $i++){			
		$sql[] = "INSERT INTO mat_incdet (
				  matin_id,child_no,mat_id,qty,weight,price
				  ) VALUES (
				  '$matin_id','$nolist[$i]','$KdBarang2[$i]','$qty[$i]','$weight[$i]','$price[$i]'
				  )";	
		}//AKHIR UBAH DETAIL
		
		$ketlog="Edit $NmMenu $matin_id";
		
		$msg = "Update Success.";
		$errmsg = "Update FAILED!";
	} else {
		//HAPUS
		$sql[]="DELETE FROM mat_inchdr WHERE matin_id='$matin_id'";
		//$sql[]="DELETE FROM mat_incdet WHERE matin_id='$matin_id'";
		
		$ketlog="Delete $NmMenu $matin_id";  
		
		$msg = "Delete Success.";
		$errmsg = "Delete FAILED!";
	}	
	
	$sql[]= "INSERT INTO log VALUES (0,'$tgl','$usr','$ketlog')";		
	
	$sql[] = "COMMIT";	
	
	foreach($sql as $q){
		//echo $q."\r\n";
		$pdo->query($q);
	}
	  
	echo json_encode(array('success'=>true,'msg'=>$msg)); 
} catch( PDOException $Exception ){	
	$pdo->query("ROLLBACK");	
	echo json_encode(array('msg'=>$errmsg."\r\n".$Exception->getMessage()));
	exit(0);
}
?>