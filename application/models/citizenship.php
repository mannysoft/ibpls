<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Citizenship extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_citizenship($data = array())
	{
		$this->db->insert('citizenship', $data);
	}
	
	function update_citizenship($data = array(), $cit_id = '')
	{
		$this->db->where('cit_id', $cit_id);
		$this->db->update('citizenship', $data);
	}
	
	function delete_citizenship($cit_id = '')
	{
		$this->db->where('cit_id', $cit_id);
		$this->db->delete('citizenship');
	}
	function get_citizenship($cit_id = '')
	{
		$data = array();
		
		$this->db->where('cit_id', $cit_id);
		
		$q = $this->db->get('citizenship');
		
		if ($q->num_rows() > 0)
		{
			foreach ($q->result_array() as $row)
			{
				$data = $row;
			}
		}
	
		return $data;
		
		$q->free_result();
		
	}
	
}
