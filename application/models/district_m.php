<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class District_m extends Datamapper
{
	public $table = 'districts';
	
	function __construct()
	{
		parent::__construct();
	}
		
	function get_district($district_id = '')
	{
		$data = array();
		
		if ($district_id != '')
		{
			$this->db->where('district_id', $district_id);
		}
		
		$q = $this->db->get('district');
		
		if ($q->num_rows() > 0)
		{
			foreach ($q->result_array() as $row)
			{
				$data[] = $row;
			}
		}
	
		return $data;
		
		$q->free_result();
		
	}

}
