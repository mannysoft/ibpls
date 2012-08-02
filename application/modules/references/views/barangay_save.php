<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff">&nbsp;</td>
        <td width="75%" bgcolor="#ffffff"></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">District Name:</td>
        <td bgcolor="#ffffff"><?php echo form_dropdown('district_id', $district_options, $barangay->district_id);?></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">Barangay Name:</td>
        <td bgcolor="#ffffff"><input name="name" type="text" id="name" value="<?php echo set_value('name', $barangay->name); ?>" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="blgf_code">BLGF Code:</label></td>
        <td bgcolor="#ffffff"><input name="blgf_code" type="text" id="blgf_code" value="<?php echo set_value('blgf_code', $barangay->blgf_code); ?>" /></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php echo anchor('references/barangay', 'Cancel');?></td>
    </tr>
</table>
</form>