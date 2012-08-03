<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <?php echo anchor('references/add_lgu', 'Add LGU');?><br />
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="2%" scope="col">&nbsp;</th>
        <th width="22%" scope="col">NAME of LGU</th>
        <th width="22%" scope="col"><strong>Province</strong></th>
        <th width="22%" scope="col">BLGF Code</th>
        <th width="13%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php
			
	foreach($lgus as $row)
	{
		$lgu_id 		= $row['lgu_id'];
		$name 			= $row['name'];
		$province_id 	= $row['province_id'];
		$blgf_code 	   = $row['blgf_code'];
		
		$province_name = $this->Province->get_province($province_id);
		
		$bg 		   = $this->Settings->set_line_colors();
			
		?><tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '#ABC7E9';this.style.color='#000000';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';this.style.color='#000000'">
        <td bgcolor=""></td>
		<td bgcolor=""><?php echo $name;?></td>
		<td bgcolor=""><?php echo $province_name[0]['name'];?></td>
        <td bgcolor=""><?php echo $blgf_code;?></td>
        <td bgcolor="">
          <a href="<?php echo base_url();?>index.php/references/edit_lgu/<?php echo $lgu_id;?>">Edit</a> | 
		  <a href="<?php echo base_url();?>index.php/references/delete_lgu/<?php echo $lgu_id;?>" onclick="delete_province('<?php echo $lgu_id;?>','Delete Province  <?php echo $lgu_id;?>?')">Delete</a>
         
        </td>
        </tr>
		<?php
		
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