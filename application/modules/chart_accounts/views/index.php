<form action="" method="post">
<table width="100%" border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><?php echo anchor('chart_accounts/save', 'Add New', 'class="btn-add-right"');?></td>
  </tr>
  <tr>
    <td width="9%">&nbsp;</td>
    <td width="79%">&nbsp;</td>
    <td width="12%"></td>
  </tr>
</table>
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="22%" bgcolor="#D6D6D6">Account Description</th>
        <th width="15%" bgcolor="#D6D6D6">Account Code</th>
        <th width="14%" bgcolor="#D6D6D6">Account Type</th>
        <th width="49%" bgcolor="#D6D6D6">Actions</th>
  </tr>
	  <?php $b = new Business_tfo_m();?>
	  <?php foreach($rows as $row):?>
      	<?php $b->get_by_id($row->business_tfo_id);?>
	<?php $bg = $this->Settings->set_line_colors();?>
    <tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
	    <td><?php echo $b->name;?></td>
	    <td><?php echo $row->account_code;?></td>
	    <td><?php echo $row->account_type;?></td>
	    <td align="right">
        	<a href="<?php echo base_url();?>chart_accounts/save/<?=$row->id;?>">Edit</a> |
            <a href="<?php echo base_url();?>chart_accounts/delete/<?=$row->id;?>" class="delete_item">Delete</a>
        </td>
        </tr>
		<?php endforeach;?>
        <tr>
          <td><?php echo $this->pagination->create_links(); ?></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
</table>
</form>