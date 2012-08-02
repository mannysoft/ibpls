<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Buss_taxfeeother extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_buss_taxfeeother($natureid = '', $tfo_id = '', $taxfeeid = '', 
								  $taxfeeind = '', $taxtype= '', $taxfeeoption = '',
								  $taxfeemode = '')
	{
		$data = array();
		
		if ($natureid != '')
		{
			$this->db->where('natureid', $natureid);
		}
		if ($tfo_id != '')
		{
			$this->db->where('tfo_id', $tfo_id);
		}
		if ($taxfeeid != '')
		{
			$this->db->where('taxfeeid', $taxfeeid);
		}
		
		if ($taxfeeind != '')
		{
			$this->db->where('taxfeeind', $taxfeeind);
		}
		if ($taxtype != '')
		{
			$this->db->where('taxtype', $taxtype);
		}
		if ($taxfeeoption != '')
		{
			$this->db->where('taxfeeoption', $taxfeeoption);
		}
		
		$q = $this->db->get('buss_taxfeeother');
		
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
	
	function add_buss_taxfeeother($data)
	{
		$this->db->insert('buss_taxfeeother', $data);
	}
	
	function update_buss_penalty($data = array(), $natureid = '', $tfo_id = '', $taxfeeid = '')
	{
		if ($natureid != '')
		{
			$this->db->where('natureid', $natureid);
		}
		if ($tfo_id != '')
		{
			$this->db->where('tfo_id', $tfo_id);
		}
		if ($taxfeeid != '')
		{
			$this->db->where('taxfeeid', $taxfeeid);
		}
		
		$this->db->update('buss_taxfeeother', $data);
	}
	
	function delete_buss_taxfeeother($natureid = '', $tfo_id = '', $taxfeeid = '')
	{
		if ($natureid != '')
		{
			$this->db->where('natureid', $natureid);
		}
		if ($tfo_id != '')
		{
			$this->db->where('tfo_id', $tfo_id);
		}
		if ($taxfeeid != '')
		{
			$this->db->where('taxfeeid', $taxfeeid);
		}
		
		$this->db->delete('buss_taxfeeother');
	}
	
	function delete_all()
	{
		$this->db->delete('buss_taxfeeother');
	}
	
	function get_unique_tax_fee()
	{
		$data = array();
		
		
		$this->db->select('DISTINCT taxfeeid');
		$this->db->order_by('taxfeeid', 'DESC');
		
		$q = $this->db->get('buss_taxfeeother');
		
		if ($q->num_rows() > 0)
		{
			foreach ($q->result_array() as $row)
			{
				$data[] = $row['taxfeeid'];
			}
		}
	
		return $data;
		
		$q->free_result();
	}
	

}
