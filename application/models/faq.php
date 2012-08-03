<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// 
class Faq extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_faq($data)
	{
		$this->db->insert('faq', $data);	
	}
	
	function update_faq($data, $faqid)
	{
		$this->db->where('faqid', $faqid);
		$this->db->update('faq', $data);
	}
	
	function delete_faq($faqid)
	{
		$this->db->where('faqid', $faqid);
		$this->db->delete('faq');
	}
	
	function get_faq( $faqid = '', $faq_question = '' )
	{
		$data = array();
		
		if ($faqid != '')
		{
			$this->db->where('faqid', $faqid);
		}
		
		if ($faq_question != '')
		{
			$this->db->where('faq_question', $faq_question);
		}
		
		$this->db->order_by('faqid');
		$q = $this->db->get('faq');
		
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
