<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// 
class Activity_log extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_activity_log($data)
	{
		$this->db->insert('activity_log', $data);	
	}
	
	function update_activity_log($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('activity_log', $data);
	}
	
	function delete_activity_log($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('activity_log');
	}

}
