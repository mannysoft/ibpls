<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sms_send extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_sms_send($smsid = '')
	{
		$data = array();
		
		if ($smsid != '')
		{
			$this->db->where('smsid', $smsid);
		}
		
		$q = $this->db->get('sms_send');
		
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
	
	function add_sms_send($data = array())
	{
		$this->db->insert('sms_send', $data);
	}
	
	function update_sms_send($data = array(), $smsid)
	{
		$this->db->where('smsid', $smsid);
		$this->db->update('sms_send', $data);
	}
	
	function delete_sms_send($smsid = '')
	{
		$this->db->where('smsid', $smsid);
		$this->db->delete('sms_send');
	}
	
}
