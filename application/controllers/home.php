<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
    parent::__construct();
    $this->load->model('model_header');
  }

	public function index()
	{
		$header['head']=$this->model_header->consultOficial(1);
		$this->load->view('header',$header);
		$this->load->view('view_home');
		$this->load->view('footer');
	}
}
