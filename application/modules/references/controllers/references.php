<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class References extends MX_Controller {
	
	// --------------------------------------------------------------------
	
	function __construct()
    {
        parent::__construct();
				
		$this->output->enable_profiler(TRUE);
		
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
    }  
	
	// --------------------------------------------------------------------
		
	function province()
	{
		$data['page_name'] = '<b>Province</b>';
		
		$data['msg'] = '';
		
		$op = $this->input->post('op');
		
		$p = new Province_m();
		
		$data['provinces'] = $p->get();
				
		$data['main_content'] = 'province';
		
		$this->load->view('includes/template', $data);

	}
	
	// --------------------------------------------------------------------
	
	function province_save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>Save Province</b>';
		
		$p = new Province_m();
		
		$data['province'] = $p->get_by_id( $id );

		if ($this->input->post('op') == 1)
		{									
			$this->form_validation->set_rules('name', 'Province', 'required|max_length[30]');
			$this->form_validation->set_rules('blgf_code', 'BLGF Code', 'required');
			
			if ($this->form_validation->run() == TRUE)
			{
				
				$p->name 		= $this->input->post('name');
				$p->blgf_code 	= $this->input->post('blgf_code');
				$p->save();
				
				$this->session->set_flashdata('msg', 'Province saved!');
				
				redirect(base_url().'references/province', 'refresh');
			}
		}
				
		$data['main_content'] = 'province_save';
		
		$this->load->view('includes/template', $data);

	}

	// --------------------------------------------------------------------

	function province_delete($id = '')
	{
		$p = new Province_m();
		
		$p->get_by_id( $id );
		
		$p->delete();
		
		$this->session->set_flashdata('msg', 'Province Deleted!');
		
		redirect(base_url().'references/province', 'refresh');
	}
	
	// --------------------------------------------------------------------
	
	function district()
	{
		$data['page_name'] = '<b>District</b>';
		
		$data['msg'] = '';
		
		$d = new District_m();
				
		$data['districts'] = $d->get();
				
		$data['main_content'] = 'district';
		
		$this->load->view('includes/template', $data);

	}
	
	// --------------------------------------------------------------------
	
	function district_save($id = '')
	{
		$data = array();
				
		$data['page_name'] = '<b>Save District</b>';
		
		$p =  new Lgu_m();
		
		$provinces = $p->get();
		
		foreach ($provinces as $province)
		{
			$data['lgu_options'][$province->id] = $province->name;
		}
		
		$d = new District_m();
				
		$data['district'] = $d->get_by_id( $id );

		if ($this->input->post('op') == 1)
		{									
			$this->form_validation->set_rules('name', 'District Name', 'required');
			//$this->form_validation->set_rules('blgf_code', 'BLGF Code', 'required');
			
			if ($this->form_validation->run() == TRUE)
			{
				
				$d->name 			= $this->input->post('name');
				$d->lgu_id 	= $this->input->post('lgu_id');
				$d->blgf_code 		= $this->input->post('blgf_code');
				$d->save();
				
				$this->session->set_flashdata('msg', 'District saved!');
				
				redirect(base_url().'references/district', 'refresh');
			}
		}
				
		$data['main_content'] = 'district_save';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function district_delete($id = '')
	{
		$d = new District_m();
		
		$d->get_by_id( $id );
		
		$d->delete();
		
		$this->session->set_flashdata('msg', 'District Deleted!');
		
		redirect(base_url().'references/district', 'refresh');

	}
	
	// --------------------------------------------------------------------
	
	
	function lgu()
	{
		$data['page_name'] = '<b>LGU</b>';
		
		$data['msg'] = '';
		
		$l = new Lgu_m();
		$l->order_by('name');
				
		$data['lgus'] = $l->get();
				
		$data['main_content'] = 'lgu';
		
		$this->load->view('includes/template', $data);

	}
	
	// --------------------------------------------------------------------
	
	function lgu_save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>Save LGU</b>';
		
		$p =  new Province_m();
		
		$provinces = $p->get();
		
		foreach ($provinces as $province)
		{
			$data['province_options'][$province->id] = $province->name;
		}
	
		$l = new Lgu_m();
				
		$data['lgu'] = $l->get_by_id( $id );

		if ($this->input->post('op') == 1)
		{									
			$this->form_validation->set_rules('name', 'LGU Name', 'required|max_length[30]');
			$this->form_validation->set_rules('blgf_code', 'BLGF Code');

			
			if ($this->form_validation->run() == TRUE)
			{
				
				$l->name 			= $this->input->post('name');
				$l->province_id 	= $this->input->post('province_id');
				$l->blgf_code 		= $this->input->post('blgf_code');
				$l->save();
				
				$this->session->set_flashdata('msg', 'LGU saved!');
				
				redirect(base_url().'references/lgu', 'refresh');
			}
		}
		
				
		$data['main_content'] = 'lgu_save';
		
		$this->load->view('includes/template', $data);

	}
	
	// --------------------------------------------------------------------
		
	function lgu_delete($id = '')
	{
		$d = new Lgu_m();
		
		$d->get_by_id( $id );
		
		$d->delete();
		
		$this->session->set_flashdata('msg', 'LGU Deleted!');
		
		redirect(base_url().'references/lgu', 'refresh');
	}
	
	// --------------------------------------------------------------------
	
	function zip()
	{
		$data['page_name'] = '<b>Zip</b>';
		
		$data['msg'] = '';
		
		$z = new Zip_m();
				
		$data['zips'] = $z->get();
		
		$data['main_content'] = 'zip';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function zip_save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>Save Zip</b>';
		
		$l = new Lgu_m();
		$l->order_by('name');
		
		$lgus = $l->get();
		
		foreach ($lgus as $lgu)
		{
			$data['lgu_options'][$lgu->id] = $lgu->name;
		}
				
		$l = new Zip_m();
				
		$data['zip'] = $l->get_by_id( $id );

		if ($this->input->post('op') == 1)
		{									
			$this->form_validation->set_rules('name', 'Zip Name', 'required|max_length[30]');

			
			if ($this->form_validation->run() == TRUE)
			{
				
				$l->name 	= $this->input->post('name');
				$l->lgu_id 	= $this->input->post('lgu_id');
				$l->save();
				
				$this->session->set_flashdata('msg', 'Zip saved!');
				
				redirect(base_url().'references/zip', 'refresh');
			}
		}
				
		$data['main_content'] = 'zip_save';
		
		$this->load->view('includes/template', $data);
		
	}
	
	// --------------------------------------------------------------------
	
	function zip_delete($id = '')
	{
		$d = new Zip_m();
		
		$d->get_by_id( $id );
		
		$d->delete();
		
		$this->session->set_flashdata('msg', 'Zip Deleted!');
		
		redirect(base_url().'references/zip', 'refresh');
	}
	
	// --------------------------------------------------------------------
	
	function barangay()
	{
		$data['page_name'] = '<b>Barangay</b>';
		
		$data['msg'] = '';
		
		$b = new Barangay_m();
		
		$b->order_by('name');
				
		$data['barangays'] = $b->get();
				
		$data['main_content'] = 'barangay';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function barangay_save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>Save barangay</b>';
		
		$l = new District_m();
		$l->order_by('name');
		
		$districts = $l->get();
		
		foreach ($districts as $district)
		{
			$data['district_options'][$district->id] = $district->name;
		}
				
		$l = new Barangay_m();
				
		$data['barangay'] = $l->get_by_id( $id );

		if ($this->input->post('op') == 1)
		{									
			$this->form_validation->set_rules('name', 'Barangay Name', 'required|max_length[30]');

			
			if ($this->form_validation->run() == TRUE)
			{
				
				$l->name 		= $this->input->post('name');
				$l->district_id = $this->input->post('district_id');
				$l->blgf_code 	= $this->input->post('blgf_code');
				$l->save();
				
				$this->session->set_flashdata('msg', 'Barangay saved!');
				
				redirect(base_url().'references/barangay', 'refresh');
			}
		}
		
		
		$data['main_content'] = 'barangay_save';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function barangay_delete($id = '')
	{
		$d = new Barangay_m();
		
		$d->get_by_id( $id );
		
		$d->delete();
		
		$this->session->set_flashdata('msg', 'Barangay Deleted!');
		
		redirect(base_url().'references/barangay', 'refresh');
	}
	
	// --------------------------------------------------------------------
	
	function zone()
	{
		$data['page_name'] = '<b>Zone</b>';
		
		$data['msg'] = '';
		
		$z = new Zone_m();
		
		$z->order_by('name');
		
		$data['zones'] = $z->get();
				
		$data['main_content'] = 'zone';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function zone_save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>Save Zone</b>';
		
		$l = new Barangay_m();
		$l->order_by('name');
		
		$districts = $l->get();
		
		foreach ($districts as $district)
		{
			$data['barangay_options'][$district->id] = $district->name;
		}
				
		$l = new Zone_m();
				
		$data['zone'] = $l->get_by_id( $id );

		if ($this->input->post('op') == 1)
		{									
			$this->form_validation->set_rules('name', 'Zone Name', 'required|max_length[30]');

			if ($this->form_validation->run() == TRUE)
			{
				
				$l->name 		= $this->input->post('name');
				$l->barangay_id = $this->input->post('barangay_id');
				$l->save();
				
				$this->session->set_flashdata('msg', 'Zone saved!');
				
				redirect(base_url().'references/zone', 'refresh');
			}
		}
		
				
		$data['main_content'] = 'zone_save';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function zone_delete($id = '')
	{
		$d = new Zone_m();
		
		$d->get_by_id( $id );
		
		$d->delete();
		
		$this->session->set_flashdata('msg', 'Zone Deleted!');
		
		redirect(base_url().'references/zone', 'refresh');
	}
	
	
}

