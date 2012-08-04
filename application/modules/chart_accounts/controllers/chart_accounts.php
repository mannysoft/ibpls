<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Integrated Human Resource Management Information System
 *
 * An Application Software use by Government agencies for management
 * of employees Attendance, Leave Administration, Payroll, Personnel
 * Training, Service Records, Performance, Recruitment and more...
 *
 * @package		iHRMIS
 * @author		Manolito Isles
 * @copyright	Copyright (c) 2008 - 2012, Charliesoft
 * @license		http://charliesoft.net/hrmis/user_guide/license.html
 * @link		http://charliesoft.net
 * @since		Version 1.0
 * @filesource
 */

// ------------------------------------------------------------------------

/**
 * iHRMIS Conversion Table Class
 *
 * This class use for converting number of minutes late
 * to the corresponding equivalent to leave credits.
 *
 * @package		iHRMIS
 * @subpackage	Models
 * @category	Models
 * @author		Manolito Isles
 * @link		http://charliesoft.net/hrmis/user_guide/models/conversion_table.html
 */
class Chart_accounts extends MX_Controller {

	// --------------------------------------------------------------------
	
	function __construct()
    {
        parent::__construct();
		
		$this->load->model('options');
		
		$this->output->enable_profiler(TRUE);
    }  
	
	// --------------------------------------------------------------------
	
	function index()
	{
		$data['page_name'] = '<b>Chart of Accounts</b>';
		
		$data['msg'] = '';
		
		$this->load->library('pagination');
		
		$c = new Chart_accounts_m();
				
		//$c->order_by('name');
		
		$data['rows'] = $c->get();
		
		$data['page'] = $this->uri->segment(3);
				
		$data['main_content'] = 'index';
		
		$this->load->view('includes/template', $data);
	
	}
	
	// --------------------------------------------------------------------
	
	function save( $id = '' )
	{		
		$data['page_name'] 	= '<b>Chart of Accounts</b>';
		$data['legend'] 	= '<b>Add</b>';
		$data['focus_field'] 	= '';
		
		if ( $id != '' )
		{
			$data['legend'] 	= '<b>Edit</b>';
		}
		
		$data['msg'] = '';
		
		$b = new Business_tfo_m();
		
		$b->order_by('name');
		
		$tfos = $b->get();
		
		foreach ($tfos as $tfo)
		{
			$data['business_tfo_id_options'][$tfo->id] = $tfo->name;
		}
		
		$s = new Chart_accounts_m();
		
		$data['chart'] = $s->get_by_id( $id );
				
		
		if ( $this->input->post('op'))
		{
			$this->form_validation->set_rules('account_code', 'Account Code', 'required');
						
			if ($this->form_validation->run($this) == TRUE)
			{
				$s->business_tfo_id = $this->input->post('business_tfo_id');
				$s->account_code 	= $this->input->post('account_code');
				$s->account_type 	= $this->input->post('account_type');
				$s->save();
				
				redirect(base_url().'chart_accounts', 'refresh');
			}
		}
	
		$data['main_content'] = 'save';
		
		$this->load->view('includes/template', $data);	
	}
	
	// --------------------------------------------------------------------
	
	function delete( $id = '' )
	{
		$s = new Chart_accounts_m();
		
		$s->get_by_id( $id );
		
		$s->delete();
		
		redirect(base_url().'chart_accounts', 'refresh');
		
	}
}	

/* End of file groups.php */
/* Location: ./system/application/modules/groups/controllers/groups.php */