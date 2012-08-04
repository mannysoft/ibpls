<form action="" method="post">
<table width="100%" border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><?php echo anchor('requirements/save', 'Add New', 'class="btn-add-right"');?></td>
  </tr>
  <tr>
    <td width="9%">&nbsp;</td>
    <td width="79%">&nbsp;</td>
    <td width="12%"></td>
  </tr>
</table>
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="17%" bgcolor="#D6D6D6"> Description</th>
        <th width="12%" bgcolor="#D6D6D6">Permit Type</th>
        <th width="25%" bgcolor="#D6D6D6">Required</th>
        <th width="25%" bgcolor="#D6D6D6">Actions</th>
        <th width="46%" bgcolor="#D6D6D6">&nbsp;</th>
  </tr>
	  <?php foreach($rows as $row):?>
	<?php $bg = $this->Settings->set_line_colors();?>
    <tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
	    <td><?php echo $row->description;?></td>
	    <td><?php echo $row->permit_type;?></td>
	    <td><?php echo $row->required;?></td>
	    <td align="right"><a href="<?php echo base_url();?>requirements/save/<?=$row->id;?>">Edit</a> |
            <a href="<?php echo base_url();?>requirements/delete/<?=$row->id;?>" class="delete_item">Delete</a>&nbsp;</td>
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