<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bp_settings extends MX_Controller  
{
	// --------------------------------------------------------------------
	
	function __construct()
    {
        parent::__construct();
				
		$this->output->enable_profiler(TRUE);
				
    }  
	
	// --------------------------------------------------------------------
	
	function tfo()
	{
		$data['page_name'] = '<b>Tax, Fee and Other Charges</b>';
		
		$data['msg'] = '';
				
		$b = new Business_tfo_m();
		
		$b->order_by('name');
		
		$data['tfos'] = $b->get();
				
		$data['main_content'] = 'tfo';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function tfo_save($id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>Save Tax, Fee and Other Charges</b>';
		
		$b = new Business_tax_fee_type_m();
		
		$b->order_by('name');
		
		$taxes = $b->get();
		
		foreach ($taxes as $tax)
		{
			$data['tax_fee_type_id_options'][$tax->id] = $tax->name;
		}
		
		$b = new Business_tfo_m();
		$data['tfo'] = $b->get_by_id($id);
				
		if ($this->input->post('op'))
		{
			$this->form_validation->set_rules('name', 'Description', 'required|max_length[30]');
			$this->form_validation->set_rules('amount');
			$this->form_validation->set_rules('number_years');
			
			if ($this->form_validation->run() == TRUE)
			{
				$b->name 				= $this->input->post('name');
				$b->tax_fee_type_id 	= $this->input->post('tax_fee_type_id');
				$b->amount 				= $this->input->post('amount');
				$b->number_years 		= $this->input->post('number_years');
				$b->default 			= $this->input->post('set_default');
				$b->save();
				
				redirect(base_url().'bp_settings/tfo', 'refresh');
			}
	
		}
				
		$data['main_content'] = 'tfo_save';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
		
	function tfo_delete($id = '')
	{
		$d = new Business_tfo_m();
		
		$d->get_by_id( $id );
		
		$d->delete();
		
		$this->session->set_flashdata('msg', 'TFO Deleted!');
		
		redirect(base_url().'bp_settings/tfo', 'refresh');
	}
	
	// --------------------------------------------------------------------
	
	function business_nature()
	{
		$data['page_name'] = '<b>Business Nature</b>';
		
		$data['msg'] = '';
		
		$b = new Business_nature_m();
		
		$b->order_by('name');
		
		$data['business_natures'] = $b->get();
				
		$data['main_content'] = 'business_nature';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
	
	function business_nature_save($id = '')
	{
		$data = array();
		
		$data['msg'] = '';
		
		$data['page_name'] = '<b>Save Business Nature</b>';
	
		$data['nature_id'] = '';
		
		$b = new Business_nature_m();
		
		$data['nature'] = $b->get_by_id($id);
				
		if ($this->input->post('op') == 1)
		{
			$this->form_validation->set_rules('name', 'Business Nature', 'required');
			$this->form_validation->set_rules('psic_code','PSIC Code', 'required');
			
			if ($this->form_validation->run() == TRUE)
			{
				$b->name 		= $this->input->post('name');
				$b->psic_code 	= $this->input->post('psic_code');
				$b->save();
							
				redirect(base_url().'bp_settings/business_nature', 'refresh');
			}
		}
				
		$data['main_content'] = 'business_nature_save';
		
		$this->load->view('includes/template', $data);
	}
	
	// --------------------------------------------------------------------
		
	function business_nature_delete($id = '')
	{
		$d = new Business_nature_m();
		
		$d->get_by_id( $id );
		
		$d->delete();
		
		$this->session->set_flashdata('msg', 'Deleted!');
		
		redirect(base_url().'bp_settings/business_nature', 'refresh');
	}
	
	function business_nature_taxes_save($id = '', $name = '')
	{
		$data = array();
		
		$data['msg'] = '';
		
		$data['field_set'] = $name;
		
		$b = new Business_nature_m();
		
		$b->get_by_id($id);
		
		
		
		
		$data['page_name'] = '<b>Save Required taxes, fees and other charges for Business nature: "'.$b->name.'"</b>';
		
		$t = new Business_tfo_m();
		$t->order_by('name');
		
		$taxes = $t->get();
		
		foreach ($taxes as $tax)
		{
			$data['tfo_id_options'][$tax->id] = $tax->name;
		}
		
		
		$b = new Business_tax_requirements_m();
			
		$data['tax_requirements'] = $b->get_by_business_nature_id($id);
		
		
		if ($this->input->post('op') == 1)
		{
			$tfo_id 			= $this->input->post('tfo_id');
			$transaction 		= $this->input->post('transaction');
			$basis 				= $this->input->post('basis');
			$mode 				= $this->input->post('mode');
			$indicator 			= $this->input->post('indicator');
			$amount_formula 	= $this->input->post('amount_formula');
			$min_amount 		= $this->input->post('min_amount');
			
			$this->form_validation->set_rules('amount_formula', 'Amount Formula', 'required');
			
			//repopulate the business nature
			$this->form_validation->set_rules('psic_code');
			$this->form_validation->set_rules('name');
			
			if ($this->form_validation->run() == FALSE)
			{
				
			}
			else
			{
				$data['q'] = array(
							'nature_id' 		=> $nature_id,
							'tfo_id'			=> $tfo_id,
							'basis' 			=> $basis,
							'indicator'			=> $indicator,
							'mode' 				=> '',
							'amount_formula'	=> $amount_formula,
							'transaction'		=> $transaction,
							'min_amount' 		=> $min_amount
							);
							
				$this->Business_tax_requirements->add_business_tax_requirements($data['q']);
				
				$data['nature_id'] = $nature_id;
				
				//redirect(base_url().'index.php/bp_settings/business_nature', 'refresh');
				
			}
		}
				
		//$data['tax_requirements'] = $this->Business_tax_requirements->get_business_tax_requirements($nature_id);
				
		$data['main_content'] = 'business_nature_taxes_save';
		
		$this->load->view('includes/template', $data);
	}
	
}

