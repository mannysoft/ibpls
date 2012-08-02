<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tempbusnature extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_tempbusnature($owner_id, $business_id, $transaction, $year_now)
	{
		$data = array();
		
		$this->db->where('owner_id', $owner_id);
		$this->db->where('business_id', $business_id);
		$this->db->where('active', 1);
		$this->db->where('transaction', $transaction);
		$this->db->like('date_created', $year_now, 'after');
		
		$q = $this->db->get('tempbusnature');
		
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
	function add_tempbusnature($data = array())
	{
		$this->db->insert('tempbusnature', $data);
	}
	
	function update_tempbusnature($data = array(), $owner_id = '')
	{
		$this->db->where('owner_id', $owner_id);
		$this->db->update('tempbusnature', $data);
	}
	
	function delete_tempbusnature($owner_id)
	{
		$this->db->where('owner_id', $owner_id);
		$this->db->delete('tempbusnature');
	}
	
}
