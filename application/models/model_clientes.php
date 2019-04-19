<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class model_clientes extends CI_Model {

  function __construct(){
    parent::__construct();

  }



  public function agregar($agregados){
    $this->db->insert('baseo_productos',$agregados);
  }


  public function agarra($id){

    $sql= "SELECT * FROM baseo_productos WHERE id = '$id'";
    $query=$this->db->query($sql);
    return $query->result();

  }

  public function eliminar($id){
    $this->db->where('id',$id);
    $this->db->delete('baseo_productos');
  }

}
