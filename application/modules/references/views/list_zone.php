<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <?php echo anchor('references/add_zone', 'Add Zone');?><br />
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="2%" scope="col">&nbsp;</th>
        <th width="22%" scope="col">Zone Name</th>
        <th width="22%" scope="col">Barangay Name</th>
        <th width="13%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php
	
	if(count($zones) >= 1)
	{
			
	foreach($zones as $row)
	{
		$zone_id 		= $row['zone_id'];
		
		$barangay_id 	= $row['barangay_id'];
		
		$name 			= $row['name'];
		
		$barangay_name 	= $this->Barangay->get_barangay($barangay_id);
		
		$blgf_code 	= $row['blgf_code'];
		
		$bg 		   = $this->Settings->set_line_colors();
			
		?><tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '#ABC7E9';this.style.color='#000000';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';this.style.color='#000000'">
        <td bgcolor=""></td>
		<td bgcolor=""><?php echo $name;?></td>
		<td bgcolor=""><?php echo $barangay_name[0]['name'];?></td>
		<td bgcolor="">
          <a href="<?php echo base_url();?>index.php/references/edit_zone/<?php echo $zone_id;?>">Edit</a> | 
		  <a href="<?php echo base_url();?>index.php/references/delete_zone/<?php echo $zone_id;?>" onclick="delete_province('<?php echo $zone_id;?>','Delete Province  <?php echo $zone_id;?>?')">Delete</a>
         
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