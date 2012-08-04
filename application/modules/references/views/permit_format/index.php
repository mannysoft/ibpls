<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0">
    <tr>
      <td width="81%">&nbsp;</td>
      <td width="19%"><?php //echo anchor('references/permit_format/save', 'Add New');?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="1%" scope="col">&nbsp;</th>
        <th width="12%" scope="col"><strong>Type</strong></th>
        <th width="12%" scope="col">Header</th>
        <th width="11%" scope="col">Use Year</th>
        <th width="22%" scope="col"><strong>Sequence</strong></th>
        <th width="42%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php foreach($permit as $row):?>		
		<?php $bg = $this->Settings->set_line_colors(); ?>
	<tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
        <td></td>
		<td><?php echo $row->type;?></td>
		<td><?php echo $row->header;?></td>
		<td><?php echo $row->use_year;?></td>
        <td><?php echo $row->sequence;?></td>
        <td>
          <a href="<?php echo base_url();?>references/permit_format/save/<?php echo $row->id;?>">Edit</a> | 
		  <!--<a href="<?php echo base_url();?>references/permit_format/delete/<?php echo $row->id;?>" class="delete_item">Delete</a>-->
         
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