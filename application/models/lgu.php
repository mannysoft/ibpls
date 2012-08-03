<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Lgu extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_lgu($data = array())
	{
		$this->db->insert('lgu', $data);	
	}
	
	function update_lgu($data = array(), $lgu_id = '')
	{
		$this->db->where('lgu_id', $lgu_id);
		$this->db->update('lgu', $data);
	}
	
	function delete_lgu($lgu_id = '')
	{
		$this->db->where('lgu_id', $lgu_id);
		$this->db->delete('lgu');
	}
	
	function get_lgu($lgu_id = '')
	{
		$data = array();
		
		if ($lgu_id != '')
		{
			$this->db->where('lgu_id', $lgu_id);
		}
		
		$q = $this->db->get('lgu');
		
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
