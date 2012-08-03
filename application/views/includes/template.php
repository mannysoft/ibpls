<?php 
$this->load->view('includes/header');

$this->load->view('includes/menu');

$this->load->view('includes/body_top');

$this->load->view('includes/message');

$this->load->view($main_content); // This is the main content

$this->load->view('includes/footer');
?>