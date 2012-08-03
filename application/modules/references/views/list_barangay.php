<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <?php echo anchor('references/add_barangay', 'Add Barangay');?><br />
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="2%" scope="col">&nbsp;</th>
        <th width="22%" scope="col">Barangay Name</th>
        <th width="22%" scope="col">LGU Name</th>
        <th width="13%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php
	
	if(count($barangays) >= 1)
	{
			
	foreach($barangays as $row)
	{
		$barangay_id 	= $row['barangay_id'];
		$lgu_id 		= $row['lgu_id'];
		$name 			= $row['name'];
		
		$lgu_name 	= $this->Lgu->get_lgu($lgu_id);
		
		$blgf_code 	= $row['blgf_code'];
		
		$bg 		   = $this->Settings->set_line_colors();
			
		?><tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '#ABC7E9';this.style.color='#000000';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';this.style.color='#000000'">
        <td bgcolor=""></td>
		<td bgcolor=""><?php echo $name;?></td>
		<td bgcolor=""><?php echo $lgu_name[0]['name'];?></td>
		<td bgcolor="">
          <a href="<?php echo base_url();?>index.php/references/edit_barangay/<?php echo $barangay_id;?>">Edit</a> | 
		  <a href="<?php echo base_url();?>index.php/references/delete_barangay/<?php echo $barangay_id;?>" onclick="delete_province('<?php echo $barangay_id;?>','Delete Province  <?php echo $barangay_id;?>?')">Delete</a>
         
        </td>
        </tr>
		<?php
		
		}
	}
	  ?>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</form>