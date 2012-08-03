<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Motorized_operator_permit extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_motorized_operator_permit($motorized_operator_permit_id = '')
	{
		$data = array();
		
		
		if ($motorized_operator_permit_id != '')
		{
			$this->db->where('motorized_operator_permit_id', $motorized_operator_permit_id);
		}
	
		$q = $this->db->get('motorized_operator_permit');
		
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
	
	function add_motorized_operator_permit($data = array())
	{
		$this->db->insert('motorized_operator_permit', $data);
	}
	
	function update_motorized_operator_permit($data = array(), $transaction = '')
	{
		
		if ($transaction != '')
		{
			$this->db->where('transaction', $transaction);
		}
		
		$this->db->update('motorized_operator_permit', $data);
	}
	
	function delete_motorized_operator_permit($motorized_operator_permit_id = '', 
											  $owner_id = '', $for_year = '', 
											  $transaction = '',
											  $motorized_operator_permit_application_date = '')
	{
		if ($motorized_operator_permit_id != '')
		{
			$this->db->where('motorized_operator_permit_id', $motorized_operator_permit_id);
		}
		if ($owner_id != '')
		{
			$this->db->where('owner_id', $owner_id);
		}
		if ($for_year != '')
		{
			$this->db->where('for_year', $for_year);
		}
		if ($transaction != '')
		{
			$this->db->where('transaction', $transaction);
		}
		if ($motorized_operator_permit_application_date != '')
		{
			$this->db->where('motorized_operator_permit_application_date', 
							  $motorized_operator_permit_application_date);
		}
		
		$this->db->delete('motorized_operator_permit');
	}
	

}
