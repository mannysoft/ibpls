<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//Tax, fee and other charges
class Business_tfo_m extends Datamapper
{
	public $table = 'business_tfo';
	
	//public $has_one = array("Business_tax_fee_type_m");
	
	function __construct($id = NULL)
	{
		parent::__construct($id);
	}
}
