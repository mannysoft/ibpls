<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td width="11%" align="right" bgcolor="#ffffff">&nbsp;</td>
        <td width="24%" bgcolor="#ffffff"></td>
        <td width="5%" bgcolor="#ffffff"></td>
        <td width="60%" bgcolor="#ffffff"></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff">Interest Rates/Month (%)</td>
        <td bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff">Ceiling Rate</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">Individual</td>
        <td bgcolor="#ffffff"><input name="individual_interest_rate" type="text" id="individual_interest_rate" value="<?php echo set_value('name', $individual->interest_rate); ?>" /></td>
        <td bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff"><input name="individual_ceiling_rate" type="text" id="individual_ceiling_rate" value="<?php echo set_value('name', $individual->ceiling_rate); ?>" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="corporate_ceiling_rate">Corporate:</label></td>
        <td bgcolor="#ffffff"><input name="corporate_interest_rate" type="text" id="corporate_interest_rate" value="<?php echo set_value('name', $corporate->interest_rate); ?>" /></td>
        <td bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff"><input name="corporate_ceiling_rate" type="text" id="corporate_ceiling_rate" value="<?php echo set_value('name', $corporate->ceiling_rate); ?>" /></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php //echo anchor('references/barangay', 'Cancel');?></td>
    </tr>
</table>
</form>