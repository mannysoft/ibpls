<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Ctc_interet extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_ctc_interet($data = array())
	{
		$this->db->insert('ctc_interet', $data);
	}
	
	function update_ctc_interet($data = array(), $id = '')
	{
		$this->db->where('id', $id);
		$this->db->update('ctc_interet', $data);
	}
	
	function delete_ctc_interet($id = '')
	{
		$this->db->where('id', $id);
		$this->db->delete('ctc_interet');
	}
	
}
