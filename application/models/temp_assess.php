<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Temp_assess extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_business_assess($owner_id, $business_id)
	{
		$data = array();
		
		$this->db->where('owner_id', $owner_id);
		$this->db->where('business_id', $business_id);
		
		$q = $this->db->get('temp_assess');
		
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
