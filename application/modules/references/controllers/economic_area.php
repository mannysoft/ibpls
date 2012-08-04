<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Economic_area extends MX_Controller {
	
	public $module = 'Economic Area';
	
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
		
		$c = new Economic_area_m();
		
		$c->order_by('description');
		
		$data['sectors'] = $c->get();
		
		$data['main_content'] = 'economic_area/index';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>'.$this->module.'</b>';
		
		$data['msg'] = '';
		
		$i = new Economic_area_m();
		
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
				
				redirect(base_url().'references/economic_area', 'refresh');
			}
		}
				
		$data['main_content'] = 'economic_area/save';
		
		$this->load->view('includes/template', $data);

	}

	// --------------------------------------------------------------------

	function delete($id = '')
	{
		$i = new Economic_area_m($id);
				
		$i->delete();
		
		$this->session->set_flashdata('msg', $this->module.' Deleted!');
		
		redirect(base_url().'references/economic_area', 'refresh');
	}
	
	// --------------------------------------------------------------------
	
}

