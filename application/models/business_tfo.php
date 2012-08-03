<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//Tax, fee and other charges
class Business_tfo extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_business_tfo($data = array())
	{
		$this->db->insert('business_tfo', $data);	
	}
	
	function update_business_tfo($data = array(), $tfo_id = '')
	{
		$this->db->where('tfo_id', $tfo_id);
		$this->db->update('business_tfo', $data);
	}
	
	function delete_business_tfo($tfo_id = '')
	{
		$this->db->where('tfo_id', $tfo_id);
		$this->db->delete('business_tfo');
	}
	
	function get_business_tfo($tfo_id = '', $name = '', $indicator = '')
	{
		$data = array();
		
		if ($tfo_id != '')
		{
			$this->db->where('tfo_id', $tfo_id);
		}
		if ($name != '')
		{
			$this->db->where('name', $name);
		}
		if ($indicator != '')
		{
			$this->db->where('indicator', $indicator);
		}
		
		$this->db->order_by('name');
		
		$q = $this->db->get('business_tfo');
		
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
