<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Province extends CI_Model
{
	var $order_by = ''; 
	
	function __construct()
	{
		parent::__construct();
	}
	
	function add_province($data = array())
	{
		$this->db->insert('province', $data);	
	}
	
	function update_province($data, $province_id = '')
	{
		$this->db->where('province_id', $province_id);
		$this->db->update('province', $data);
	}
	
	function delete_province($province_id = '')
	{
		$this->db->where('province_id', $province_id);
		$this->db->delete('province');
	}
	
	function get_province($province_id = '', $blgf_code = '')
	{
		
		$data = array();
		
		if ($province_id != '')
		{
			$this->db->where('province_id', $province_id);
		}
		
		if ($blgf_code != '')
		{
			$this->db->where('blgf_code', $blgf_code);
		}
		
		$this->db->order_by('name');
		
		$q = $this->db->get('province');
		
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
