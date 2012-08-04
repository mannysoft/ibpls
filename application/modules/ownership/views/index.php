<form action="" method="post">
<table width="100%" border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><?php echo anchor('ownership/save', 'Add New', 'class="btn-add-right"');?></td>
  </tr>
  <tr>
    <td width="9%">&nbsp;</td>
    <td width="79%">&nbsp;</td>
    <td width="12%"></td>
  </tr>
</table>
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="13%" bgcolor="#D6D6D6"> Ownership Code</th>
        <th width="21%" bgcolor="#D6D6D6">Ownership Type</th>
        <th width="11%" bgcolor="#D6D6D6">Exemption(%)</th>
        <th width="17%" bgcolor="#D6D6D6">Actions</th>
        <th width="38%" bgcolor="#D6D6D6">&nbsp;</th>
  </tr>
	  <?php foreach($rows as $row):?>
	<?php $bg = $this->Settings->set_line_colors();?>
    <tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
	    <td><?php echo $row->code;?></td>
      <td><?php echo $row->description;?></td>
	    <td align="right"><?php echo $row->tax_exemption;?></td>
	    <td align="right"><a href="<?php echo base_url();?>ownership/save/<?=$row->id;?>">Edit</a> |
          <a href="<?php echo base_url();?>ownership/delete/<?=$row->id;?>" class="delete_item">Delete</a>&nbsp;</td>
	    <td align="right">
        	
        </td>
        </tr>
		<?php endforeach;?>
        <tr>
          <td><?php //echo $this->pagination->create_links(); ?></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
</table>
</form>