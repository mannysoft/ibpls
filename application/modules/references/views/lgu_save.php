<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td align="right" bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff">&nbsp;</td>
      </tr>
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff"><label for="province_desc">Province:</label></td>
        <td width="75%" bgcolor="#ffffff"><?php echo form_dropdown('province_id', $province_options, $lgu->province_id);?></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">LGU Name:</td>
        <td bgcolor="#ffffff"><input name="name" type="text" id="name" value="<?php echo set_value('name', $lgu->name); ?>" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="blgf_code">BLGF Code:</label></td>
        <td bgcolor="#ffffff"><input name="blgf_code" type="text" id="blgf_code" value="<?php echo set_value('blgf_code', $lgu->blgf_code); ?>" /></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php echo anchor('references/lgu', 'Cancel');?></td>
    </tr>
</table>
</form>