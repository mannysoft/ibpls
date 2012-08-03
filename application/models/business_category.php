<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//
class Business_category extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_business_category($data = array())
	{
		$this->db->insert('business_category', $data);	
	}
	
	function update_business_category($data = array(), $business_category_code = '')
	{
		$this->db->where('business_category_code', $business_category_code);
		$this->db->update('business_category', $data);
	}
	
	function delete_business_category($business_category_code = '')
	{
		$this->db->where('business_category_code', $business_category_code);
		$this->db->delete('business_category');
	}
	
	function get_business_category($business_category_code = '')
	{
		$data = array();
		
		$this->db->where('business_category', $business_category);
		
		$q = $this->db->get('business_category');
		
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
