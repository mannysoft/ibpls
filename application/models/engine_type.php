<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Engine_type extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_engine_type($engine_type_id = '')
	{
		$data = array();
		
		$this->db->where('engine_type_id', $engine_type_id);
		
		$q = $this->db->get('engine_type');
		
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
	
	function add_engine_type($data = array())
	{
		$this->db->insert('engine_type', $data);
	}
	
	function update_engine_type($data = array(), $engine_type_id = '')
	{
		$this->db->where('engine_type_id', $engine_type_id);
		$this->db->update('engine_type', $data);
	}
	
	function delete_engine_type($engine_type_id = '')
	{
		$this->db->where('engine_type_id', $engine_type_id);
		$this->db->delete('engine_type');
	}
	

}
