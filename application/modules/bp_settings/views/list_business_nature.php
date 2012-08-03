<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <?php echo anchor('bp_settings/add_business_nature', 'Add New');?><br />
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="1%" scope="col">&nbsp;</th>
        <th width="22%" scope="col"><strong>Business Nature</strong></th>
        <th width="16%" scope="col">PSIC Code</th>
        <th width="20%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php
			
	foreach($business_nature as $row)
	{
		$nature_id 	= $row['nature_id'];
		
		$bg 		   = $this->Settings->set_line_colors();
			
		?><tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
        <td></td>
		<td><?php echo $row['name'];?></td>
		<td><?php echo $row['psic_code'];?></td>
		<td>
          <a href="<?php echo base_url();?>index.php/bp_settings/edit_business_nature/<?php echo $nature_id;?>">Edit</a> | 
	    <a href="<?php echo base_url();?>index.php/bp_settings/delete_business_nature/<?php echo $nature_id;?>" onclick="return confirm('Delete <?php echo $row['name'];?>?');">Delete</a> | 
        <a href="<?php echo base_url();?>index.php/bp_settings/add_business_nature_taxes/<?php echo $nature_id.'/'.$row['name'];?>">Required taxes, fees and other charges</a>
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
    </tr>
</table>
</form>

