<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class District extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_district($data)
	{
		$this->db->insert('district', $data);	
	}
	
	function update_district($data, $district_id)
	{
		$this->db->where('district_id', $district_id);
		$this->db->update('district', $data);
	}
	
	function delete_district($district_id)
	{
		$this->db->where('district_id', $district_id);
		$this->db->delete('district');
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
