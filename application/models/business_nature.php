<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//masterlist of business nature
class Business_nature extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_business_nature($data = array())
	{
		$this->db->insert('business_nature', $data);
		
		return $this->db->insert_id();
	}
	
	function update_business_nature($data = array(), $nature_id)
	{
		$this->db->where('nature_id', $nature_id);
		$this->db->update('business_nature', $data);
	}
	
	function delete_business_nature($nature_id)
	{
		$this->db->where('nature_id', $nature_id);
		$this->db->delete('business_nature');
	}
	
	function get_business_nature($nature_id = '', $name = '', $status = '')
	{
		$data = array();
		
		if ($nature_id != '')
		{
			$this->db->where('nature_id', $nature_id);
		}
		
		if ($name != '')
		{
			$this->db->where('name', $name);
		}
		
		if ($status != '')
		{
			$this->db->where('status', $status);
		}
		
		$this->db->order_by('name');
		
		$q = $this->db->get('business_nature');
		
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
