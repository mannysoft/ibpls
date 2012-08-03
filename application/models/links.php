<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//
class Links extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_links($data)
	{
		$this->db->insert('links', $data);	
	}
	
	function update_links($data, $linkid)
	{
		$this->db->where('linkid', $linkid);
		$this->db->update('links', $data);
	}
	
	function delete_links($linkid)
	{
		$this->db->where('linkid', $linkid);
		$this->db->delete('links');
	}
	
	function get_links($linkid = '', $link = '', $order_by = '', $ascdesc = '')
	{
		$this->db->order_by('linkid');
		
		if ($linkid != '')
		{
			$this->db->where('linkid', $linkid);
		}
		
		if ($link != '')
		{
			$this->db->where('link', $link);
		}
		
		if ($order_by != '')
		{
			$this->db->order_by($order_by, $ascdesc);
		}
		
		$q = $this->db->get('links');
		
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
	
	function count_links()
	{
		return $this->db->count_all_results('links');
	}

}
