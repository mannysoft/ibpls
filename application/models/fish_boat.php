<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// 
class Fish_boat extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_fish_boat($data = array())
	{
		$this->db->insert('fish_boat', $data);	
	}
	
	function update_fish_boat($data = array(), $boat_id)
	{
		$this->db->where('boat_id', $boat_id);
		$this->db->update('fish_boat', $data);
	}
	
	function delete_fish_boat($boat_id)
	{
		$this->db->where('boat_id', $boat_id);
		$this->db->delete('fish_boat');
	}
	
	function get_fish_boat( $boat_id = '', $owner_id = '')
	{
		$data = array();
		
		if ($boat_id != '')
		{
			$this->db->where('boat_id', $boat_id);
		}
		if ($owner_id != '')
		{
			$this->db->where('owner_id', $owner_id);
		}
		
		$q = $this->db->get('fish_boat');
		
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
