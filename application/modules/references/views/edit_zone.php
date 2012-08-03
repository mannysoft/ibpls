<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff">&nbsp;</td>
        <td width="75%" bgcolor="#ffffff"><?php echo validation_errors(); ?></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">Barangay Name:</td>
        <td bgcolor="#ffffff"><?php echo form_dropdown('barangay_id', $barangay_options, 'large');?></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="name">Zone Name:</label></td>
        <td bgcolor="#ffffff"><input name="name" type="text" id="name" value="<?php echo $zone[0]['name']?>" /></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" />
        <input name="zone_id" type="hidden" id="zone_id" value="<?php echo $zone[0]['zone_id']?>" /></td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php echo anchor('references/zone', 'Cancel');?></td>
    </tr>
</table>
</form>