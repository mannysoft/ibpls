<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Business_enterprise extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_business_by_name($business_name, $business_branch)
	{
		$data = array();
		
		$this->db->like('business_name', $business_name);
		$this->db->like('business_branch', $business_branch);
		$this->db->where('retire', 0);
		$this->db->where('blacklist !=', 1);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function get_business_by_ctc($business_name, $business_branch)
	{
		$data = array();
		
		$this->db->like('business_name', $business_name);
		$this->db->like('business_branch', $business_branch);
		$this->db->where('owner_id', 0);
		$this->db->where('business_update_by', 'ONLINE');
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function get_business_by_online($business_name, $business_branch, $owner_id)
	{
		$data = array();
		
		$business_ids = array();
		
		$business_ids = $this->Business_enterprise_permit->get_business_id($owner_id);
		
		$this->db->like('business_name', $business_name);
		$this->db->like('business_branch', $business_branch);
		$this->db->where('owner_id', $owner_id);
		$this->db->where('business_update_by', 'ONLINE');
		$this->db->where_not_in('business_id', $business_ids);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function verify_business($business_name, $business_branch, $business_id)
	{
		$data = array();
	
		$this->db->where('business_name', $business_name);
		$this->db->where('business_id !=', $business_id);
		$this->db->where('business_branch', $business_branch);
		$this->db->where('blacklist !=', 1);
		$this->db->where('business_branch !=', 'NONE');
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function verify_business_no_branch($business_name, $business_id)
	{
		$data = array();
	
		$this->db->where('business_name', $business_name);
		$this->db->where('business_id !=', $business_id);
		$this->db->where('blacklist !=', 1);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function verify_nso_no($business_id, $business_nso_assigned_no)
	{
		$data = array();
	
		$this->db->where('business_id !=', $business_id);
		$this->db->where('business_nso_assigned_no', $business_nso_assigned_no);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function verify_nso_id($business_id, $business_nso_estab_id)
	{
		$data = array();
	
		$this->db->where('business_id !=', $business_id);
		$this->db->where('business_nso_estab_id', $business_nso_estab_id);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function verify_acr($business_id, $business_dot_acr_no)
	{
		$data = array();
	
		$this->db->where('business_id !=', $business_id);
		$this->db->where('business_dot_acr_no', $business_dot_acr_no);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function verify_dti_reg($business_id, $business_dti_reg_no)
	{
		$data = array();
	
		$this->db->where('business_id !=', $business_id);
		$this->db->where('business_dti_reg_no', $business_dti_reg_no);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function verify_sec_no($business_id, $business_sec_reg_no)
	{
		$data = array();
	
		$this->db->where('business_id !=', $business_id);
		$this->db->where('business_sec_reg_no', $business_sec_reg_no);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function verify_tin($business_id, $business_tin_reg_no)
	{
		$data = array();
	
		$this->db->where('business_id !=', $business_id);
		$this->db->where('business_tin_reg_no', $business_tin_reg_no);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function get_business_by_id($business_id)
	{
		$data = array();
	
		$this->db->where('business_id', $business_id);
		
		$q = $this->db->get('business_enterprise');
		
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
	
	function update_business_enterprise($data = array(), $owner_id = '', 
										$business_id = '')
	{
		$data = array();
		
		$this->db->where('owner_id', $owner_id);
		$this->db->where('business_id', $business_id);
		
		$this->db->update('business_enterprise', $data);
		
	}
	
	function count_business()
	{
		return  $this->db->count_all('business_enterprise');	
	}
	
	//get building(not blank)
	function get_buildings()
	{
		$data = array();
	
		$this->db->where('business_building_name !=', '');
		
		$q = $this->db->get('business_enterprise');
		
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
