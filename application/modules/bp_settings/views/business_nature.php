<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
   <table width="100%" border="0">
    <tr>
      <td width="81%">&nbsp;</td>
      <td width="19%"><?php echo anchor('bp_settings/business_nature_save', 'Add New');?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="2%" scope="col">&nbsp;</th>
        <th width="39%" scope="col"><strong>Business Nature</strong></th>
        <th width="19%" scope="col">PSIC Code</th>
        <th width="40%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php foreach($business_natures as $row):?>		
		<?php $bg = $this->Settings->set_line_colors();?>
        <tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
        <td></td>
		<td><?php echo $row->name;?></td>
		<td><?php echo $row->psic_code;?></td>
		<td>
          <a href="<?php echo base_url();?>bp_settings/business_nature_save/<?php echo $row->id;?>">Edit</a> | 
	    <a href="<?php echo base_url();?>bp_settings/business_nature_delete/<?php echo $row->id;?>" class="delete_item">Delete</a> | 
        <a href="<?php echo base_url();?>bp_settings/business_nature_taxes_save/<?php echo $row->id;?>">Required taxes, fees and other charges</a>
</td>
        </tr>
		<?php endforeach;?>
      <tr>
        <td>&nbsp;</td>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</form>