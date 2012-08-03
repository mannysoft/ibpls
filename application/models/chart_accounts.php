<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//chart of accounts
class Chart_accounts extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_chart_accounts($data = array())
	{
		$this->db->insert('chart_accounts', $data);	
	}
	
	function update_chart_accounts($data = array(), $caid = '')
	{
		$this->db->where('caid', $caid);
		$this->db->update('chart_accounts', $data);
	}
	
	function delete_chart_accounts($caid = '')
	{
		$this->db->where('caid', $caid);
		$this->db->delete('chart_accounts');
	}
	
	function search_chart_accounts($caid = '', $accnt_code = '')
	{
		$data = array();
		
		
		if ($caid != '')
		{
			$this->db->where('caid', $caid);
		}
		
		if ($accnt_code != '')
		{
			$this->db->where('accnt_code', $accnt_code);
		}
		
		
		$q = $this->db->get('chart_accounts');
		
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
