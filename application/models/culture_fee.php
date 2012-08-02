<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Culture_fee extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_culture_fee($data = array())
	{
		$this->db->insert('culture_fee', $data);	
	}
	
	function update_culture_fee($data = array(), $culture_id = '', $transaction = '')
	{
		if ($culture_id != '')
		{
			$this->db->where('culture_id', $culture_id);
		}
		
		if ($transaction != '')
		{
			$this->db->where('transaction', $transaction);
		}
		
		$this->db->update('culture_fee', $data);
	}
	
	function delete_culture_fee($culture_id = '')
	{
		$this->db->where('culture_id', $culture_id);
		$this->db->delete('culture_fee');
	}
	
	function search_culture_fee($culture_id = '', $culture_type = '', $transaction = '')
	{
		$data = array();

		if ($culture_id != '')
		{
			$this->db->where('culture_id', $culture_id);
		}
		
		if ($culture_type != '')
		{
			$this->db->where('culture_type', $culture_type);
		}
		
		if ($transaction != '')
		{
			$this->db->where('transaction', $transaction);
		}
		
		
		$q = $this->db->get('culture_fee');
		
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
