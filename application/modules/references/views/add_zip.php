<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff">&nbsp;</td>
        <td width="75%" bgcolor="#ffffff"><?php echo validation_errors(); ?>&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">LGU Name:</td>
        <td bgcolor="#ffffff"><?php echo form_dropdown('lgu_id', $lgu_options, 'large');?></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="name">Zip Code:</label></td>
        <td bgcolor="#ffffff"><input name="name" type="text" id="name" value="<?php echo set_value('name'); ?>" /></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php echo anchor('references/zip', 'Cancel');?></td>
    </tr>
</table>
</form>