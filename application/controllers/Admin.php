<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

  public function __construct(){
    parent::__construct();
    $this->load->model('model_header');
    $this->load->model('model_admin');
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

  public function modNav(){
    if($this->session->userdata('logged_in')){
      if ($this->session->userdata('ROL')=='Admin') {
        // code...

        $urldeimagen							="/images/";
        $config['upload_path'] 		= ".".$urldeimagen;
        $file_name 								= md5(time()."-".rand(1,999));
        $config['allowed_types'] 	= "gif|jpg|jpeg|png";
        $config['file_name']      = $file_name;

        $this->load->library('upload', $config);

        /*$url_con=  $this->input->post('url');
        $cod_yt = substr(strrchr($url_con, "/"), 1 );
        $base_yt= 'https://www.youtube.com/embed/';
        $url_yt = $base_yt.$cod_yt;*/

        if ($this->upload->do_upload('tcarga')){
          $dataCargada = $this->upload->data();
          $datos=array(
            'nombre'=>$this->input->post('nombre'),
            'abreviacion'=>$this->input->post('abreviacion'),
            'nav_bg'=>$this->input->post('nav_bg'),
            'color'=>$this->input->post('color'),
            'fuente'=>$this->input->post('fuente'),
            'size'=>$this->input->post('size'),
            'op1'=>$this->input->post('op1'),
            'op2'=>$this->input->post('op2'),
            'op3'=>$this->input->post('op3'),
            'op4'=>$this->input->post('op4'),
            'search'=>$this->input->post('search'),
            'logo'=> $urldeimagen.$dataCargada['file_name']
          );
        }else {
          $datos=array(
            'nombre'=>$this->input->post('nombre'),
            'abreviacion'=>$this->input->post('abreviacion'),
            'nav_bg'=>$this->input->post('nav_bg'),
            'color'=>$this->input->post('color'),
            'fuente'=>$this->input->post('fuente'),
            'size'=>$this->input->post('size'),
            'op1'=>$this->input->post('op1'),
            'op2'=>$this->input->post('op2'),
            'op3'=>$this->input->post('op3'),
            'op4'=>$this->input->post('op4'),
            'search'=>$this->input->post('search'),
          );
        }
        $id=$this->input->post('search');
        $this->model_admin->actNav($datos,$id);
        redirect("admin",'refresh');
      }else {
        $this->load->view('error_page');
      }
    }else {
      redirect("login");
    }
  }
}
