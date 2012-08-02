<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Industry_sector extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_industry_sector($data = array())
	{
		$this->db->insert('industry_sector', $data);	
	}
	
	function update_industry_sector($data = array(), $industry_sector_code = '')
	{
		$this->db->where('industry_sector_code', $industry_sector_code);
		$this->db->update('industry_sector', $data);
	}
	
	function delete_industry_sector($industry_sector_code = '')
	{
		$this->db->where('industry_sector_code', $industry_sector_code);
		$this->db->delete('industry_sector');
	}
	function get_industry_sector($industry_sector_code = '')
	{
		$data = array();
		
		if ($industry_sector != '')
		{
			$this->db->where('industry_sector', $industry_sector);
		}
		
		$q = $this->db->get('industry_sector');
		
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
