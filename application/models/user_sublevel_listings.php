<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// 
class User_sublevel_listings extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_user_sublevel_listings($data)
	{
		$this->db->insert('user_sublevel_listings', $data);	
	}
	
	function update_user_sublevel_listings($data, $user_id)
	{
		$this->db->where('user_id', $user_id);
		$this->db->update('user_sublevel_listings', $data);
	}
	
	function delete_user_sublevel_listings($user_id)
	{
		$this->db->where('user_id', $user_id);
		$this->db->delete('user_sublevel_listings');
	}

}
