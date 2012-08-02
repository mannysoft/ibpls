<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Mtop_fees extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_mtop_fees($data = array())
	{
		$this->db->insert('mtop_fees', $data);	
	}
	
	function update_mtop_fees($data = array(), $fee_id = '')
	{
		$this->db->where('fee_id', $fee_id);
		$this->db->update('mtop_fees', $data);
	}
	
	function delete_mtop_fees($fee_id = '')
	{
		$this->db->where('fee_id', $fee_id);
		$this->db->delete('mtop_fees');
	}
	
	function search_mtop_fees($fee_desc = '', $order_by = 'fee_desc')
	{
		$data = array();

		$this->db->like('fee_desc', $fee_desc, 'right');
		$this->db->order_by($order_by);
		
		$q = $this->db->get('mtop_fees');
		
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
