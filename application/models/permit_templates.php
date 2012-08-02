<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Permit_templates extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_permit_templates($data = array())
	{
		$this->db->insert('permit_templates', $data);	
	}
	
	function update_permit_templates($data = array(), $tempid = '')
	{
		$this->db->where('tempid', $tempid);
		$this->db->update('permit_templates', $data);
	}
	
	function delete_permit_templates($tempid = '')
	{
		$this->db->where('tempid', $tempid);
		$this->db->delete('permit_templates');
	}

}
