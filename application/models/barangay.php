<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Barangay extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_barangay($barangay_id = '')
	{
		$data = array();
		
		if ($barangay_id != '')
		{
			$this->db->where('barangay_id', $barangay_id);
		}
		
		
		
		$q = $this->db->get('barangay');
		
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
	
	function add_barangay($data = array())
	{
		$this->db->insert('barangay', $data);
	}
	
	function update_barangay($data = array(), $barangay_id = '')
	{
		$this->db->where('barangay_id', $barangay_id);
		$this->db->update('barangay', $data);
	}
	
	function delete_barangay($barangay_id = '')
	{
		$this->db->where('barangay_id', $barangay_id);
		$this->db->delete('barangay');
	}
	

}
