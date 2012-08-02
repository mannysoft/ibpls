<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//business interest / surcharge
class Buss_penalty extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_buss_penalty($data)
	{
		$this->db->insert('buss_penalty', $data);	
	}
	
	function update_buss_penalty($data = array(), $id = '', $status = '')
	{
		if ($id != '')
		{
			$this->db->where('id', $id);
		}
		if ($status != '')
		{
			$this->db->where('status', $status);
		}
		
		$this->db->update('buss_penalty', $data);
	}
	
	function delete_buss_penalty($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('buss_penalty');
	}
	
	function get_buss_penalty($optsurcharge = '')
	{
		$data = array();
		
		$this->db->where('optsurcharge', $optsurcharge);
		
		$q = $this->db->get('buss_penalty');
		
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
