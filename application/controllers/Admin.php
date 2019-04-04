<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

  public function __construct(){
    parent::__construct();
    //$this->load->model('model_login');
  }

  public function index()
  {
    if ($this->session->userdata('logged_in')) {
      if($this->session->userdata('ROL')=='Admin'){
        $this->load->view('views_admin');
      }else {
        redirect("home");
      }
    }else {
      redirect("home");
    }
  }


}
