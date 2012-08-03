<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Buss_taxrange extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function delete_buss_taxrange($taxfeeid = '')
	{
		if ($taxfeeid != '')
		{
			$this->db->where('taxfeeid', $taxfeeid);
		}
		
		$this->db->delete('buss_taxrange');
	}
	
	function update_buss_taxrange($data = array(), $taxfeeid = '', $rangeid = '')
	{
		if ($taxfeeid != '')
		{
			$this->db->where('taxfeeid', $taxfeeid);
		}
		if ($rangeid != '')
		{
			$this->db->where('rangeid', $rangeid);
		}
		
		$this->db->update('buss_taxrange', $data);
	}
	
	function get_tax_fee_id()
	{
		$data = array();
		
		$this->db->select('DISTINCT taxfeeid');
		$this->db->order_by('taxfeeid', 'DESC');
		
		$q = $this->db->get('buss_taxrange');
		
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
	
	function get_buss_taxrange($taxfeeid = '', $rangestatus = '')
	{
		$data = array();
		
		if ($taxfeeid != '')
		{
			$this->db->where('taxfeeid', $taxfeeid);
		}
		if ($rangestatus != '')
		{
			$this->db->where('rangestatus', $rangestatus);
		}
		
		$this->db->order_by('rangeid');
		
		$q = $this->db->get('buss_taxrange');
		
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
