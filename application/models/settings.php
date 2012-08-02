<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Settings extends CI_Model{

	// --------------------------------------------------------------------
	
	//use for line colors
	public $x = 2;
	public $y = 1;
	public $font_color_am_login = 0;
	public $font_color_pm_login = 0;
	public $am_font_bold = '';
	public $pm_font_bold = '';
	//public $font_color_am_login = 0;
	//public $font_color_am_login = 0;
	public $font_color_am_logout = 0;
	public $font_color_pm_logout = 0;
	public $am_out_bold = '';
	public $pm_out_bold = '';
	
	public $days 	= 0;
	public $hours 	= 0;
	public $minutes = 0;
	
	public $installed_version;
	
	function __construct()
	{
		parent::__construct();
		
	}
	
	// --------------------------------------------------------------------
	
	/**
	 * Change the font color
	 *
	 * @param string $log
	 */
	function change_font_color($log)
	{
		//$interval = $this->settings();
	}
	
	// --------------------------------------------------------------------
	
	// --------------------------------------------------------------------
	
	/**
	 * Get single field
	 *
	 * @param string $table_field
	 * @return unknown
	 */
	function get_selected_field($table_field = '')
	{
		$field_value = '';
		
		$this->db->select('setting_value');
		$this->db->where('name', $table_field);
		$q = $this->db->get('settings');
		
		if ($q->num_rows() > 0)
		{
			foreach ($q->result_array() as $row)
			{
				$field_value = $row['setting_value'];	
			}
		}
		
		return $field_value;
		
		$q->free_result();
	}
	
	// --------------------------------------------------------------------
	
	/**
	 * Set the color of table rows
	 *
	 * @return string
	 */
	function set_line_colors()
	{
		if($this->x > $this->y)
		{
			$this->y+=2;
			$bg="#F2F2F2";
		
		}else{
			
			$this->x+=2;
			$bg="#Ffffff";
		}
		
		return $bg;
	}
	
	// --------------------------------------------------------------------
	
	/**
	 * Set the version
	 *
	 */
	function set_version()
	{
		/*
		$data = array();
		$this->db->select('version');
		$q = $this->db->get('settings');
		
		if ($q->num_rows() > 0)
		{
			foreach ($q->result_array() as $row)
			{
				$version  = $row['version'];
			}
		}
		
		$this->installed_version = $version;
		
		$q->free_result();
		*/
		
	}
	
	// --------------------------------------------------------------------
	

	
}

/* End of file settings.php */
/* Location: ./system/application/model/settings.php */