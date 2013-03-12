<script type="text/javascript">   
function setAmount(){
	qty=$('#qty').val().replace(/,/gi,"");
	price=$('#price').val().replace(/,/gi,"");
	amount = qty*price;
	$('#amount').val(amount);
}

function setdg(){
	var matout_id = $('#matout_id').val();
	
	$('#dg').datagrid({  	
		title:"Material List",
		width:700,
		height:200,	
		toolbar:"#toolbar2",
		fitColumns:"true",
		rownumbers:"true",		
		columns:[[  
			{field:'KdBarang2',title:'Mat. Code',width:100},
			{field:'NmBarang2',title:'Specification',width:150},
			{field:'Ket',title:'Item Description',width:100},
			{field:'Sat2',title:'Unit',width:40},
			{field:'qty',title:'Qty.',width:100,align:'right'},
			{field:'weight',title:'Weight',width:100,align:'right',hidden:true},
			{field:'price',title:'Price',width:100,align:'right'},
			{field:'amount',title:'Amount',width:100,align:'right'}
		]],
		url: '<?php echo $basedir; ?>models/material/matout_grid.php?req=list&matout_id='+matout_id
	});
}

function setdgCari(){	
	$('#dgCari').datagrid({  
		width:586,
		height:315,	
		fitColumns:"true",
		rownumbers:"true", 
		toolbar:"#toolCari",
		pagination:true,
		pageList:[25,50,75,100], 
		columns:[[  
			{field:'matout_no',title:'Outgoing No.',width:60},
			{field:'matout_date',title:'Outgoing Date',width:50},
			{field:'matout_name',title:'Outgoing Type',width:50},
			{field:'cust',title:'Customer',width:50}
		]],
		url: '<?php echo $basedir ?>models/material/matout_grid.php?req=menu&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val(),
		onClickRow:function(index,row){insert_menu(row)}
	});
}

function insert_menu(row){
	$('#currency').val(row.currency);		
	$('#kurs').val(row.kurs);		
	$('#tot_weight').val(row.tot_weight);	
	$('#matout_id').val(row.matout_id);
	$('#matout_type').val(row.matout_type);
	$('#matout_no').val(row.matout_no);
	$('#matout_date').datebox('setValue',row.matout_date);
	$('#wo_id').val(row.ref_id);
	$('#wo_no').val(row.ref_no);	
	$('#cust').val(row.cust);	
	$('#KdJnsDok').val(row.KdJnsDok);	
	$('#NoDaf').val(row.NoDaf);
	$('#TgDaf').datebox('setValue',row.TgDaf);
	$('#notes').val(row.notes);	
	setdg();
	$('#toolbar2').hide();
	$('#wCari').dialog('close');
	$('#tl1Ubh').show();
	$('#tl1Tbh').hide();	
	$('#tl1Hps').show();
	$('#btnPrint').show();
}

function setComboGrid(){	
	$('#KdBarang2').combogrid({  
		panelWidth:500,  	
		url: '<?php echo $basedir; ?>models/material/matout_grid.php?req=dgDet',  
		idField:'KdBarang2',  
		textField:'KdBarang2',  
		mode:'remote',  
		rownumbers:true,
		fitColumns:true,
		pagination:true,
		pageList:[25,50,75,100],   
		columns:[[  
			{field:'KdBarang2',title:'Mat. Code',width:60},
			{field:'NmBarang2',title:'Specification',width:150},
			{field:'Ket',title:'Item Description',width:150},
			{field:'Sat2',title:'Unit',width:50},
			{field:'qty',title:'Qty',width:50}
		]],
		onClickRow:function(index,row){insert_det(row)}  
	}); 
}


function insert_ref(row){
	$('#wo_id').val(row.ref_id);		
}

function insert_det(row){
	$('#NmBarang2').val(row.NmBarang2);
	$('#Ket').val(row.Ket);
	$('#Sat2').val(row.Sat2);
}

function simpan(){
	var rows = $('#dg').datagrid('getRows');
	
	try {
	if ($('#matout_no').val() == ''){	
		throw "matout_no-Outgoing No.";
	} else if ($('#matout_date').datebox('getValue') == ''){ 
		throw "matout_date-Outgoing Date";
	/*} else if ($('#wo_id').val() == ''){	
		throw "wo_no-WO No.";*/
	} else if (rows.length == 0){
		throw "matout_no-Finished Goods List";	
	} else {
		//FORM LIST BARANG
		nolist_val="";	
		KdBarang2_val="";
		qty_val="";
		weight_val="";
		price_val="";
		j=1;
		
		for(var i=0; i<rows.length; i++){
			nolist_val += j+i + "`";		
			KdBarang2_val += rows[i].KdBarang2 + "`";
			qty_val += rows[i].qty.replace(/,/gi,"") + "`";
			weight_val += rows[i].weight.replace(/,/gi,"") + "`";
			price_val += rows[i].price.replace(/,/gi,"") + "`";
		}	 	
		//AKHIR FORM LIST BARANG
				
		$.post("<?php echo $basedir ?>models/material/matout_tuh.php", { 
		aksi: $('#aksi').val(), 
		matout_id: $('#matout_id').val(),
		matout_type: $('#matout_type').val(),
		matout_no: $('#matout_no').val(),
		matout_date: $('#matout_date').datebox('getValue'),
		wo_id: $('#wo_id').val(),
		wo_no: $('#wo_no').val(),
		cust: $('#cust').val(),
		notes: $('#notes').val(),
		KdJnsDok: $('#KdJnsDok').val(),
		NoDaf: $('#NoDaf').val(),
		TgDaf: $('#TgDaf').datebox('getValue'),
		currency: $('#currency').val(),
		kurs: $('#kurs').val().replace(/,/gi,""),
		tot_weight: $('#tot_weight').val().replace(/,/gi,""),
		
		//FORM LIST DATA BARANG	
		nolist:nolist_val,KdBarang2:KdBarang2_val,
		qty:qty_val,weight:weight_val,price:price_val
		},
		function(result){
			var result = eval('('+result+')');
			if (result.success){
				$('#dg').datagrid('reload');	// reload the user data
				$.messager.alert('Info',result.msg); 
				location.reload(true);		
			} else {
				$.messager.alert('Error',result.msg); 
			}			
			
		});
	}//Akhir If Validasi
	} catch(err) {	
		if (err.toSource().indexOf("-") == -1){
			alert(err);
		} else {
			str = err.split("-");
			
			alert("Please input "+str[1]+" first!");
			$('#'+str[0]).focus();
		}
	}
}

function topdf(){
	var matout_id = $('#matout_id').val();	
	
	openurl('<?=$basedir?>material/matout_pdf.php?NmMenu=<?=$NmMenu?>&matout_id='+matout_id);
}

</script>	