<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Citizenship extends MX_Controller {
	
	public $module = 'Citizenship';
	
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
		
		$c = new Citizenship_m();
		
		$c->order_by('description');
		
		$data['sectors'] = $c->get();
		
		$data['main_content'] = 'citizenship/index';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>'.$this->module.'</b>';
		
		$data['msg'] = '';
		
		$i = new Citizenship_m();
		
		$data['sector'] = $i->get_by_id( $id );

		if ($this->input->post('op') == 1)
		{									
			$this->form_validation->set_rules('code', 'Code', 'required|max_length[30]');
			$this->form_validation->set_rules('description', 'Description', 'required');
			
			if ($this->form_validation->run() == TRUE)
			{
				
				$i->code 		= $this->input->post('code');
				$i->description = $this->input->post('description');
				$i->save();
				
				$this->session->set_flashdata('msg', $this->module.' saved!');
				
				redirect(base_url().'references/citizenship', 'refresh');
			}
		}
				
		$data['main_content'] = 'citizenship/save';
		
		$this->load->view('includes/template', $data);

	}

	// --------------------------------------------------------------------

	function delete($id = '')
	{
		$i = new Citizenship_m($id);
				
		$i->delete();
		
		$this->session->set_flashdata('msg', $this->module.' Deleted!');
		
		redirect(base_url().'references/citizenship', 'refresh');
	}
	
	// --------------------------------------------------------------------
	
}

