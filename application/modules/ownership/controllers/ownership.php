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
class Ownership extends MX_Controller {

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
		$data['page_name'] = '<b>Ownership Type</b>';
		
		$data['msg'] = '';
				
		$b = new Ownership_type_m();
				
		$b->order_by('description');
		
		$data['rows'] = $b->get();
		
		$data['page'] = $this->uri->segment(3);
				
		$data['main_content'] = 'index';
		
		$this->load->view('includes/template', $data);
	
	}
	
	// --------------------------------------------------------------------
	
	function save( $id = '' )
	{		
		$data['page_name'] 	= '<b>Ownership Type</b>';
		$data['legend'] 	= '<b>Add</b>';
		$data['focus_field'] 	= '';
		
		if ( $id != '' )
		{
			$data['legend'] 	= '<b>Edit</b>';
		}
		
		$b = new Business_tfo_m();
		
		$b->order_by('name');
		
		$data['tfos'] = $b->get();
		
		
		
		
		$data['msg'] = '';
				
		$s = new Ownership_type_m();
		
		$data['owner'] = $s->get_by_id( $id );
		
		
		
		$e = new Fee_exemption_m();
		
		$data['exemptions'] = $e->get_by_ownership_type_id($id); 
																									
		$exemptions = array();
		
		foreach ($data['exemptions'] as $e)
		{
			$exemptions[] = $e->business_tfo_id;	
		}
		
		$data['exemptions'] = $exemptions;								
				
		
		if ( $this->input->post('op'))
		{
			$this->form_validation->set_rules('description', 'Description', 'required');
						
			if ($this->form_validation->run($this) == TRUE)
			{	
				$s->code 			= $this->input->post('code');
				$s->description 	= $this->input->post('description');
				$s->tax_exemption 	= $this->input->post('tax_exemption');
				$s->save();
				
				// Add exeptions
				$tfos = $this->input->post('tfos');
				
				$f = new Fee_exemption_m();
				$f->where('ownership_type_id', $s->id);
				$f->get();
				$f->delete_all(); // I will delete all first
				
				foreach ($tfos as $tfo)
				{
					$f = new Fee_exemption_m();
					
					$f->ownership_type_id 	= $s->id;
					$f->business_tfo_id 	= $tfo;
					$f->save();
				}
				
				
				redirect(base_url().'ownership', 'refresh');
			}
		}
	
		$data['main_content'] = 'save';
		
		$this->load->view('includes/template', $data);	
	}
	
	// --------------------------------------------------------------------
	
	function delete( $id = '' )
	{
		$s = new Ownership_type_m($id);
				
		$s->delete();
		
		redirect(base_url().'ownership', 'refresh');
		
	}
}	

/* End of file groups.php */
/* Location: ./system/application/modules/groups/controllers/groups.php */