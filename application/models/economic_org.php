<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Economic_org extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_economic_org($data = array())
	{
		$this->db->insert('economic_org', $data);	
	}
	
	function update_economic_org($data = array(), $economic_org_id = '')
	{
		$this->db->where('economic_org_id', $economic_org_id);
		$this->db->update('economic_org', $data);
	}
	
	function delete_economic_org($economic_org_id = '')
	{
		$this->db->where('economic_org_id', $economic_org_id);
		$this->db->delete('economic_org');
	}
	function get_economic_org($economic_org_id = '')
	{
		$data = array();
		
		$this->db->where('economic_org', $economic_org_id);
		
		$q = $this->db->get('economic_org');
		
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
