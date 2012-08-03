<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//
class Havereq extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_havereq($data)
	{
		$this->db->insert('havereq', $data);	
	}
	
	/*
	function update_buss_taxfeetype($data, $tfoid)
	{
		$this->db->where('tfoid', $tfoid);
		$this->db->update('buss_taxfeetype', $data);
	}
	
	function delete_buss_taxfeetype($tfoid)
	{
		$this->db->where('tfoid', $tfoid);
		$this->db->delete('buss_tfo');
	}
	*/
	function get_havereq($taxfeetype = '')
	{
		$data = array();
		
		if ($taxfeetype != '')
		{
			$this->db->where('taxfeetype', $taxfeetype);
		}
		
		$q = $this->db->get('havereq');
		
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
	
	function count_havereq($reqid)
	{
		$this->db->where('reqid', $reqid);
		return $this->db->count_all_results('havereq');
	}
	
	

}
