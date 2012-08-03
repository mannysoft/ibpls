<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td align="right" bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff">&nbsp;</td>
      </tr>
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff"><label for="name">Province:</label></td>
        <td width="75%" bgcolor="#ffffff"><input name="name" type="text" id="name" value="<?php echo $province[0]['name']?>" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="blgf_code">BLGF Code:</label></td>
        <td bgcolor="#ffffff"><input name="blgf_code" type="text" id="blgf_code" value="<?php echo $province[0]['blgf_code']?>" /></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" />
        <input name="province_id" type="hidden" id="province_id" value="<?php echo $province[0]['province_id']?>" /></td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php echo anchor('references/province', 'Cancel');?></td>
    </tr>
</table>
</form>