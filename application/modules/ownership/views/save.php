<fieldset><legend><?php echo $legend;?></legend>
<form action="" method="post">
  <table width="100%" border="0" cellpadding="5" cellspacing="5" class="table-form">
    <tr>
      <td width="16%">&nbsp;</td>
      <td width="80%">&nbsp;</td>
      <td width="4%">&nbsp;</td>
    </tr>
    <tr>
      <td align="right">Ownership Code:</td>
      <td><span class="type-one">
        <input name="code" type="text" id="code" value="<?php echo $owner->code;?>" />
      </span></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right">Ownership Type:</td>
      <td><span class="type-one">
        <input name="description" type="text" id="description" value="<?php echo $owner->description;?>" />
      </span></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right">Tax Exemption:</td>
      <td><span class="type-one">
        <input name="tax_exemption" type="text" id="tax_exemption" value="<?php echo $owner->tax_exemption;?>" />
      </span></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><strong>Fees to be exempted</strong></td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>
      
      <?php //print_r($exemptions);?>
      
      <?php foreach($tfos as $row):?>
      	<?php $checked = (in_array($row->id, $exemptions)) ? 'checked' : ''?>
        <input name="tfos[]" type="checkbox" value="<?php echo $row->id?>" <?php echo $checked;?> /> <?php echo $row->name?><br />
      <?php endforeach;?>
      &nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="Save" />
        <a href="<?=base_url().'ownership'?>">Cancel</a>
        <input name="op" type="hidden" id="op" value="1" />
        <input name="id" type="hidden" id="id" value="<?php ?>" /></td>
      <td>&nbsp;</td>
    </tr>
  </table>
  </form>
</fieldset>
