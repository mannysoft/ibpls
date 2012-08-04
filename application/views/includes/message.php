<?php if (validation_errors()): ?>
    <div class="clean-red"><?php echo validation_errors(); ?></div>
    <?php elseif ($this->session->flashdata('msg')): ?>
    <div class="clean-green"><?php echo $this->session->flashdata('msg');?></div><br />
    <?php elseif ($msg): ?>
    <div class="clean-green"><?php echo $msg;?></div><br />
    <?php else: ?>
<?php endif; ?>