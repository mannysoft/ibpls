<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Business_tax_requirements_m extends Datamapper
{
	public $table = 'business_tax_requirements';
	
	function __construct()
	{
		parent::__construct();
	}
		
	function get_unique_tax_fee()
	{
		$data = array();
		
		
		$this->db->select('DISTINCT taxfeeid');
		$this->db->order_by('taxfeeid', 'DESC');
		
		$q = $this->db->get('business_tax_requirements');
		
		if ($q->num_rows() > 0)
		{
			foreach ($q->result_array() as $row)
			{
				$data[] = $row['taxfeeid'];
			}
		}
	
		return $data;
		
		$q->free_result();
	}
	

}
