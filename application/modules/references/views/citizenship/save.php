<form id="myform" method="post" action="" target="" enctype="multipart/form-data">
  <table width="100%" border="0" class="type-one">
      <tr>
        <td align="right" bgcolor="#ffffff">&nbsp;</td>
        <td bgcolor="#ffffff"></td>
      </tr>
      <tr>
        <td width="25%" align="right" bgcolor="#ffffff"><label for="code">Code:</label></td>
        <td width="75%" bgcolor="#ffffff"><input name="code" type="text" id="code" value="<?php echo set_value('code', $sector->code); ?>" /></td>
      </tr>
      <tr>
        <td align="right" bgcolor="#ffffff"><label for="description">Description:</label></td>
        <td bgcolor="#ffffff"><input name="description" type="text" id="description" value="<?php echo set_value('description', $sector->description); ?>" /></td>
      </tr>
      <tr>
        <td><input name="op" type="hidden" id="op" value="1" /></td>
        <td><input type="submit" name="button" id="button" value="S a v e" /><?php echo anchor('references/citizenship', 'Cancel');?></td>
    </tr>
</table>
</form>