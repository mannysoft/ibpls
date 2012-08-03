<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// 
class User_session extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_user_session($data)
	{
		$this->db->insert('user_session', $data);	
	}
	
	function update_user_session($data, $ses_id)
	{
		$this->db->where('ses_id', $ses_id);
		$this->db->update('user_session');
	}
	
	function delete_user_session($ses_id = '')
	{
		$this->db->where('ses_id', $ses_id);
		$this->db->delete('user_session');
	}
	
	function get_session($ip_add = '')
	{
		$data = array();
		
		$this->db->where('ip_add', $ip_add);
		$q = $this->db->get('user_session');
		
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
