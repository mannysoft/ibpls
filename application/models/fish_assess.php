<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Fish_assess extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_fish_assess($data = array())
	{
		$this->db->insert('fish_assess', $data);	
	}
	
	function update_fish_assess($data = array(), $ass_id = '')
	{
		$this->db->where('ass_id', $ass_id);
		$this->db->update('fish_assess', $data);
	}
	
	function delete_fish_assess($ass_id = '')
	{
		$this->db->where('ass_id', $ass_id);
		$this->db->delete('fish_assess');
	}
	
	function search_fish_assess($culture_id = '', $transaction = '')
	{
		$data = array();

		if ($culture_id != '')
		{
			$this->db->where('culture_id', $culture_id);
		}
		if ($transaction != '')
		{
			$this->db->where('transaction', $transaction);
		}
		
		
		$q = $this->db->get('fish_assess');
		
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
