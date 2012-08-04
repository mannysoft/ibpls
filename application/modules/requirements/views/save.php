<fieldset><legend><?php echo $legend;?></legend>
<form action="" method="post">
  <table width="100%" border="0" cellpadding="5" cellspacing="5" class="table-form">
    <tr>
      <td width="17%">&nbsp;</td>
      <td width="79%">&nbsp;</td>
      <td width="4%">&nbsp;</td>
    </tr>
    <tr>
      <td align="right">Description:</td>
      <td><span class="type-one">
        <input name="description" type="text" id="description" value="<?php echo $requirement->description;?>" />
      </span></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right">&nbsp;</td>
      <td><input name="required" type="checkbox" id="required" value="Yes" <?php echo ($requirement->required == 'Yes') ? 'checked' : ''?>/>
        <label for="required">Required</label></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td align="right">Permit Type:</td>
      <td>
        <?php $account_type_options = array(
				'Business' 		=> 'Business', 
				'Motorized' 	=> 'Motorized',
				'Peddlers'		=> 'Peddlers',
				'Occupational'	=> 'Occupational',
				'Fishery' 		=> 'Fishery'
				
				); ?>
        <?php echo form_dropdown('permit_type', $account_type_options, $requirement->permit_type);?></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="Save" />
        <a href="<?=base_url().'requirements'?>">Cancel</a>
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
