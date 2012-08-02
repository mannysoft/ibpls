<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Culture_range extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_culture_range($data = array())
	{
		$this->db->insert('culture_range', $data);	
	}
	
	function update_culture_range($data = array(), $fee_id = '')
	{
		$this->db->where('fee_id', $fee_id);
		$this->db->update('culture_range', $data);
	}
	
	function delete_culture_range($fee_id = '')
	{
		$this->db->where('fee_id', $fee_id);
		$this->db->delete('culture_range');
	}
	
	function search_culture_range($culture_id = '', $range_lower = '', $range_higher = '')
	{
		$data = array();

		if ($culture_id != '')
		{
			$this->db->where('culture_id', $culture_id);
		}
	
		$q = $this->db->get('culture_range');
		
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
