<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

  public function __construct(){
    parent::__construct();
    $this->load->model('model_header');
  }

  public function index()
  {
    if ($this->session->userdata('logged_in')) {
      if($this->session->userdata('ROL')=='Admin'){
        $header['head']=$this->model_header->consultOficial(1);
        $this->load->view('header_loged',$header);
        $this->load->view('view_admin');
        $this->load->view('footer_loged',$header);
      }else {
        $this->load->view('error_page');
      }
    }else {
      redirect("login");
    }
  }


}
