<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Vehicle_transfer extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_vehicle_transfer($trans_id = '')
	{
		$data = array();
		
		if ($trans_id != '')
		{
			$this->db->where('trans_id', $trans_id);
		}
		
		$q = $this->db->get('vehicle_transfer');
		
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
	
	function add_vehicle_transfer($data = array())
	{
		$this->db->insert('vehicle_transfer', $data);
	}
	
	function update_vehicle_transfer($data = array(), $trans_id = '')
	{
		if ($trans_id != '')
		{
			$this->db->where('trans_id', trans_id);
		}
		
		
		$this->db->update('vehicle_transfer', $data);
	}
	
	function delete_vehicle_transfer($trans_id = '')
	{
		if ($trans_id != '')
		{
			$this->db->where('trans_id', $trans_id);
		}
		
		$this->db->delete('vehicle_transfer');
	}
	

}
