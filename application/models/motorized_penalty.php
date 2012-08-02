<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Motorized_penalty extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_motorized_penalty($permit_type = '')
	{
		$data = array();
		
		if ($permit_type != '')
		{
			$this->db->where('permit_type', $permit_type);
		}
		
		$q = $this->db->get('motorized_penalty');
		
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
	
	function add_motorized_penalty($data = array())
	{
		$this->db->insert('motorized_penalty', $data);
	}
	
	function update_motorized_penalty($data = array(), $id = '')
	{
		if ($id != '')
		{
			$this->db->where('id', $id);
		}
		
		$this->db->update('motorized_penalty', $data);
	}
	
	function delete_motorized_penalty($id = '')
	{
		if ($id != '')
		{
			$this->db->where('id', $id);
		}
		
		$this->db->delete('motorized_penalty');
	}
	

}
