<?php

 
$class_menu_close = '';

$base = '<a href="'.base_url().'';
$image = '<img class="menu_icon" src="'.base_url().'images/blank.gif">';

//http://codeigniter.com/user_guide/helpers/html_helper.html#ol_and_ul

$attributes = array('class' => 'list_modules');

$user_management = array(
						'users' 		=> $base.'users">'.$image.'Manage Users</a>',
						'groups' 		=> $base.'groups">'.$image.'Groups</a>',
						'permissions' 	=> $base.'permissions">'.$image.'Permissions</a>',
            			);
						
$settings_management =  array(
						$base.'settings_manage/salary_grade">'.$image.'Salary Grade (Authorized)</a>',
						$base.'settings_manage/salary_grade_proposed">'.$image.'Salary Grade (Proposed)</a>',
						$base.'settings_manage/holiday">'.$image.'Holiday</a>',
						$base.'settings_manage/schedules">'.$image.'Schedules</a>',
						//$base.'settings_manage/schedule">'.$image.'Employee Schedule</a>',
						$base.'settings_manage/employee_schedule">'.$image.'Employee Schedule</a>',
						$base.'settings_manage/audit_trail">'.$image.'Audit Trail</a>',
						$base.'settings_manage/general_settings">'.$image.'General Settings</a>',
						$base.'settings_manage/backup">'.$image.'Back up/ Restore</a>',
						$base.'settings_manage/offline_update">'.$image.'Offline Update</a>',
            			);																							
?>
<ul id="main_menu" class="main_menu_over"><!-- Main menu -->

<li class="menu_close"><a class="first_line" href="<?php echo base_url();?>home/home_page"><img src="<?php echo base_url();?>/images/classroom_classroom.png" alt=".:" width="22" height="22" class="little_icon"><br>
  Home</a></li>
 
 
           <li class="menu_close"><a class="first_line" href="#"><img src="<?php echo base_url();?>images/admin_manager_view.png" width="22" height="22" class="little_icon"><br>
          Users<br /></a>
          <?php echo ul($user_management, $attributes);?>
          </li>
      
 
<li class="menu_close" onMouseOver="adminOpenMenu(this, 'menu_open');" onMouseOut="adminCloseMenu(this, 'menu_close');"><a class="first_line" href="<?php echo base_url();?>references"><img src="<?php echo base_url();?>/images/configuration_config.png" alt=".:" width="22" height="22" class="little_icon"><br>
  Settings</a><ul class="list_modules"><li><a href="<?php echo base_url();?>references/province"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Province</a></li>
  
  <!--<li><a href="<?php echo base_url();?>references/district"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">District</a></li>-->
  
  <li><a href="<?php echo base_url();?>references/lgu"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">LGU</a></li>
  
  <!--<li><a href="<?php echo base_url();?>references/zip"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Zip</a></li>-->
  
  
  <li><a href="<?php echo base_url();?>references/barangay"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Barangay</a></li>
  
  
  <!--<li><a href="<?php echo base_url();?>references/zone"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Zone</a></li>-->
  
  
  
  
  
  <li class="menu_close" onmouseover="adminOpenMenu(this, 'menu_open');" onmouseout="adminCloseMenu(this, 'menu_close');"><a class="arrow_left" href="" onclick="return false;"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Business Permit</a>
  <ul>
  <li><a  href="<?php echo base_url();?>bp_settings/tfo"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Tax, Fee and Other Charges</a></li>
  <li><a  href="<?php echo base_url();?>bp_settings/business_nature"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Business Nature</a></li>
  <li><a  href="index.php?modname=directory&amp;op=listgroup&amp;of_platform=framework&amp;close_over=1"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />PSIC</a></li>
  </ul>
  </li>
  
  
  
  <li class="menu_close" onmouseover="adminOpenMenu(this, 'menu_open');" onmouseout="adminCloseMenu(this, 'menu_close');"><a class="arrow_left" href="" onclick="return false;"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Other Permit</a>
  <ul>
  <li><a  href=""><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Engine Type</a></li>
  <li><a  href=""><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Fishery Activity Description</a></li>
  <li><a  href=""><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Boat Fees</a></li>
   <li><a  href=""><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Fish Activities Fees </a></li>
  </ul>
  </li>
  
  
  
  
  
  <li><a href="<?php echo base_url();?>chart_accounts"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Chart Of Accounts</a></li>
  <li><a href="<?php echo base_url();?>requirements"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Requirements</a></li>
  <li><a href="<?php echo base_url();?>ownership"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Ownership Type</a></li>
  <li><a href="<?php echo base_url();?>references/ctc"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">CTC Settings</a></li>
  <!--<li><a href="<?php echo base_url();?>references/barangay"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Occupancy Type</a></li>-->
  <li><a href="<?php echo base_url();?>references/barangay"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Industry Sector</a></li>
  <li><a href="<?php echo base_url();?>references/citizenship"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Citizenship</a></li>
  <li><a href="<?php echo base_url();?>references/economic_area"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Economic Area</a></li>
  <li><a href="<?php echo base_url();?>references/economic_org"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Economic Organization</a></li>
  <li><a href="<?php echo base_url();?>references/permit_format"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Permit Number Format</a></li>
  <li><a href="<?php echo base_url();?>references/#"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Lot PIN</a></li>
  <!--<li><a href="<?php echo base_url();?>references/barangay"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Announcements</a></li>-->
  
  
  
  
  <li class="menu_close" onmouseover="adminOpenMenu(this, 'menu_open');" onmouseout="adminCloseMenu(this, 'menu_close');"><a class="arrow_left" href="" onclick="return false;"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Interest/Surcharge</a>
  <ul>
  <li><a  href=""><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Business</a></li>
  <li><a  href=""><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Motorized</a></li>
  <li><a  href=""><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Fishery</a></li>
   <li><a  href=""><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:" />Occupational</a></li>
  </ul>
  </li>
  
  
  
  <li><a href="<?php echo base_url();?>references/barangay"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Signatories</a></li>
  <li><a href="<?php echo base_url();?>references/barangay"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">Signatory Template</a></li>
  <li><a href="<?php echo base_url();?>references/barangay"><img class="menu_icon" src="<?php echo base_url();?>/images/blank.gif" alt=".:">General</a></li>
  
  
  </ul></li>
 
 
 
 
 
 
 
 
 
  <!--
  <li class="menu_close"><a class="first_line" href="?q=22" onClick="return false;"><img src="<?php echo base_url();?>/images/configuration_config.png" alt=".:" width="22" height="22" class="little_icon"><br>
  Settings</a>
  <?php echo ul($settings_management, $attributes);?>
  </li>-->
  
  
  
  
  
  </ul>
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
  <br />
&nbsp;&nbsp;&nbsp;Welcome, <a href="<?php echo base_url();?>users/my_account/"><?php echo $this->session->userdata('fname').' '.$this->session->userdata('username');?></a>&nbsp;<a href="<?php echo base_url();?>login/log_out">Logout</a> | <a href="#" id="check_updates">Check for updates</a><!--| <a href="#" onclick="bug_show_form2('<?php echo $this->session->userdata('username');?>')">Report Bugs</a>--> 
<div id="updates_out"></div>

<script>
$('#check_updates').click(function(){

	$('#updates_out').html("Connecting...");
	$('#updates_out').html("");
	//$('#updates_out').load('<?php echo base_url();?>Client_services/check_updates/' + 12);
		
});
</script>
<script>

$('.menu_close').mouseover(function(){

	adminOpenMenu(this, 'menu_open');
});

$('.menu_close').mouseout(function(){

	adminCloseMenu(this, 'menu_close');
});
</script>