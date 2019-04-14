<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cliente extends CI_Controller {

  public function __construct(){
    parent::__construct();
    //$this->load->model('model_login');
  }

  public function index()
  {
    if ($this->session->userdata('logged_in')) {
      if($this->session->userdata('ROL')=='Cliente'){
        $this->load->view('header_loged');
        $this->load->view('view_cliente');
        $this->load->view('footer_loged');
      }else {
        $this->load->view('error_page');
      }
    }else {
      redirect("login");
    }
  }

}
