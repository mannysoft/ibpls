<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bp_settings extends MX_Controller  
{

	function __construct()
    {
        parent::__construct();
		
		//$this->is_user_logged($isUserLogged);
		
		$this->output->enable_profiler(TRUE);
		
		$this->load->helper(array('form', 'url'));
		
		$this->load->view('includes/header');
		
		$this->load->view('includes/menu');
    }  
	
	function Bp_settings()
	{
		parent::Controller();
	}
	
	function tfo()
	{
		$data['page_name'] = '<b>Tax, Fee and Other Charges</b>';
		
		$data['msg'] = '';
		
		$data['tfos'] = $this->Business_tfo->get_business_tfo();
		
		$this->load->view('includes/body_top', $data);
		
		$this->load->view('list_tfo', $data);
		
		$this->load->view('includes/footer');
	}
	
	function add_tfo()
	{
		$data = array();
		
		$data['page_name'] = '<b>Add Tax, Fee and Other Charges</b>';
		
		$taxes = $this->Business_tax_fee_type->get_business_tax_fee_type();
		
		foreach ($taxes as $tax)
		{
			$data['tax_fee_type_id_options'][$tax['tax_fee_type_id']] = $tax['name'];
		}
		
		$op = $this->input->post('op');
		
		if ($op == 1)
		{
			$name 				= $this->input->post('name');
			$tax_fee_type_id 	= $this->input->post('tax_fee_type_id');
			$amount 			= $this->input->post('amount');
			$number_years 		= $this->input->post('number_years');
			$set_default 		= $this->input->post('set_default');
			
			$this->load->helper(array('form', 'url'));
			
			$this->load->library('form_validation');
			
			$this->form_validation->set_rules('name', 'Description', 'required|max_length[30]');
			$this->form_validation->set_rules('amount');
			$this->form_validation->set_rules('number_years');
			
			if ($this->form_validation->run() == FALSE)
			{
				
			}
			else
			{
				$data = array(
							'name' 			=> $name,
							'tax_fee_type'	=> $tax_fee_type_id,
							'amount' 		=> $amount,
							'number_years'	=> $number_years,
							'default'		=> $set_default
							);
							
				$this->Business_tfo->add_business_tfo($data);
				
				redirect(base_url().'index.php/bp_settings/tfo', 'refresh');
			}
			
		}
		$this->load->view('includes/body_top', $data);
			
		$this->load->view('add_tfo', $data);
		
		$this->load->view('includes/footer');
	}
	
	function edit_tfo($tfo_id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>Edit Tax, Fee and Other Charges</b>';
		
		$taxes = $this->Business_tax_fee_type->get_business_tax_fee_type();
		
		foreach ($taxes as $tax)
		{
			$data['tax_fee_type_id_options'][$tax['tax_fee_type_id']] = $tax['name'];
		}
		
		$op = $this->input->post('op');
		
		if ($op == 1)
		{
			$tfo_id 			= $this->input->post('tfo_id');
			
			$name 				= $this->input->post('name');
			$tax_fee_type_id 	= $this->input->post('tax_fee_type_id');
			$amount 			= $this->input->post('amount');
			$number_years 		= $this->input->post('number_years');
			$set_default 		= $this->input->post('set_default');
			
			$data = array(
							'name' 			=> $name,
							'tax_fee_type'	=> $tax_fee_type_id,
							'amount' 		=> $amount,
							'number_years'	=> $number_years,
							'default'		=> $set_default
							);
										
			$this->Business_tfo->update_business_tfo($data, $tfo_id);
			
			redirect(base_url().'index.php/bp_settings/tfo', 'refresh');
		}
	
		$data['tfo'] = $this->Business_tfo->get_business_tfo($tfo_id);
		
		$data['selected'] = $data['tfo'][0]['tax_fee_type'];
		$data['checked']  = $data['tfo'][0]['default'];
		
		//check box
		$data['set_default'] = array(
								'name'   	=> 'set_default',
								'id'     	=> 'set_default',
								'value'  	=> 1,
								'checked'   => $data['checked']
								);
		
		$this->load->view('includes/body_top', $data);
		
		$this->load->view('edit_tfo', $data);
		
		$this->load->view('includes/footer');
	}
	
	function delete_tfo($tfo_id = '')
	{
		//$this->Business_tfo->delete_business_tfo($tfo_id);
		redirect(base_url().'index.php/bp_settings/tfo', 'refresh');
	}
	
	
	
	
	
	function business_nature()
	{
		$data['page_name'] = '<b>Business Nature</b>';
		
		$data['msg'] = '';
		
		$data['business_nature'] = $this->Business_nature->get_business_nature();
		
		$this->load->view('includes/body_top', $data);
		
		$this->load->view('list_business_nature', $data);
		
		$this->load->view('includes/footer');
	}
	
	
	function add_business_nature()
	{
		$data = array();
		
		$data['msg'] = '';
		
		$data['page_name'] = '<b>Add Business Nature</b>';
	
		$data['nature_id'] = '';
		
		$this->form_validation->set_error_delimiters('<div class="error">', '</div>');
		
		$op = $this->input->post('op');
		
		if ($op == 1)
		{
			$name 		= $this->input->post('name');
			$psic_code 	= $this->input->post('psic_code');
			
			$this->form_validation->set_rules('name', 'Business Nature', 'required');
			$this->form_validation->set_rules('psic_code');
			
			if ($this->form_validation->run() == FALSE)
			{
				
			}
			else
			{
				$data = array(
							'name' 		=> $name,
							'psic_code'	=> $psic_code,
							);
				
				
				//Nature id			
				$data['nature_id'] = $this->Business_nature->add_business_nature($data);
							
				redirect(base_url().'index.php/bp_settings/business_nature', 'refresh');
			}
			
		}
		
		$this->load->view('includes/body_top', $data);
			
		$this->load->view('add_business_nature', $data);
		
		$this->load->view('includes/footer');
	}
	
	
	function edit_business_nature($nature_id = '')
	{
		$data = array();
		
		$data['page_name'] = '<b>Edit Business nature</b>';
		
		$op = $this->input->post('op');
		
		if ($op == 1)
		{
			$nature_id 			= $this->input->post('nature_id');
			
			$name 				= $this->input->post('name');
			$psic_code 			= $this->input->post('psic_code');
			
			$data = array(
							'name' 			=> $name,
							'psic_code'		=> $psic_code
							);
										
			$this->Business_nature->update_business_nature($data, $nature_id);
			
			redirect(base_url().'index.php/bp_settings/business_nature', 'refresh');
		}
	
		$data['business_nature'] = $this->Business_nature->get_business_nature($nature_id);
		
		$this->load->view('includes/body_top', $data);
		
		$this->load->view('edit_business_nature', $data);
		
		$this->load->view('includes/footer');
	}
	
	function delete_business_nature($nature_id = '')
	{
		$this->Business_nature->delete_business_nature($nature_id);
		redirect(base_url().'index.php/bp_settings/business_nature', 'refresh');
	}
	
	function add_business_nature_taxes($nature_id = '', $name = '')
	{
		$data = array();
		
		$data['msg'] = '';
		
		$data['field_set'] = $name;
		
		$data['page_name'] = '<b>Add Required taxes, fees and other charges</b>';
		
		$taxes = $this->Business_tfo->get_business_tfo();
		
		foreach ($taxes as $tax)
		{
			$data['tfo_id_options'][$tax['tfo_id']] = $tax['name'];
		}
		
		$op = $this->input->post('op');
		
		if ($op == 1)
		{
			$tfo_id 			= $this->input->post('tfo_id');
			$transaction 		= $this->input->post('transaction');
			$basis 				= $this->input->post('basis');
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
		
		$data['nature_id'] = $nature_id;
		
		$data['tax_requirements'] = $this->Business_tax_requirements->get_business_tax_requirements($nature_id);
		
		$this->load->view('includes/body_top', $data);
		
		$this->load->view('add_business_nature_taxes', $data);
		
		$this->load->view('includes/footer');
	}
	
}

