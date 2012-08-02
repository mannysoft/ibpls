<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fee_exempt extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_fee_exempt($ex_id = '', $business_category_code = '', $tfoid = '')
	{
		$data = array();
		
		if ($ex_id != '')
		{
			$this->db->where('ex_id', $ex_id);
		}
		if ($business_category_code != '')
		{
			$this->db->where('business_category_code', $business_category_code);
		}
		if ($tfoid != '')
		{
			$this->db->where('tfoid', $tfoi);
		}
		
		
		$q = $this->db->get('fee_exempt');
		
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
	
	function add_fee_exempt($data = array())
	{
		$this->db->insert('fee_exempt', $data);
	}
	
	function update_fee_exempt($data = array(), $ex_id = '', $tfoid = '')
	{
		if ($ex_id != '')
		{
			$this->db->where('ex_id', $ex_id);
		}
		if ($tfoid != '')
		{
			$this->db->where('tfoid', $tfoid);
		}
		
		$this->db->update('fee_exempt', $data);
	}
	
	function delete_fee_exempt($ex_id = '', $business_category_code = '')
	{
		if ($ex_id != '')
		{
			$this->db->where('ex_id', $ex_id);
		}
		if ($business_category_code != '')
		{
			$this->db->where('business_category_code', $business_category_code);
		}
		
		$this->db->delete('fee_exempt');
	}
	

}
