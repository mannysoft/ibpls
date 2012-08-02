<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// 
class Occupational_permit extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_occupational_permit($data = array())
	{
		$this->db->insert('occupational_permit', $data);	
	}
	
	function update_occupational_permit($data = array(), $occ_permit_id = '', 
										$owner_id = '')
	{
		if ($occ_permit_id != '')
		{
			$this->db->where('occ_permit_id', $occ_permit_id);
		}
		if ($owner_id != '')
		{
			$this->db->where('owner_id', $owner_id);
		}
		
		$this->db->update('occupational_permit', $data);
	}
	
	function delete_occupational_permit($occ_permit_id = '')
	{
		$this->db->where('occ_permit_id', $occ_permit_id);
		$this->db->delete('occupational_permit');
	}
	
	function get_occupational_permit( $occ_permit_id = '' )
	{
		$data = array();
		
		if ($occ_permit_id != '')
		{
			$this->db->where('occ_permit_id', $occ_permit_id);
		}
		
		$q = $this->db->get('occupational_permit');
		
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
