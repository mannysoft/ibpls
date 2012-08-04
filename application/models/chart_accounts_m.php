<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Chart_accounts_m extends Datamapper{
	
	public $table = 'chart_accounts';
	
	function __construct($id = NULL)
	{
		parent::__construct($id);
	}
}
