<script type="text/javascript"> 
function setAmount(){
	qty=$('#qty').val().replace(/,/gi,"");
	price=$('#price').val().replace(/,/gi,"");
	amount = qty*price;
	$('#amount').val(amount);
}
  
function setdg(){
	var matin_id = $('#matin_id').val();
	
	$('#dg').datagrid({  	
		title:"Material List",
		width:700,
		height:200,	
		toolbar:"#toolbar2",
		fitColumns:"true",
		rownumbers:"true",
		columns:[[  
			{field:'KdBarang2',title:'Mat. Code',width:80},
			{field:'NmBarang2',title:'Specification',width:150},
			{field:'Ket',title:'Description',width:150},
			{field:'Sat2',title:'Unit',width:80},
			{field:'qty',title:'Qty.',width:100,align:'right'},
			{field:'weight',title:'Weight',width:100,align:'right',hidden:true},
			{field:'price',title:'Price',width:100,align:'right'},
			{field:'amount',title:'Amount',width:100,align:'right'}
		]],
		url: '<?php echo $basedir; ?>models/material/scrap_in_grid.php?req=list&matin_id='+matin_id
	});
}

function setdgUrl(){
	var po_id = $('#po_id').val();
	
	$('#dg').datagrid({  	
		url: '<?php echo $basedir; ?>models/material/scrap_in_grid.php?req=dgDet&po_id='+po_id
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
			{field:'matin_no',title:'Incoming No.',width:40},
			{field:'matin_date',title:'Incoming Date',width:50},
			{field:'supplier',title:'Supplier',width:100}
			
		]],
		url: '<?php echo $basedir ?>models/material/scrap_in_grid.php?req=menu&pilcari='+$("#pilcari").val()+'&txtcari='+$("#txtcari").val(),
		onClickRow:function(index,row){			
			insert_menu(row);			
		}	
			
	});
}

function setComboGrid(){
	$('#KdBarang2').combogrid({  
		panelWidth:500,  	
		url: '<?php echo $basedir; ?>models/material/scrap_in_grid.php?req=dgDetFirst',  
		idField:'KdBarang2',  
		textField:'KdBarang2',  
		mode:'remote',  
		rownumbers:true,
		fitColumns:true,
		pagination:true,
		pageList:[25,50,75,100],  
		columns:[[  
			{field:'KdBarang2',title:'Mat. Code',width:60},
			{field:'NmBarang2',title:'Specification',width:50},
			{field:'Ket',title:'Item Description',width:50},
			{field:'Sat2',title:'Unit',width:50}
		]],
		onClickRow:function(index,row){insert_det(row)}  
	}); 	
	$('#KdBarang2').combogrid('enable');
}

function setcomboGridUbh(){
	$('#po_no').combogrid({  		
		onClickRow:function(index,row){insert_refUbh(row);}  
	});
}

function insert_menu(row){	
	$('#currency').val(row.currency);		
	$('#kurs').val(row.kurs);		
	$('#tot_weight').val(row.tot_weight);		
	$('#matin_id').val(row.matin_id);
	$('#matin_no').val(row.matin_no);
	$('#matin_date').datebox('setValue',row.matin_date);
	$('#supplier').combogrid('setValue',row.supplier);
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

function insert_ref(row){
	insert_menu(row);
	$('#matin_id').val('<?php echo $newId ?>');
	setComboGrid();
	setdgUrl();
}

function insert_refUbh(row){
	insert_menu(row);
	setComboGrid();
	setdgUrl();	
}

function insert_det(row){
	$('#NmBarang2').val(row.NmBarang2);
	$('#Ket').val(row.Ket);
	$('#Sat2').val(row.Sat2);
}

function simpan(){
	var rows = $('#dg').datagrid('getRows');
	
	try {
	if ($('#matin_date').datebox('getValue') == ''){ 
		throw "matin_date-Incoming Date";
	/*} else if ($('#currency').val() == ''){	
		throw "currency-Currency";
	} else if ($('#supplier').val() == ''){	
		throw "supplier-Seller";*/
	} else if (rows.length == 0){
		throw "matin_date-Finished Goods List";	
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
				
		$.post("<?php echo $basedir ?>models/material/scrap_in_tuh.php", { 
		aksi: $('#aksi').val(), 
		matin_id: $('#matin_id').val(),
		matin_no: $('#matin_no').val(),
		matin_date: $('#matin_date').datebox('getValue'),
		supplier: $('#supplier').combogrid('getValue'),
		KdJnsDok: $('#KdJnsDok').val(),
		NoDaf: $('#NoDaf').val(),
		TgDaf: $('#TgDaf').datebox('getValue'),		
		notes: $('#notes').val(),	
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
	var matin_id = $('#matin_id').val();	
	
	openurl('<?=$basedir?>material/scrap_in_pdf.php?NmMenu=<?=$NmMenu?>&matin_id='+matin_id);
}

</script>	