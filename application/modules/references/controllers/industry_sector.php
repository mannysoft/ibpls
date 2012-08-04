<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Industry_sector extends MX_Controller {
	
	// --------------------------------------------------------------------
	
	function __construct()
    {
        parent::__construct();
				
		$this->output->enable_profiler(TRUE);
    }  
	
	function index()
	{
		$data['page_name'] = '<b>References -> Industry Sector</b>';
		
		$data['msg'] = '';
		
		$i = new Industry_sector_m();
		
		$i->order_by('description');
		
		$data['sectors'] = $i->get();
		
		$data['main_content'] = 'industry_sector/index';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>Industry Sector</b>';
		
		$data['msg'] = '';
		
		$i = new Industry_sector_m();
		
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
				
				$this->session->set_flashdata('msg', 'Industry Sector saved!');
				
				redirect(base_url().'references/industry_sector', 'refresh');
			}
		}
				
		$data['main_content'] = 'industry_sector/save';
		
		$this->load->view('includes/template', $data);

	}

	// --------------------------------------------------------------------

	function delete($id = '')
	{
		$i = new Industry_sector_m($id);
				
		$i->delete();
		
		$this->session->set_flashdata('msg', 'Industry Sector Deleted!');
		
		redirect(base_url().'references/industry_sector', 'refresh');
	}
	
	// --------------------------------------------------------------------
}

