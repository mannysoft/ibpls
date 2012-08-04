<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Permit_format extends MX_Controller {
	
	public $module = 'Permit Number Format';
	
	// --------------------------------------------------------------------
	
	function __construct()
    {
        parent::__construct();
				
		$this->output->enable_profiler(TRUE);
    }  
	
	function index()
	{
		$data['page_name'] = '<b>References -> '.$this->module.'</b>';
		
		$data['msg'] = '';
		
		$c = new Permit_format_m();
				
		$data['permit'] = $c->get();
		
		$data['main_content'] = 'permit_format/index';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>'.$this->module.'</b>';
		
		$data['msg'] = '';
		
		$i = new Permit_format_m();
		
		$data['permit'] = $i->get_by_id( $id );

		if ($this->input->post('op') == 1)
		{									
			$this->form_validation->set_rules('header', 'Header', 'required|max_length[30]');
			
			if ($this->form_validation->run() == TRUE)
			{
				
				$i->header 		= $this->input->post('header');
				$i->use_year 	= $this->input->post('use_year');
				$i->sequence 	= $this->input->post('sequence');
				$i->save();
				
				$this->session->set_flashdata('msg', $this->module.' saved!');
				
				redirect(base_url().'references/permit_format', 'refresh');
			}
		}
				
		$data['main_content'] = 'permit_format/save';
		
		$this->load->view('includes/template', $data);

	}

	// --------------------------------------------------------------------

	function delete($id = '')
	{
		$i = new Permit_format_m($id);
				
		//$i->delete();
		
		$this->session->set_flashdata('msg', $this->module.' Deleted!');
		
		redirect(base_url().'references/permit_format', 'refresh');
	}
	
	// --------------------------------------------------------------------
	
}

