<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Zip_m extends Datamapper
{
	public $table = 'zip';
	
	function __construct($id = NULL)
	{
		parent::__construct($id);
	}
}
