<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_productos extends CI_Model {

  function __construct(){
    parent::__construct();
  }

 public function productos()
 {
   $sql="SELECT * from baseo_productos";
   $query=$this->db->query($sql);
   return $query->result();
 }

 public function producto($id){
   $sql= "SELECT * from baseo_productos where id='$id'";
   $query=$this->db->query($sql);
   return $query->row();
 }

 public function modificar($id,$datap){
   $this->db->where('id',$id);
   $this->db->update('baseo_productos',$datap);
  }

  public function eliminar($id){
    $this->db->where('id',$id);
    $this->db->delete('baseo_productos');
  }

  public function agregar($agregados){
    $this->db->insert('baseo_productos',$agregados);
  }

}
