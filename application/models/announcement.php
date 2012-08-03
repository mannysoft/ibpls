<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Announcement extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_annoucement($eaid, $announcements)
	{
		//searchcomp($bbo, $announcement)
		
		$data = array();
		
		$this->db->where('announcements', $announcements);
		$this->db->where('eaid', $eaid);
		
		$q = $this->db->get('announcement');
		
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
	
	function get_annoucements()
	{
		
		$data = array();
		
		$this->db->order_by('eaid', 'desc');
		
		$q = $this->db->get('announcement');
		
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
	
	function add_annoucement($data)
	{
		$this->db->insert('announcement', $data);
	}
	
	function update_annoucement($data, $eaid)
	{
		$this->db->where('eaid', $eaid);
		$this->db->update('announcement', $data);
	}
	
	function delete_annoucement($eaid)
	{
		$this->db->where('eaid', $eaid);
		$this->db->delete('announcement');
	}
	
	function search_annoucement($eaid, $announcement)
	{
		$data = array();
		
		$this->db->where('announcements', $announcement);
		$this->db->where('eaid', $eaid);
		
		$q = $this->db->get('announcement');
		
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
