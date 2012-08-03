<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0">
    <tr>
      <td width="81%">&nbsp;</td>
      <td width="19%"><?php echo anchor('references/lgu_save', 'Add LGU');?></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
<table width="100%" border="0" class="type-one">
      <tr class="type-one-header">
        <th width="1%" scope="col">&nbsp;</th>
        <th width="30%" scope="col">NAME of LGU</th>
        <th width="26%" scope="col"><strong>Province</strong></th>
        <th width="26%" scope="col">BLGF Code</th>
        <th width="17%" scope="col"><strong>Action</strong></th>
  </tr>
	  <?php $p = new Province_m();?>
	  <?php foreach($lgus as $row):?>
      		<?php $p->get_by_id($row->province_id);?>				
		<?php $bg = $this->Settings->set_line_colors();?>
        <tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
        <td></td>
		<td><?php echo $row->name;?></td>
		<td><?php echo $p->name;?></td>
        <td><?php echo $row->blgf_code;?></td>
        <td>
          <a href="<?php echo base_url();?>references/lgu_save/<?php echo $row->id;?>">Edit</a> | 
		  <a href="<?php echo base_url();?>references/lgu_delete/<?php echo $row->id;?>" class="delete_item">Delete</a>
        </td>
        </tr>
		<?php endforeach;?>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</form>