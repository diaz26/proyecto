<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class model_informacion extends CI_Model {

  function __construct(){
    parent::__construct();
  }

  public function consultInfo(){
    $id=$this->session->userdata('ID');
    $sql= "SELECT * FROM baseo_usuarios WHERE id=$id";
    $query=$this->db->query($sql);
    return $query->row();
  }

  public function consultPage(){
    $id=$this->session->userdata('ID');
    $sql= "SELECT be.* FROM baseo_ecommerce be WHERE be.id_usuario=$id";
    $query=$this->db->query($sql);
    return $query->row();
  }

  public function actInf($datos,$id){
    $this->db->where('id',$id);
    $this->db->update('baseo_usuarios',$datos);
  }

  public function actPage($datos,$id){
    $idd=$this->session->userdata('ID');
    $this->db->where('id',$id);
    $this->db->where('id_dueno',$idd);
    $this->db->update('baseo_ecommerce',$datos);
  }
}
