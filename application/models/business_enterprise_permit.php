<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Business_enterprise_permit extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_business_id($owner_id)
	{
		$data = array('0');
		
		$this->db->select('business_id');
		$this->db->where('owner_id', $owner_id);
		
		$q = $this->db->get('business_enterprise_permit');
		
		if ($q->num_rows() > 0)
		{
			foreach ($q->result_array() as $row)
			{
				$data[] = $row['business_id'];
			}
		}
	
		return $data;
		
		$q->free_result();
		
	}
	
	function get_business_permit($owner_id, $business_id)
	{
		$data = array();
		
		
		$this->db->where('owner_id', $owner_id);
		$this->db->where('business_id', $business_id);
		
		$q = $this->db->get('business_enterprise_permit');
		
		if ($q->num_rows() > 0)
		{
			foreach ($q->result_array() as $row)
			{
				$data[] = $row['business_id'];
			}
		}
	
		return $data;
		
		$q->free_result();
		
	}
	
	function update_business_permit($data = array(), $business_permit_id = '')
	{
		$this->db->where('business_permit_id', $business_permit_id);
		$this->db->update('business_enterprise_permit');
	}
	
	function is_business_exists($owner_id = '', $business_id = '')
	{
		$is_business_exists = FALSE;
		
		
		$this->db->where('owner_id', $owner_id);
		$this->db->where('business_id', $business_id);
		
		$q = $this->db->get('business_enterprise_permit');
		
		if ($q->num_rows() > 0)
		{
			$is_business_exists = TRUE;
		}
	
		return $is_business_exists;
		
		$q->free_result();
		
	}
	
	function add_bussiness_permit($data = array())
	{
		$this->db->insert('business_enterprise_permit', $data);	
		
		return $this->db->insert_id();
	}
	
	function set_inactive($data)
	{
		$this->db->where('transaction', '');
		$this->db->update('business_enterprise_permit', $data);
	}
	
}
