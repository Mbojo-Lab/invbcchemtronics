<script type="text/javascript"> 
function setAmount(){
	qty=$('#qty').val().replace(/,/gi,"");
	price=$('#price').val().replace(/,/gi,"");
	amount = qty*price;
	$('#amount').val(amount);
}
  
function setdg(){
	var do_id = $('#do_id').val();

	$('#dg').datagrid({  	
		title:"Finished Goods List",
		width:700,
		height:200,	
		toolbar:"#toolbar2",
		fitColumns:"true",
		rownumbers:"true",
		columns:[[  		
			{field:'KdBarang2',title:'Item Code',width:80},
			{field:'NmBarang2',title:'Specification',width:150},
			{field:'Ket',title:'Item Description',width:100},
			{field:'Sat2',title:'Unit',width:60},			
			{field:'qty',title:'Qty.',width:100,align:'right'},
			{field:'weight',title:'Weight',width:100,align:'right',hidden:true},
			{field:'price',title:'Price',width:100,align:'right'},
			{field:'amount',title:'Amount',width:100,align:'right'}
		]],
		url: '<?php echo $basedir; ?>models/material/do_grid.php?req=list&do_id='+do_id
	});
}

function setdgUrl(){
	var so_id = $('#so_id').val();
	var do_id = $('#do_id').val();
	$('#dg').datagrid({ 		
		url: '<?php echo $basedir; ?>models/material/do_grid.php?req=dgDet&so_id='+so_id+'&do_id='+do_id	
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
			{field:'matout_no',title:'DO No.',width:60},
			{field:'matout_date',title:'DO Date',width:50},
			{field:'ref_no',title:'PO Cust. No.',width:50},
			{field:'cust',title:'Customer',width:50}
		]],
		url: '<?php echo $basedir ?>models/material/do_grid.php?req=menu&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val(),
		onClickRow:function(index,row){insert_menu(row)}
	});
}

function insert_menu(row){
	$('#currency').val(row.currency);		
	$('#kurs').val(row.kurs);		
	$('#tot_weight').val(row.tot_weight);
	$('#do_id').val(row.matout_id);
	$('#do_no').val(row.matout_no);
	$('#do_date').datebox('setValue',row.matout_date);
	$('#cust').val(row.cust);	
	$('#so_id').val(row.ref_id);
	$('#so_no').val(row.ref_no);	
	$('#vehicle_no').val(row.vehicle_no);
	$('#driver').val(row.driver);
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
		url: '<?php echo $basedir; ?>models/material/do_grid.php?req=dgDetFirst',  
		idField:'KdBarang2',  
		textField:'KdBarang2',  
		mode:'remote',  
		rownumbers:true,
		fitColumns:true,
		pagination:true,
		pageList:[25,50,75,100],
		columns:[[  
			{field:'KdBarang2',title:'Item Code',width:60},
			{field:'NmBarang2',title:'Specification',width:50},
			{field:'Ket',title:'Item Description',width:50},
			{field:'Sat2',title:'Unit',width:50}
		]],
		onClickRow:function(index,row){insert_det(row)}  
	}); 
}


function insert_ref(row){
	$('#so_id').val(row.so_id);	
	setdgUrl();
	setComboGrid();
}

function insert_det(row){
	$('#Ket').val(row.Ket);
	$('#NmBarang2').val(row.NmBarang2);
	$('#Sat2').val(row.Sat2);
}

function simpan(){
	var rows = $('#dg').datagrid('getRows');
	
	try {
	if ($('#do_no').val() == ''){	
		throw "do_no-DO No.";
	} else if ($('#do_date').datebox('getValue') == ''){ 
		throw "do_date-DO Date";
	//} else if ($('#so_id').val() == ''){	
		//throw "so_no-PO Cust. No.";
	} else if (rows.length == 0){
		throw "do_no-Finished Goods List";	
	} else {
		//FORM LIST BARANG
		nolist_val="";	
		KdBarang2_val="";
		weight_val="";
		qty_val="";
		price_val="";
		j=1;
		
		for(var i=0; i<rows.length; i++){
			nolist_val += j+i + "`";		
			KdBarang2_val += rows[i].KdBarang2 + "`";
			weight_val += rows[i].weight.replace(/,/gi,"") + "`";
			qty_val += rows[i].qty.replace(/,/gi,"") + "`";
			price_val += rows[i].price.replace(/,/gi,"") + "`";
		}	 	
		//AKHIR FORM LIST BARANG
				
		$.post("<?php echo $basedir ?>models/material/do_tuh.php", { 
		aksi: $('#aksi').val(), 
		do_id: $('#do_id').val(),
		do_no: $('#do_no').val(),
		do_date: $('#do_date').datebox('getValue'),
		cust: $('#cust').val(),
		so_id: $('#so_id').val(),
		so_no: $('#so_no').val(),
		vehicle_no: $('#vehicle_no').val(),
		driver: $('#driver').val(),
		KdJnsDok: $('#KdJnsDok').val(),
		NoDaf: $('#NoDaf').val(),
		TgDaf: $('#TgDaf').datebox('getValue'),
		notes: $('#notes').val(),
		currency: $('#currency').val(),
		kurs: $('#kurs').val().replace(/,/gi,""),
		tot_weight: $('#tot_weight').val().replace(/,/gi,""),
		
		//FORM LIST DATA BARANG	
		nolist:nolist_val,KdBarang2:KdBarang2_val,
		weight:weight_val,qty:qty_val,price:price_val
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
	var do_id = $('#do_id').val();	
	
	openurl('<?=$basedir?>material/do_pdf.php?NmMenu=<?=$NmMenu?>&do_id='+do_id);
}

</script>	