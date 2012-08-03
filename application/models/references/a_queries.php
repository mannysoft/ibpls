<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//Queries with multiple table
class A_queries extends Model
{
	function A_queries()
	{
		parent::Model();
	}
	
	
	function search_business($owner_last_name='', $owner_first_name='', $owner_middle_name='', $transaction ='' )
	{
		$data = array();
		
		$this->db->from(
					'ebpls_province a, 
					 ebpls_buss_preference b'
					 );
		
		
		$this->db->select('
					DISTINCT(b.owner_id), 
					a.owner_last_name, 
					a.owner_first_name, 
					a.owner_middle_name, 
					b.application_date, 
					b.transaction, 
					b.released, 
					b.paid,
					b.business_permit_code, 
					c.business_name,
					c.business_branch,
					c.business_id'
					
					);
					
		$this->db->like('a.owner_last_name', $owner_last_name);
		$this->db->like('a.owner_first_name', $owner_first_name);
		$this->db->like('a.owner_middle_name', $owner_middle_name);
		$this->db->where('a.owner_id = b.owner_id');
		
		$this->db->like('b.transaction', $transaction);
		$this->db->where('b.active', 1);
		
		$this->db->where('c.retire', 0);
		$this->db->where('c.business_id = b.business_id');
		
		$q = $this->db->get();
		
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
	
	//this query is from includes/business_search.php line 41
	function search_dispproved_business($owner_last_name='', $owner_first_name='', $owner_middle_name='', $transaction ='' )
	{
		$data = array();
		
		$this->db->from(
					'owner a, 
					 business_enterprise_permit b, 
					 business_enterprise c,
					 buss_approve d'
					 );
		
		
		$this->db->select('
					DISTINCT(b.owner_id), 
					a.owner_last_name, 
					a.owner_first_name, 
					a.owner_middle_name, 
					b.application_date, 
					b.business_permit_code,
					b.transaction, 
					b.released, 
					b.paid,
					b.business_permit_code, 
					c.business_name,
					c.business_branch,
					c.business_id,
					d.dec_comment'
					
					);
					
		$this->db->like('a.owner_last_name', $owner_last_name);
		$this->db->like('a.owner_first_name', $owner_first_name);
		$this->db->like('a.owner_middle_name', $owner_middle_name);
		$this->db->where('a.owner_id = b.owner_id');
		
		$this->db->like('b.transaction', $transaction);
		$this->db->where('b.active', 1);
		$this->db->where('b.owner_id = d.owner_id');
		$this->db->where('b.business_id = d.business_id');
		
		$this->db->where('c.retire', 0);
		$this->db->where('c.business_id = b.business_id');
		
		$this->db->where('d.decision', 0);
		
		$q = $this->db->get();
		
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
	
}
