<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td align="right" bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff"><?php echo validation_errors(); ?>&nbsp;</td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="name">Description:</label></td>
        <td bgcolor="#ffffff"><input name="name" type="text" id="name" value="<?php echo $tfo[0]['name']; ?>" /></td>
      </tr>
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff">Tax Fee Type:</td>
        <td width="75%" bgcolor="#ffffff"><?php echo form_dropdown('tax_fee_type_id', $tax_fee_type_id_options, $selected);?></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="amount">Amount:</label></td>
        <td bgcolor="#ffffff"><input name="amount" type="text" id="amount" value="<?php echo $tfo[0]['amount']; ?>" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="number_years">No. of Years:</label></td>
        <td bgcolor="#ffffff"><input name="number_years" type="text" id="number_years" value="<?php echo $tfo[0]['number_years']; ?>" /> 
          (0 - 100)</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><?php echo form_checkbox($set_default);?>
        <label for="set_default">Set as default</label></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" />
        <input name="tfo_id" type="hidden" id="tfo_id" value="<?php echo $tfo[0]['tfo_id']; ?>" /></td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php echo anchor('bp_settings/tfo', 'Cancel');?></td>
    </tr>
</table>
</form>