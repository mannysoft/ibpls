<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff">&nbsp;</td>
        <td width="75%" bgcolor="#ffffff"><?php echo validation_errors(); ?></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">Business Nature:</td>
        <td bgcolor="#ffffff"><input name="name" type="text" id="name" value="<?php echo $business_nature[0]['name']; ?>" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="name">PSIC Code:</label></td>
        <td bgcolor="#ffffff"><input name="psic_code" type="text" id="psic_code" value="<?php echo $business_nature[0]['psic_code']; ?>" /></td>
      </tr>
      <tr>
        <td><input name="nature_id" type="hidden" id="nature_id" value="<?php echo $business_nature[0]['nature_id']; ?>" />
        <input name="op" type="hidden" id="op" value="1" /></td>
        <td><input type="submit" name="save_nature" id="save_nature" value="S a v e" />
          <?php echo anchor('bp_settings/business_nature', 'Cancel');?></td>
      </tr>
</table>
</form>