<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_productos extends CI_Model {

  function __construct(){
    parent::__construct();
  }

  public function productos()
  {
    $id=$this->session->userdata('ID');
    $sql="SELECT * from baseo_productos where id_dueno=$id";
    $query=$this->db->query($sql);
    return $query->result();
  }

  public function productosO($ban)
  {
    $sql="SELECT bp.* from baseo_productos bp, baseo_ecommerce be, baseo_usuarios bu where be.nombre='$ban' and be.id_usuario=bu.id and bu.id=bp.id_dueno";
    $query=$this->db->query($sql);
    return $query->result();
  }

  public function productosOC($ban,$flag)
  {
    $sql="SELECT bp.* from baseo_productos bp, baseo_ecommerce be, baseo_usuarios bu where be.nombre='$ban' and be.id_usuario=bu.id and bu.id=bp.id_dueno and bp.categoria='$flag'";
    $query=$this->db->query($sql);
    return $query->result();
  }

  function buscar($pag,$var){
    $sql="SELECT bp.* FROM baseo_productos bp, baseo_ecommerce be, baseo_usuarios bu
    WHERE be.nombre='$pag' and be.id_usuario=bu.id and bu.id=bp.id_dueno and (bp.Nombre LIKE '%$var%' OR bp.Marca LIKE '%$var%' OR bp.Descripcion LIKE '%$var%' OR bp.categoria LIKE '%$var%');";
    $query = $this->db->query($sql);
    return $query->result();
  }

  public function producto($id){
    $sql= "SELECT * from baseo_productos where id='$id'";
    $query=$this->db->query($sql);
    return $query->row();
  }

  function categorias($ban){
    $sql="SELECT DISTINCT bp.categoria, COUNT(*) as num FROM baseo_productos bp, baseo_ecommerce be, baseo_usuarios bu where be.nombre='$ban' and be.id_usuario=bu.id and bu.id=bp.id_dueno GROUP BY bp.categoria";
    $query = $this->db->query($sql);
    return $query->result();
  }

  public function verifica_priedad($id){
    $sql= "SELECT id_dueno from baseo_productos where id='$id'";
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

  public function despachar($arr,$cod){
    $this->db->where('cod_pedido',$cod);
    $this->db->update('baseo_pagos',$arr);
  }

  public function agregar($agregados){
    $this->db->insert('baseo_productos',$agregados);
    return $this->db->insert_id();
  }

  public function verifica_priedadDE($cod){
    $sql= "SELECT id_usuario from baseo_pagos where cod_pedido='$cod'";
    $query=$this->db->query($sql);
    return $query->row()->id_usuario;
  }


}
