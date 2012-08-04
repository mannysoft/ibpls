<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Lgu_m extends Datamapper
{
	public $table = 'lgu';
	
	function __construct($id = NULL)
	{
		parent::__construct($id);
	}
		
	function get_lgu($lgu_id = '')
	{
		$data = array();
		
		if ($lgu_id != '')
		{
			$this->db->where('lgu_id', $lgu_id);
		}
		
		$q = $this->db->get('lgu');
		
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
