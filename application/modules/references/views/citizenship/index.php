<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0">
    <tr>
      <td width="81%">&nbsp;</td>
      <td width="19%"><?php echo anchor('references/citizenship/save', 'Add New');?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="2%" scope="col">&nbsp;</th>
        <th width="21%" scope="col"><strong>Code</strong></th>
        <th width="26%" scope="col"><strong>Description</strong></th>
        <th width="51%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php foreach($sectors as $row):?>		
		<?php $bg = $this->Settings->set_line_colors(); ?>
	<tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
        <td></td>
		<td><?php echo $row->code;?></td>
        <td><?php echo $row->description;?></td>
        <td>
          <a href="<?php echo base_url();?>references/citizenship/save/<?php echo $row->id;?>">Edit</a> | 
		  <a href="<?php echo base_url();?>references/citizenship/delete/<?php echo $row->id;?>" class="delete_item">Delete</a>
         
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