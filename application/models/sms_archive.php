<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sms_archive extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_sms_archive($archive_id = '')
	{
		$data = array();
		
		if ($archive_id != '')
		{
			$this->db->where('archive_id', $archive_id);
		}
		
		$q = $this->db->get('sms_archive');
		
		if ($q->num_rows() > 0)
		{
			foreach ($q->result_array() as $row)
			{
				$data = $row;
			}
		}
	
		return $data;
		
		$q->free_result();
		
	}
	
	function add_sms_archive($data = array())
	{
		$this->db->insert('sms_archive', $data);
	}
	
	function update_sms_archive($data = array(), $archive_id)
	{
		$this->db->where('archive_id', $archive_id);
		$this->db->update('sms_archive', $data);
	}
	
	function delete_sms_archive($archive_id = '')
	{
		$this->db->where('archive_id', $archive_id);
		$this->db->delete('sms_archive');
	}
	
}
