<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
// report signatories
class Report_signatories extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}
	
	function add_report_signatories($data)
	{
		$this->db->insert('report_signatories', $data);	
	}
	
	function update_report_signatories($data, $rs_id)
	{
		$this->db->where('rs_id', $rs_id);
		$this->db->update('report_signatories', $data);
	}
	
	function delete_report_signatories($rs_id)
	{
		$this->db->where('rs_id', $rs_id);
		$this->db->delete('report_signatories');
	}

}
