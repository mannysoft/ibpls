<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Owner extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_owner($owner_id = '', $owner_tin_no = '')
	{
		$data = array();
		
		if ($owner_id != '')
		{
			$this->db->where('owner_id', $owner_id);
		}
		if ($owner_tin_no != '')
		{
			$this->db->where('owner_tin_no', $owner_tin_no);
		}
	
		
		$q = $this->db->get('owner');
		
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
	
	function add_owner($data = array())
	{
		$this->db->insert('owner', $data);
	}
	
	function update_owner($data = array(), $owner_id = '')
	{
		$this->db->where('owner_id', $owner_id);
		$this->db->update('owner', $data);
	}
	
	function delete_owner($owner_id)
	{
		$this->db->where('owner_id', $owner_id);
		$this->db->delete('owner');
	}
	
}
