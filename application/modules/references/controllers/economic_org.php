<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Economic_org extends MX_Controller {
	
	public $module = 'Economic Organization';
	
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
		
		$c = new Economic_org_m();
		
		$c->order_by('description');
		
		$data['sectors'] = $c->get();
		
		$data['main_content'] = 'economic_org/index';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>'.$this->module.'</b>';
		
		$data['msg'] = '';
		
		$i = new Economic_org_m();
		
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
				
				redirect(base_url().'references/economic_org', 'refresh');
			}
		}
				
		$data['main_content'] = 'economic_org/save';
		
		$this->load->view('includes/template', $data);

	}

	// --------------------------------------------------------------------

	function delete($id = '')
	{
		$i = new Economic_org_m($id);
				
		$i->delete();
		
		$this->session->set_flashdata('msg', $this->module.' Deleted!');
		
		redirect(base_url().'references/economic_org', 'refresh');
	}
	
	// --------------------------------------------------------------------
	
}

