<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Psic_table extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_psic_table($data = array())
	{
		$this->db->insert('psic_table', $data);	
	}
	
	function update_psic_table($data = array(), $psic_code)
	{
		$this->db->where('psic_code', $psic_code);
		$this->db->update('psic_table', $data);
	}
	
	function delete_psic_table($psic_code = '')
	{
		if ($psic_code != '')
		{
			$this->db->where('psic_code', $psic_code);
		}
		
		$this->db->delete('psic_table');
	}
	
	function get_psic_table($psiccode = '', $reqdesc = '', $permit_type = '')
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
		
		$q = $this->db->get('psic_table');
		
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
