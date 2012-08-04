<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
//masterlist of business nature
class Business_nature_m extends Datamapper
{
	public $table = 'business_nature';
	
	function __construct($id = NULL)
	{
		parent::__construct($id);
	}
}
