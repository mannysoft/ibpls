<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Transaction_payment_or_details extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_payment_record($business_id, $owner_id)
	{
		$data = array('0');
		
		$this->db->where('trans_id', $owner_id);
		$this->db->where('payment_id', $business_id);
		
		$q = $this->db->get('transaction_payment_or_details');
		
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
