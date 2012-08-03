  </div>
</div>
<div class="no_float"></div>
</div>
<div id="old-foot">
<div align="center"><?php //$this->Helps->footer(); 
echo ' (Database Version '.$this->Migrations->get_version().')';?> | Copyright © 2011 - <?php echo date('Y');?> <a href="http://www.charliesoft.net/" class="footerLink" target="_new">Charliesoft</a>. All Rights Reserved.</div>
</div>
</body>
</html>
<script>
$('.delete_item').click(function(){

	var answer = confirm("Are you sure you want to delete this?")
	
	if (!answer)
	{
		return false;
	}
});

<?php if(isset($focus_field)):?>
$('#<?php echo $focus_field;?>').focus();
<?php endif;?>
</script>