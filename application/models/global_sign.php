<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//signatories
class Global_sign extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_global_sign($data)
	{
		$this->db->insert('global_sign', $data);	
	}
	
	function update_global_sign($data, $sign_id)
	{
		$this->db->where('sign_id', $sign_id);
		$this->db->update('global_sign', $data);
	}
	
	function delete_global_sign($sign_id)
	{
		$this->db->where('sign_id', $sign_id);
		$this->db->delete('global_sign');
	}

}
