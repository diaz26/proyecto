<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
  function __construct(){
    parent::__construct();

    $this->load->model('Model_login');
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
    $usuario=$this->input->post('usuario');
    $password=$this->input->post('password');
    $result=$this->Model_login->comprobar($usuario,$password);

    echo $result->apodo;
    if ($result->apodo==1) {
      // code...
      $datos_traidos=$this->Model_login->traer($usuario,$password);
      $session=array(
        'ID'=>$datos_traidos->id,
        'USUARIOS'=>$datos_traidos->usuario,
        'PASSWORD'=>$datos_traidos->password,
        'ROL'=>$datos_traidos->rol,
        'logged_in'=>true,);
        if ($datos_traidos->rol=='Admin') {
          if ($this->session->userdata('logged_in')) {
            if($this->session->userdata('ROL')=='Admin'){
              redirect("".base_url()."index.php/Admin");
            }else {
              redirect("home");
            }
          }else {
            redirect("home");
          }
        }
        if ($datos_traidos->rol=='Cliente') {
          if ($this->session->userdata('logged_in')) {
            if($this->session->userdata('ROL')=='Cliente'){
              redirect("".base_url()."index.php/cliente");
            }else {
              redirect("home");
            }
          }else {
            redirect("home");
          }
        }

      }else{
        echo "string";
      }
    }
  }
