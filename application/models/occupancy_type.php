<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Occupancy_type extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_occupancy_type($data = array())
	{
		$this->db->insert('occupancy_type', $data);	
	}
	
	function update_occupancy_type($data = array(), $occupancy_type_code = '')
	{
		$this->db->where('occupancy_type_code', $occupancy_type_code);
		$this->db->update('occupancy_type', $data);
	}
	
	function delete_occupancy_type($occupancy_type_code = '')
	{
		$this->db->where('occupancy_type_code', $occupancy_type_code);
		$this->db->delete('occupancy_type');
	}
	function get_occupancy_type($occupancy_type_code = '')
	{
		$data = array();
		
		if ($occupancy_type_code != '')
		{
			$this->db->where('occupancy_type_code', $occupancy_type_code);
		}
		
		$q = $this->db->get('occupancy_type');
		
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
