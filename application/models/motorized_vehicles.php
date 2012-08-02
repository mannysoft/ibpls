<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Motorized_vehicles extends Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function get_motorized_vehicles($motorized_operator_id = '', $permit_type = '',
									$retire = '', $motorized_motor_no = '',
									$motorized_chassis_no = '', $motorized_plate_no = '',
									$motorized_body_no = '', $lto_number = '', $cr_number = '')
	{
		$data = array();
		
		if ($motorized_operator_id != '')
		{
			$this->db->where('motorized_operator_id', $motorized_operator_id);
		}
		if ($permit_type != '')
		{
			$this->db->where('permit_type', $permit_type);
		}
		if ($retire != '')
		{
			$this->db->where('retire', $retire);
		}
		if ($motorized_motor_no != '')
		{
			$this->db->where('motorized_motor_no', $motorized_motor_no);
		}
		if ($motorized_chassis_no != '')
		{
			$this->db->where('motorized_chassis_no', $motorized_chassis_no);
		}
		if ($motorized_plate_no != '')
		{
			$this->db->where('motorized_plate_no', $motorized_plate_no);
		}
		if ($motorized_body_no != '')
		{
			$this->db->where('motorized_body_no', $motorized_body_no);
		}
		if ($lto_number != '')
		{
			$this->db->where('lto_number', $lto_number);
		}
		if ($cr_number != '')
		{
			$this->db->where('cr_number', $cr_number);
		}
		
		$q = $this->db->get('motorized_vehicles');
		
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
	
	function add_motorized_vehicles($data = array())
	{
		$this->db->insert('motorized_vehicles', $data);
	}
	
	function update_motorized_vehicles($data = array(), $motorized_motor_id = '', $motorized_operator_id = '',
									   $permit_type='',  $retire='', $transaction = '', 
									   $create_ts = '')
	{
		if ($motorized_motor_id != '')
		{
			$this->db->where('motorized_motor_id', $motorized_motor_id);
		}
		if ($motorized_operator_id != '')
		{
			$this->db->where('motorized_operator_id', $motorized_operator_id);
		}
		if ($permit_type != '')
		{
			$this->db->where('permit_type', $permit_type);
		}
		if ($retire != '')
		{
			$this->db->where('retire', $retire);
		}
		if ($transaction != '')
		{
			$this->db->where('transaction', $transaction);
		}
		
		$this->db->update('motorized_vehicles', $data);
	}
	
	function delete_motorized_vehicles($id = '')
	{
		if ($id != '')
		{
			$this->db->where('id', $id);
		}
		
		$this->db->delete('motorized_vehicles');
	}
	

}
