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
class Requirements extends MX_Controller {

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
		$data['page_name'] = '<b>Requirements</b>';
		
		$data['msg'] = '';
				
		$b = new Business_requirements_m();
				
		$b->order_by('description');
		
		$data['rows'] = $b->get();
		
		$data['page'] = $this->uri->segment(3);
				
		$data['main_content'] = 'index';
		
		$this->load->view('includes/template', $data);
	
	}
	
	// --------------------------------------------------------------------
	
	function save( $id = '' )
	{		
		$data['page_name'] 	= '<b>Requirements</b>';
		$data['legend'] 	= '<b>Add</b>';
		$data['focus_field'] 	= '';
		
		if ( $id != '' )
		{
			$data['legend'] 	= '<b>Edit</b>';
		}
		
		$data['msg'] = '';
				
		$s = new Business_requirements_m();
		
		$data['requirement'] = $s->get_by_id( $id );
				
		
		if ( $this->input->post('op'))
		{
			$this->form_validation->set_rules('description', 'Description', 'required');
						
			if ($this->form_validation->run($this) == TRUE)
			{
				$s->description = $this->input->post('description');
				$s->required 	= $this->input->post('required');
				$s->permit_type = $this->input->post('permit_type');
				$s->save();
				
				redirect(base_url().'requirements', 'refresh');
			}
		}
	
		$data['main_content'] = 'save';
		
		$this->load->view('includes/template', $data);	
	}
	
	// --------------------------------------------------------------------
	
	function delete( $id = '' )
	{
		$s = new Business_requirements_m();
		
		$s->get_by_id( $id );
		
		$s->delete();
		
		redirect(base_url().'requirements', 'refresh');
		
	}
}	

/* End of file groups.php */
/* Location: ./system/application/modules/groups/controllers/groups.php */