<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
  function __construct(){
    parent::__construct();
    $this->load->model('model_header');
    $this->load->model('model_login');
  }

  public function index()
  {
    $header['head']=$this->model_header->consultOficial(1);
    $this->load->view('header',$header);
    $this->load->view('view_Login',$header);
    $this->load->view('footer',$header);
  }

  public function cambiar_clave(){
    $usuario=$this->input->post('usuario');
    $newpass=$this->input->post('newpassword');
    $password=$this->input->post('oldpassword');
    $result=$this->Model_login->comprobar($usuario,$password);
    if ($result->apodo==1) {
      // code...
      $result=$this->Model_login->actualizar_clave($usuario,$newpass);
    }else {
      echo "usuario o clave incorrectos";
    }
  }


  public function validar(){
    if (isset($_POST['user'])) {
      $user=$this->input->post('user');
      $pass=$this->input->post('pass');
      $result=$this->model_login->comprobar($user,$pass);

      if ($result->apodo==1) {
        $datos=$this->model_login->traer($user,$pass);
        $session=array(
          'ID'=>$datos->id,
          'USUARIO'=>$datos->user,
          'PASSWORD'=>$datos->pass,
          'ROL'=>$datos->rol,
          'logged_in'=>true
        );
        $this->session->set_userdata($session);
          if($datos->rol=='Admin'){
            redirect("".base_url()."index.php/Admin");
          }else if ($datos->rol=='Cliente'){
            redirect("".base_url()."index.php/cliente");
          }else {
            $this->load->view('error_page');
          }
      }else {
        $this->session->set_flashdata('msg', '<div class="alert alert-danger text-center">Usuario/Contraseña Invalido</div>');
  			redirect("".base_url()."index.php/login");
      }
    }else {
      $this->load->view('error_page');
    }
  }
}
