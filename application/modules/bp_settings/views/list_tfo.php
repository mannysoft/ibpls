<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <?php echo anchor('bp_settings/add_tfo', 'Add New');?><br />
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="1%" scope="col">&nbsp;</th>
        <th width="22%" scope="col"><strong>Description</strong></th>
        <th width="16%" scope="col">Amount</th>
        <th width="16%" scope="col">Default</th>
        <th width="25%" scope="col"><strong>Type</strong></th>
        <th width="20%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php
			
	foreach($tfos as $row)
	{
		$tfo_id 	= $row['tfo_id'];
		
		if ($row['default'] == 1)
		{
			$row['default'] = 'Yes';
		}
		else
		{
			$row['default'] = 'No';	
		}
		
		$tax_fee_type = $this->Business_tax_fee_type->get_business_tax_fee_type($row['tax_fee_type']);
		
		$bg 		   = $this->Settings->set_line_colors();
			
		?><tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
        <td></td>
		<td><?php echo $row['name'];?></td>
		<td><?php echo $row['amount'];?></td>
		<td><?php echo $row['default'];?></td>
        <td><?php echo $tax_fee_type[0]['name'];?></td>
        <td>
          <a href="<?php echo base_url();?>index.php/bp_settings/edit_tfo/<?php echo $tfo_id;?>">Edit</a> | 
		  <a href="<?php echo base_url();?>index.php/bp_settings/delete_tfo/<?php echo $tfo_id;?>" onclick="delete_province('<?php echo $tfo_id;?>','Delete Province  <?php echo $row['name'];?>?')">Delete</a>
         
        </td>
        </tr>
		<?php
		
		}
	  ?>
      <tr>
        <td>&nbsp;</td>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</form>