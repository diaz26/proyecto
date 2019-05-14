<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Service extends CI_Controller {
  function __construct(){
    parent::__construct();
    $this->load->model('model_header');
    $this->load->model('model_service');
    $this->load->model('model_login');
  }

  public function index()
  {
    $header['head']=$this->model_header->consultOficial(1);
    $result['service']=$this->model_service->consultService(1);
    $this->load->view('header',$header);
    $this->load->view('view_service',$result);
    $this->load->view('footer');
  }


  public function register(){
    if (isset($_POST['email'])) {
      $result=$this->model_login->verificaCorreo($this->input->post('email'));
      if ($result->cantidad==0) {
        $registro=array(
          'email'=>$this->input->post('email'),
          'pass'=>$this->input->post('pass'),
          'nombres'=>$this->input->post('nombres'),
          'cc'=>$this->input->post('cc'),
          'ciudad'=>$this->input->post('ciudad'),
          'celular'=>$this->input->post('celular'),
          'paypal' =>$this->input->post('paypal'),
          'direccion'=>$this->input->post('direccion'),
          'fecha_registro'=>date("Y-m-d H:i:s"),
          'rol'=>'Cliente',
          'cod_user'=>$this->genera_cod_user(),
        );
        $id=$this->model_login->registrar($registro);

        $urldeimagen							="/images/";
        $config['upload_path'] 		= ".".$urldeimagen;
        $file_name 								= md5(time()."-".rand(1,999));
        $config['allowed_types'] 	= "gif|jpg|jpeg|png";
        $config['file_name']      = $file_name;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('logo')){
          $dataCargada = $this->upload->data();
          $newpage=array(
            'nombre' =>$this->input->post('page'),
            'id_usuario'=>$id,
            'nav_bg'=>'#D9D7D7',
            'nav_color'=>'#000000',
            'body_bg'=>'#E7E7E7',
            'logo'=> $urldeimagen.$dataCargada['file_name']
          );
        }else {
          $newpage = array(
            'nombre' =>$this->input->post('page'),
            'logo' =>'images/defecto.jpg',
            'nav_bg'=>'#D9D7D7',
            'nav_color'=>'#000000',
            'body_bg'=>'#E7E7E7',
            'id_usuario'=>$id,
          );
        }
        $this->model_login->newPage($newpage);
        $session=array(
          'ID'=>$id,
          'USUARIO'=>$this->input->post('correo'),
          'PASSWORD'=>$this->input->post('password'),
          'ROL'=>'Cliente',
          'logged_in'=> true
        );
        $this->session->set_userdata($session);
        redirect("Cliente",'refresh');
      }else {
        $this->session->set_flashdata('palo','<div class="alert alert-danger text-center">Correo Existente</div>');
        redirect("service");
      }
    }
  }
  public function genera_cod_user(){
    #cosulta consecutivo
    $consecutivo= $this->model_informacion->consultConsec(1);
    $data_update = array("pr900"	=> $consecutivo+1,);
    $this->model_informacion->alteraConsec($data_update);
    //Genera número de pedido
    $cod_pedido ="COD_USER".$this->generateRandomString(6).$consecutivo;
    return $cod_pedido;
  }

  function generateRandomString($length) {
    return substr(str_shuffle(str_repeat($x='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', ceil($length/strlen($x)) )),1,$length);
  }
}
