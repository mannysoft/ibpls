<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Economic_area extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_economic_area($data = array())
	{
		$this->db->insert('economic_area', $data);	
	}
	
	function update_economic_area($data = array(), $economic_area_id = '')
	{
		$this->db->where('economic_area_id', $economic_area_id);
		$this->db->update('economic_area', $data);
	}
	
	function delete_economic_area($economic_area_id = '')
	{
		$this->db->where('economic_area_id', $economic_area_id);
		$this->db->delete('economic_area');
	}
	
	function get_economic_area($economic_area_id = '')
	{
		$data = array();
		
		$this->db->where('economic_area_id', $economic_area_id);
		
		$q = $this->db->get('economic_area');
		
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
