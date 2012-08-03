<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <?php echo anchor('references/add_district', 'Add District');?><br />
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="2%" scope="col">&nbsp;</th>
        <th width="22%" scope="col">District Name</th>
        <th width="22%" scope="col">Province Name</th>
        <th width="22%" scope="col"><strong>BLGF Code</strong></th>
        <th width="13%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php
	
	if(count($districts) >= 1)
	{
			
	foreach($districts as $row)
	{
		$district_id 	= $row['district_id'];
		$name 		= $row['name'];
		$province_id 	= $row['province_id'];
		
		$province_name 	= $this->Province->get_province($province_id);
		
		$blgf_code 	= $row['blgf_code'];
		
		$bg 		   = $this->Settings->set_line_colors();
			
		?><tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '#ABC7E9';this.style.color='#000000';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';this.style.color='#000000'">
        <td bgcolor=""></td>
		<td bgcolor=""><?php echo $name;?></td>
		<td bgcolor=""><?php echo $province_name[0]['name'];?></td>
		<td bgcolor=""><?php echo $blgf_code;?></td>
        <td bgcolor="">
          <a href="<?php echo base_url();?>index.php/references/edit_district/<?php echo $district_id;?>">Edit</a> | 
		  <a href="<?php echo base_url();?>index.php/references/delete_district/<?php echo $district_id;?>" onclick="delete_province('<?php echo $district_id;?>','Delete Province  <?php echo $district_id;?>?')">Delete</a>
         
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
        <td>&nbsp;</td>
    </tr>
</table>
</form>