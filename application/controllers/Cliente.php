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
        $this->load->view('views_cliente');
      }else {
        redirect("home");
      }
    }else {
      redirect("home");
    }
  }


}
