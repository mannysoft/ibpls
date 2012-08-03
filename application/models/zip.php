<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Zip extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_zip($data = array())
	{
		$this->db->insert('zip', $data);	
	}
	
	function update_zip($data = array(), $zip_id = '')
	{
		$this->db->where('zip_id', $zip_id);
		$this->db->update('zip', $data);
	}
	
	function delete_zip($zip_id = '')
	{
		$this->db->where('zip_code', $zip_id);
		$this->db->delete('zip');
	}
	function get_zip($zip_id = '')
	{
		$data = array();
		
		if ($zip_id != '')
		{
			$this->db->where('zip_id', $zip_id);
		}
		
		
		
		$q = $this->db->get('zip');
		
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
