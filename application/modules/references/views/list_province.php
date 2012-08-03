<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <?php echo anchor('references/add_province', 'Add Province');?><br />
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="2%" scope="col">&nbsp;</th>
        <th width="23%" scope="col"><strong>Province</strong></th>
        <th width="22%" scope="col"><strong>BLGF Code</strong></th>
        <th width="13%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php
			
	foreach($provinces as $row)
	{
		$province_id 	= $row['province_id'];
		$name 			= $row['name'];
		$blgf_code 	    = $row['blgf_code'];
		
		$bg 		   = $this->Settings->set_line_colors();
			
		?><tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '#ABC7E9';this.style.color='#000000';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';this.style.color='#000000'">
        <td bgcolor=""></td>
		<td bgcolor=""><?php echo $name;?></td>
        <td bgcolor=""><?php echo $blgf_code;?></td>
        <td bgcolor="">
          <a href="<?php echo base_url();?>index.php/references/edit_province/<?php echo $province_id;?>">Edit</a> | 
		  <a href="<?php echo base_url();?>index.php/references/delete_province/<?php echo $province_id;?>" onclick="delete_province('<?php echo $province_id;?>','Delete Province  <?php echo $name;?>?')">Delete</a>
         
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