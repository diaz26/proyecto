<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Modificar_Productos extends CI_Controller {

  public function __construct(){
    parent::__construct();
    $this->load->model('model_header');
    $this->load->model('model_productos');
  }

  public function index()
  {
    if ($this->session->userdata('logged_in')) {
      if($this->session->userdata('ROL')=='Cliente'){
        $header['head']=$this->model_header->consultOficial(1);
        $datap['productos']=$this->model_productos->traerproductos();
        $this->load->view('header_loged',$header);
        $this->load->view('view_modproductos',$datap);
        $this->load->view('footer_loged',$header);
      }else {
        $this->load->view('error_page');
      }
    }else {
      redirect("login");
    }
  }
 public function Editar($id){
       $header['head']=$this->model_header->consultOficial(1);
       $dataid['productos']=$this->model_productos->agarraid($id);
       $this->load->view('header_loged',$header);
       $this->load->view('view_modproductos',$dataid);
       $this->load->view('footer_loged',$header);
     }
public function modificar(){
        if ($this->session->userdata('logged_in')) {
          if($this->session->userdata('ROL')=='Cliente'){
            $urldeimagen							="/images/";
            $config['upload_path'] 		= ".".$urldeimagen;
            $file_name 								= md5(time()."-".rand(1,999));
            $config['allowed_types'] 	= "gif|jpg|jpeg|png";
            $config['file_name']      = $file_name;

            $this->load->library('upload', $config);




            if ($this->upload->do_upload('tcarga')){
              $dataCargada = $this->upload->data();
              $datap = array(
                'Nombre' => $this->input->post('Nombre'),
                'Marca'=>$this->input->post('Marca'),
                'Descripcion'=>$this->input->post('Descripcion'),
                'Imagen'=>$urldeimagen.$dataCargada['file_name'],
                'Precio'=>$this->input->post('Precio'),

              );
            }
              else {
                $datap = array(
                  'Nombre' => $this->input->post('Nombre'),
                  'Marca'=>$this->input->post('Marca'),
                  'Descripcion'=>$this->input->post('Descripcion'),
                  'Precio'=>$this->input->post('Precio'),
                );
              }
              $id=$this->input->post('id');
              $this->model_productos->modificar($id,$datap);
              redirect("Cliente",'refresh');
            }else {
              $this->load->view('error_page');
            }
          }else {
            redirect("login");
          }
        }
}
