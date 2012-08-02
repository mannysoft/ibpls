<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Boat_fee extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_boat_fee($data = array())
	{
		$this->db->insert('boat_fee', $data);	
	}
	
	function update_boat_fee($data = array(), $fee_id = '')
	{
		$this->db->where('fee_id', $fee_id);
		$this->db->update('boat_fee', $data);
	}
	
	function delete_boat_fee($fee_id = '')
	{
		$this->db->where('fee_id', $fee_id);
		$this->db->delete('boat_fee');
	}
	
	function search_boat_fee($boat_type = '', $range_lower = '', $range_higher = '', 
							 $transaction = '', $active = '')
	{
		$data = array();

		if ($boat_type != '')
		{
			$this->db->where('boat_type', $boat_type);
		}
		if ($transaction != '')
		{
			$this->db->where('transaction', $transaction);
		}
		
		
		$q = $this->db->get('boat_fee');
		
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
	
	function count_mtop_fees()
	{
		return $this->db->count_all_results('mtop_fees');
	}
	

}
