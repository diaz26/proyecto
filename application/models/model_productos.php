<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class model_productos extends CI_Model {

  function __construct(){
    parent::__construct();
  }

 public function traerproductos($id)
 {
   $sql="SELECT * from baseo_productos where id_dueno='$id'";
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



}
