<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//
class Buss_complex extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_buss_complex($data = array())
	{
		$this->db->insert('buss_complex', $data);	
	}
	
	function update_buss_complex($data = array(), $compid = '')
	{
		$this->db->where('compid', $compid);
		$this->db->update('buss_complex', $data);
	}
	
	function delete_buss_complex($compid = '')
	{
		$this->db->where('compid', $compid);
		$this->db->delete('buss_complex');
	}

}
