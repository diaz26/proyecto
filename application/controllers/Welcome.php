<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	function __construct(){
    parent::__construct();
    $this->load->model('model_header');
    $this->load->model('model_empresa');
  }

	public function to($ban=NULL)
	{
    if ($ban!=NULL) {
      $header['head']=$this->model_header->consultOficial(1);
  		$this->load->view('header',$header);
  		$this->load->view('view_ecommerce');
  		$this->load->view('footer');
    }else {
      $this->load->view('error_page');
    }
	}
}
