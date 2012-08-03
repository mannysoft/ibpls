<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//business requirments
class Buss_requirements extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_buss_requirements($data)
	{
		$this->db->insert('buss_requirements', $data);	
	}
	
	function update_buss_requirements($data, $reqid)
	{
		$this->db->where('reqid', $reqid);
		$this->db->update('buss_requirements', $data);
	}
	
	function delete_buss_requirements($reqid = '')
	{
		if ($reqid != '')
		{
			$this->db->where('reqid', $reqid);
		}
		
		$this->db->delete('buss_requirements');
	}
	
	function get_buss_requirements($reqid = '', $reqdesc = '', $permit_type = '', 
								   $recstatus = '')
	{
		$data = array();
		
		if ($reqid != '')
		{
			$this->db->where('reqid', $reqid);
		}
		if ($reqdesc != '')
		{
			$this->db->where('reqdesc', $reqdesc);
		}
		if ($permit_type != '')
		{
			$this->db->where('permit_type', $permit_type);
		}
		if ($recstatus != '')
		{
			$this->db->where('recstatus', $recstatus);
		}
		
		$q = $this->db->get('buss_requirements');
		
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
