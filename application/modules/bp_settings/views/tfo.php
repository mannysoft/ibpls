<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0">
    <tr>
      <td width="81%">&nbsp;</td>
      <td width="19%"><?php echo anchor('bp_settings/tfo_save', 'Add New');?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="1%" scope="col">&nbsp;</th>
        <th width="25%" scope="col"><strong>Description</strong></th>
        <th width="13%" scope="col">Default Amount</th>
        <th width="14%" scope="col">Indicator</th>
        <th width="27%" scope="col"><strong>Type</strong></th>
        <th width="20%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php $b = new Business_tax_fee_type_m();?>
	  <?php foreach($tfos as $row):?>
      		<?php $b->get_by_id($row->tax_fee_type_id);?>	
			<?php $bg = $this->Settings->set_line_colors();?>	
<tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
        <td></td>
		<td><?php echo $row->name;?></td>
	  <td align="right"><?php echo $row->amount;?></td>
    <td><?php echo $row->default;?></td>
        <td><?php echo $b->name;?></td>
        <td>
          <a href="<?php echo base_url();?>bp_settings/tfo_save/<?php echo $row->id;?>">Edit</a> | 
		  <a href="<?php echo base_url();?>bp_settings/tfo_delete/<?php echo $row->id;?>" class="delete_item">Delete</a>
  </td>
        </tr>
		<?php endforeach;?>
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