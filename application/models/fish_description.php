<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fish_description extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_fish_description($fish_id = '')
	{
		$data = array();
		
		$this->db->where('fish_id', $fish_id);
		
		$q = $this->db->get('fish_description');
		
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
	
	function add_fish_description($data = array())
	{
		$this->db->insert('fish_description', $data);
	}
	
	function update_fish_description($data = array(), $fish_id = '')
	{
		$this->db->where('fish_id', $fish_id);
		$this->db->update('fish_description', $data);
	}
	
	function delete_fish_description($fish_id = '')
	{
		$this->db->where('fish_id', $fish_id);
		$this->db->delete('fish_description');
	}
	

}
