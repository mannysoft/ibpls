<fieldset><legend><?php echo $legend;?></legend>
<form action="" method="post">
  <table width="100%" border="0" cellpadding="5" cellspacing="5" class="table-form">
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right">Account Description:</td>
      <td><span class="type-one"><?php echo form_dropdown('business_tfo_id', $business_tfo_id_options, $chart->business_tfo_id);?></span></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td width="17%" align="right"><label for="account_code">Account Code:</label></td>
      <td width="79%">
        <input name="account_code" type="text" id="account_code" value="<?php echo $chart->account_code;?>" /></td>
      <td width="4%">&nbsp;</td>
    </tr>
    <tr>
      <td align="right">Account Type:</td>
      <td>
      <?php $account_type_options = array('DEBIT' => 'DEBIT', 'CREDIT' => 'CREDIT'); ?>
      <span class="type-one"><?php echo form_dropdown('account_type', $account_type_options, $chart->account_type);?></span></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="Save" />
        <a href="<?=base_url().'chart_accounts'?>">Cancel</a>
        <input name="op" type="hidden" id="op" value="1" />
        <input name="id" type="hidden" id="id" value="<?php ?>" /></td>
      <td>&nbsp;</td>
    </tr>
  </table>
  </form>
</fieldset>
<script>
$('.scholar').click(function(){
	
});
</script>
