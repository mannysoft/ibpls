<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// 
class Fees_paid extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_fees_paid($data = array())
	{
		$this->db->insert('fees_paid', $data);	
	}
	
	function update_fees_paid($data = array(), $fee_paid_id = '')
	{
		$this->db->where('fee_paid_id', $fee_paid_id);
		$this->db->update('fees_paid', $data);
	}
	
	function delete_fees_paid($fee_paid_id = '', $owner_id = '' )
	{
		if ($fee_paid_id != '')
		{
			$this->db->where('fee_paid_id', $fee_paid_id);
		}
		if ($owner_id != '')
		{
			$this->db->where('owner_id', $owner_id);
		}
		
		
		$this->db->delete('fees_paid');
	}
	
	function get_fees_paid( $fee_paid_id = '' )
	{
		$data = array();
		
		if ($fee_paid_id != '')
		{
			$this->db->where('fee_paid_id', $fee_paid_id);
		}
		
		$q = $this->db->get('fees_paid');
		
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
