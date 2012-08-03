<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Lot_pin extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_lot_pin($data = array())
	{
		$this->db->insert('lot_pin', $data);	
	}
	
	function update_lot_pin($data = array(), $pin_id = '')
	{
		$this->db->where('pin_id', $pin_id);
		$this->db->update('lot_pin', $data);
	}
	
	function delete_lot_pin($pin_id = '')
	{
		$this->db->where('pin_id', $pin_id);
		$this->db->delete('lot_pin');
	}
	
	function get_lot_pin($pin_id = '', $lotpin = '')
	{
		
		if ($pin_id != '')
		{
			$this->db->where('pin_id', $pin_id);
		}
		
		if ($lotpin != '')
		{
			$this->db->where('lotpin', $lotpin);
		}
		
		$q = $this->db->get('lot_pin');
		
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
