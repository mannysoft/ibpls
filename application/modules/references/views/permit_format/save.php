<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td align="right" bgcolor="#ffffff">Type:</td>
        <td bgcolor="#ffffff"><?php echo $permit->type;?></td>
      </tr>
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff"><label for="header">Header:</label></td>
        <td width="75%" bgcolor="#ffffff"><input name="header" type="text" id="header" value="<?php echo set_value('code', $permit->header); ?>" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff"><input name="use_year" type="checkbox" id="use_year" value="Yes" <?php echo ($permit->use_year == 'Yes') ? 'checked' : ''?>/>
        <label for="use_year">Use Year</label></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="sequence">Sequence:</label></td>
        <td bgcolor="#ffffff"><input name="sequence" type="text" id="sequence" value="<?php echo set_value('description', $permit->sequence); ?>" /></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php echo anchor('references/permit_format', 'Cancel');?></td>
    </tr>
</table>
</form>