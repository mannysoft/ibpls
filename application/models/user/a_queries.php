<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//Queries with multiple table
class A_queries extends Model
{
	function A_queries()
	{
		parent::Model();
	}
	
	function get_sublevel_listings($user_id = '', $username = '')
	{
		$data = array();
		
		$this->db->from(
					'user_sublevel_listings a, 
					 user b'
					 );
		
		
		$this->db->select('a.*');
		
		if ($user_id != '')
		{
			$this->db->where('b.id', $user_id);
		}
		if ($username != '')
		{
			$this->db->where('b.username', $username);
		}
					
		
		$this->db->where('a.user_id = b.id');
		
		$this->db->order_by('a.sublevel_id');
		
		$q = $this->db->get();
		
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
