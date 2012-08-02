<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// 
class Buss_penalty1 extends Model
{
	function Buss_penalty1()
	{
		parent::Model();
	}
	
	function add_buss_penalty1($data)
	{
		$this->db->insert('buss_penalty1', $data);	
	}
	
	function update_buss_penalty1($data, $ses_id)
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
