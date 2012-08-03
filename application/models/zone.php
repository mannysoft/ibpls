<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Zone extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_zone($data = array())
	{
		$this->db->insert('zone', $data);	
	}
	
	function update_zone($data = array(), $zone_id = '')
	{
		$this->db->where('zone_id', $zone_id);
		$this->db->update('zone', $data);
	}
	
	function delete_zone($zone_id = '')
	{
		$this->db->where('zone_id', $zone_id);
		$this->db->delete('zone');
	}
	function get_zone($zone_id = '')
	{
		$data = array();
		
		if ($zone_id != '')
		{
			$this->db->where('zone_id', $zone_id);
		}
		
		$q = $this->db->get('zone');
		
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
