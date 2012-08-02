<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//
class Business_tax_fee_type extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_business_tax_fee_type($data = array())
	{
		$this->db->insert('business_tax_fee_type', $data);	
	}
	
	/*
	function update_buss_taxfeetype($data, $tfoid)
	{
		$this->db->where('tfoid', $tfoid);
		$this->db->update('buss_taxfeetype', $data);
	}
	
	function delete_buss_taxfeetype($tfoid)
	{
		$this->db->where('tfoid', $tfoid);
		$this->db->delete('buss_tfo');
	}
	*/
	function get_business_tax_fee_type($tax_fee_type_id = '')
	{
		$data = array();
		
		if ($tax_fee_type_id != '')
		{
			$this->db->where('tax_fee_type_id', $tax_fee_type_id);
		}
		
		$this->db->order_by('name');
		
		$q = $this->db->get('Business_tax_fee_type');
		
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
