<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Business_tax_requirements extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_business_tax_requirements($nature_id = '', $tfo_id = '', $taxfeeid = '', 
								  $taxfeeind = '', $taxtype= '', $taxfeeoption = '',
								  $taxfeemode = '')
	{
		$data = array();
		
		if ($nature_id != '')
		{
			$this->db->where('nature_id', $nature_id);
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
		
		$q = $this->db->get('business_tax_requirements');
		
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
	
	function add_business_tax_requirements($data)
	{
		$this->db->insert('business_tax_requirements', $data);
	}
	
	function update_business_tax_requirements($data = array(), $natureid = '', $tfo_id = '', $taxfeeid = '')
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
		
		$this->db->update('business_tax_requirements', $data);
	}
	
	function delete_business_tax_requirements($natureid = '', $tfo_id = '', $taxfeeid = '')
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
		
		$this->db->delete('business_tax_requirements');
	}
	
	function delete_all()
	{
		$this->db->delete('business_tax_requirements');
	}
	
	function get_unique_tax_fee()
	{
		$data = array();
		
		
		$this->db->select('DISTINCT taxfeeid');
		$this->db->order_by('taxfeeid', 'DESC');
		
		$q = $this->db->get('business_tax_requirements');
		
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
