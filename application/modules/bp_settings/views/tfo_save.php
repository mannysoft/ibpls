<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td align="right" bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff"></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">Description:</td>
        <td bgcolor="#ffffff"><input name="name" type="text" id="name" value="<?php echo set_value('name', $tfo->name); ?>" /></td>
      </tr>
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff"><label for="name">Tax Fee Type:</label></td>
        <td width="75%" bgcolor="#ffffff"><?php echo form_dropdown('tax_fee_type_id', $tax_fee_type_id_options, $tfo->tax_fee_type_id);?></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff">Amount:</td>
        <td bgcolor="#ffffff"><input name="amount" type="text" id="amount" value="<?php echo set_value('amount', $tfo->amount); ?>" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="amount">No. of Years:</label></td>
        <td bgcolor="#ffffff"><input name="number_years" type="text" id="number_years" value="<?php echo set_value('number_years', $tfo->number_years); ?>" /> 
          (0 - 100)</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input name="set_default" type="checkbox" id="set_default" value="1" <?php echo ($tfo->default) ? 'checked' : ''?>/>
        <label for="set_default">Set as default</label></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php echo anchor('bp_settings/tfo', 'Cancel');?></td>
    </tr>
</table>
</form>