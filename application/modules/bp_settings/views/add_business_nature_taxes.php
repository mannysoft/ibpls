<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <fieldset class="fieldset_std">
    <legend><?php echo $field_set; ?></legend>
  <table width="100%" border="0">
  <tr>
    <td align="right" class="type-one">&nbsp;</td>
    <td class="type-one"><?php echo validation_errors(); echo $msg;?></td>
  </tr>
  <tr>
    <td width="25%" align="right" class="type-one">Taxes/Fees/Other Charges:</td>
    <td width="75%" class="type-one"><?php echo form_dropdown('tfo_id', $tfo_id_options, 'large');?></td>
    </tr>
  <tr>
    <td align="right" class="type-one">Transaction:</td>
    <td class="type-one"><select name="transaction" id="transaction">
      <option value="new">New</option>
      <option value="renew">Renew</option>
      <option value="retire">Retire</option>
    </select></td>
    </tr>
  <tr>
    <td align="right" class="type-one">Basis:</td>
    <td class="type-one"><select name="basis" id="basis">
      <option value="1" >Capital Investment</option>
      <option value="2" >Gross Sales</option>
      <option value="3" >Inputted Value</option>
      </select></td>
  </tr>
  <tr>
    <td align="right" class="type-one">Indicator:</td>
    <td class="type-one"><select name="indicator" id="indicator">
      <option value="1" >Constant</option>
      <option value="2" >Formula</option>
      <option value="3" >Range</option>
    </select></td>
    </tr>
  <tr>
    <td align="right" class="type-one">Amount/Formula:</td>
    <td class="type-one"><input type="text" name="amount_formula" size="20" value="" id="amount_formula" /></td>
    </tr>
  <tr>
    <td align="right" class="type-one">Minimum Amount:</td>
    <td class="type-one"><input type="text" name="min_amount" size="20" id="min_amount" /></td>
  </tr>
  <tr>
    <td align="right" class="type-one"><input name="nature_id" type="hidden" id="nature_id" value="<?php echo $nature_id?>" />      <input name="op" type="hidden" id="op" value="1" /></td>
    <td class="type-one"><input type="submit" name="save_taxes" id="save_taxes" value="S a v e" />
      <?php echo anchor('bp_settings/business_nature', 'Cancel');?></td>
    </tr>
</table>
<table width="100%" border="0" class="type-one">
  <tr>
    <th>&nbsp;</th>
    <th>Description</th>
    <th>Formula Type</th>
    <th>Transaction</th>
    <th>Indicator</th>
    <th>&nbsp;</th>
    <th>Amount / Formula</th>
    <th>Action</th>
  </tr>
   <?php
			
	foreach($tax_requirements as $row)
	{
		$tfo_id 	= $row['tfo_id'];
		
		$tfo_name = $this->Business_tfo->get_business_tfo($row['tfo_id']);
		
		//echo '<pre>';
		//print_r($tfo_name);
		//echo '</pre>';
		
		$bg 		   = $this->Settings->set_line_colors();
			
		?>
  <tr bgcolor="<?php echo $bg;?>" onmouseover="this.bgColor = '<?php echo $this->config->item('mouseover_linecolor')?>';" 
    onmouseout ="this.bgColor = '<?php echo $bg;?>';">
    <td>&nbsp;</td>
    <td><?php echo $tfo_name[0]['name'];?></td>
    <td><?php echo $row['mode'];?></td>
    <td><?php echo $row['transaction'];?></td>
    <td><?php echo $row['indicator'];?></td>
    <td><?php echo $row['amount_formula'];?></td>
    <td><?php echo $row['min_amount'];?></td>
    <td>&nbsp;</td>
  </tr>
  <?php 
	}
  ?>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</fieldset>

</form>