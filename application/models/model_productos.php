<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class model_productos extends CI_Model {

  function __construct(){
    parent::__construct();
  }




 public function traerproductos(){
   $sql= "SELECT * from baseo_productos";
   $query=$this->db->query($sql);
   return $query->result();
 }
 public function agarraid($id){

   $sql= "SELECT * FROM baseo_productos WHERE id = '$id'";
   $query=$this->db->query($sql);
   return $query->result();

 }
 public function modificar($id,$datap){
   $this->db->where('id',$id);
   $this->db->update('baseo_productos',$datap);
  }



}
