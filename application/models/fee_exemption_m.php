<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//
class Fee_exemption_m extends Datamapper
{
	public $table = 'fee_exemptions';
	
	function __construct($id = NULL)
	{
		parent::__construct($id);
	}

}
